
import java.util.ArrayList;

import ilog.concert.IloException;
import ilog.concert.IloIntVar;
import ilog.concert.IloNumExpr;
import ilog.cplex.IloCplex;

	
public class ILP {
	
	//Parameter
	int numNFs;
	
	//Decision Variable
	IloIntVar[][] theta;
	IloIntVar[][]   x ;
	IloIntVar[][]   y ;
	IloIntVar[][][] w ;
	IloIntVar[]     z;
	IloIntVar[][]   q;
	IloIntVar[][]   delta;
	IloIntVar[][][]   gamma;
	
	public boolean isContain(ArrayList<VirtualLink> E, NF origin, NF destination){
		for(int e=0;e<E.size();e++){
			if((E.get(e).getOriginMB().id == origin.id) && (E.get(e).getDestMB().id == destination.id))
					return true;
		}
		return false;
	}
	
	public void runILP(SubstrateNetwork G, int[][] M, Flow f, ArrayList<VirtualLink> E) throws IloException{
		IloCplex model = buildILP(G,M,f,E);
		numNFs = f.getvLinks().size()+1;
		model.exportModel("ILP.lp");
		if(model.solve()){
			System.out.println("Optimal Solution = "+model.getObjValue());
			System.out.println("NF Placements");
			for(int i=0;i<numNFs;i++){
				for(int j=0;j<G.getNodes().length;j++){
					if(model.getValue(theta[i][j])>=0.9)
						System.out.println("NF "+f.getChain().NFs.get(i).id+" of type "+ f.getChain().NFs.get(i).mb.type +" is placed on "+G.getNodes()[j].getID());
				}
			}
			
			for(int i=0;i<E.size();i++){
				for(int j=0;j<G.getNodes().length;j++){
					if(model.getValue(x[i][j]) >= 0.9)
						System.out.println("Source of Link "+E.get(i).getID()+" is placed on "+G.getNodes()[j].getID());
					if(model.getValue(y[i][j]) >= 0.9)
						System.out.println("Destination of Link "+E.get(i).getID()+" is placed on "+G.getNodes()[j].getID());
			
				}
			}
			
			
			System.out.println("Chosen E Links");
			for(int i=0;i<E.size();i++){
				if(model.getValue(z[i]) >= 0.9){
					System.out.println("Z "+i +"is routed through Path: ");
				for(int j=0;j<G.getNodes().length;j++){
					for(int k=0;k<G.getNodes().length;k++){
						try{if(model.getValue(w[i][j][k]) >= 0.9)
							System.out.print("{"+G.getNodes()[j].getID()+","+G.getNodes()[k].getID()+"},");
						}catch(IloException e){}}
					}
					System.out.println();
				}
			}
		}else
			System.out.println("No Solution Found!");
	}
	
	
	public IloCplex buildILP(SubstrateNetwork G, int[][] M, Flow f, ArrayList<VirtualLink> E) throws IloException{
		
		//Parameters
		int numNFs = f.getChain().NFs.size(); // Number of Network Functions in f's chain
		int numSubstrateNodes = G.getNodes().length; // Number of Physical Nodes in the Substrate Network
		//Matrix of Substrate Links
		int[][] isSubstrateLink = new int[numSubstrateNodes][numSubstrateNodes];
		for(int i=0;i<numSubstrateNodes;i++){
			for(int j=0;j<numSubstrateNodes;j++){
				if(G.getLinkIndex(G.getNodes()[i].getID(), G.getNodes()[j].getID()) != -1)
					isSubstrateLink[i][j] = 1;
			}
		}
		
		int[][] Omega = new int[numNFs][numNFs]; //Omega = C || !C ^ M ^ E
		for(int i=0;i<f.getChain().NFs.size()-1;i++){
			for(int j=i+1;j<f.getChain().NFs.size();j++)
				Omega[i][j] = 1;
		}
		
		for(int i=0;i<M.length;i++){
			for(int j=0;j<M[i].length;j++){
				if((M[i][j] == 1) && (isContain(E, f.getChain().NFs.get(i),f.getChain().NFs.get(j))))
					Omega[i][j] = 1;
			}
		}
		
		//Print Omega for Testing
		System.out.println("Omega");
		for(int i=0;i<Omega.length;i++){
			for(int j=0;j<Omega[i].length;j++){
				System.out.print(Omega[i][j]+",");
			}
			System.out.println();
		}
				
		//Mathematical Model
	    IloCplex model = new IloCplex();
	    
		
		//Decision Variables
		theta = new IloIntVar[numNFs][numSubstrateNodes]; // denotes the placement of each NF in f
		delta = new IloIntVar[numNFs][numNFs];
		gamma = new IloIntVar[numNFs][numNFs][numNFs];
		for(int i=0;i<numNFs;i++){
			for(int j=0;j<numSubstrateNodes;j++)
				theta[i][j] = model.intVar(0,1,"theta"+i+j);
			for(int j=0;j<numNFs;j++){
				delta[i][j] = model.intVar(0,1,"delta"+i+j);
				for(int k=0;k<numNFs;k++){
					gamma[i][j][k] = model.intVar(0,1,"gamma"+i+j+k);
				}
			}
		}
		x   = new IloIntVar[E.size()][numSubstrateNodes]; //denotes the placement of e's source
		y   = new IloIntVar[E.size()][numSubstrateNodes]; //denotes the placement of e's destination
		w   = new IloIntVar[E.size()][numSubstrateNodes][numSubstrateNodes]; //denotes the routing of e
		z   = new IloIntVar[E.size()]; //indicates if link e is routed
		q   = new IloIntVar[E.size()][E.size()];
		for(int i=0;i<E.size();i++){
			z[i] = model.intVar(0, 1,"z"+i);
			for(int j=0;j<E.size();j++)
				q[i][j] = model.intVar(0, 1,"q"+i+j);
			for(int j=0;j<numSubstrateNodes;j++){
				x[i][j] = model.intVar(0, 1,"x"+i+j);
				y[i][j] = model.intVar(0, 1,"y"+i+j);
				for(int k=0;k<numSubstrateNodes;k++)
					w[i][j][k] = model.intVar(0, 1,"w"+i+j+k);
			}
		}
	
		//Objective Function
	    IloNumExpr objective = model.numExpr();
		for(int i=0;i<E.size();i++){
			for(int j=0;j<numSubstrateNodes;j++){
				for(int k=0;k<numSubstrateNodes;k++){
					 objective = model.sum(objective,w[i][j][k]);
				}
			}
		}
		model.addMinimize(objective);
		
		//Constraint # 1 - Each Network Function MUST be placed
		for(int i=0;i<numNFs;i++){
			IloNumExpr e = model.numExpr();
			for(int j=0;j<numSubstrateNodes;j++){
				e = model.sum(e,theta[i][j]);
			}
			model.addEq(e,1, "NF "+i+"PlacementConstraint");
		}
		
		/*Constraint #2 and #3 - The source and destination of E must be 
		 * placed where the corresponding MB type is placed
		 */
		
		for(int i=0;i<E.size();i++){
			int sourceType = E.get(i).getOriginMB().mb.getType();
			int destType   = E.get(i).getDestMB().mb.getType();
			
			for(int j=0;j<numSubstrateNodes;j++){
				for(int k=0;k<numNFs;k++){
					if(f.getChain().NFs.get(k).mb.getType() == sourceType)
						model.addLe(x[i][j], theta[k][j],"Source of E "+i+" Placement Constraint");
					if(f.getChain().NFs.get(k).mb.getType() == destType)
						model.addLe(y[i][j], theta[k][j],"Destination of E "+i+" Placement Constraint");
				}
			}
		}
		
		//Constraint #4 - Substrate Nodes Capacity Constraint
		for(int i=0;i<numSubstrateNodes;i++){
			IloNumExpr e = model.numExpr();
			for(int j=0;j<numNFs;j++){
				e = model.sum(e,model.prod(theta[j][i],f.getChain().NFs.get(j).mb.getResourceDemands()));
			}
			model.addLe(e,G.getNodes()[i].getCPU(),"CapacityConstraints_Node"+i);
		}
	
		//Constraint #5 - Link Placement Constraint
		IloNumExpr LinksRouted = model.numExpr();
		for(int i=0;i<E.size();i++){
			IloNumExpr e1 = model.numExpr();
			IloNumExpr e2 = model.numExpr();
			LinksRouted = model.sum(LinksRouted,z[i]);
			for(int j=0;j<numSubstrateNodes;j++){
				e1 = model.sum(e1,x[i][j]);
				e2 = model.sum(e2,y[i][j]);
			}
			model.addEq(model.diff(e1,e2),0); // Either place both source and destination of a link or neither
			model.addLe(z[i],model.prod(0.5,model.sum(e1,e2)),"LinkPlacementConstraint"+i);
		}
		model.addEq(LinksRouted, numNFs-1); // Must Route Exactly |F-1| virtual links
		
		//Prevent loops in the virtual graph
		for(int i=0;i<E.size();i++){
			for(int j=0;j<E.size();j++){
				if(i==j)
					continue;
				else{
					if(E.get(i).getOriginMB().id == E.get(j).getDestMB().id)
						if(E.get(i).getDestMB().id == E.get(j).getOriginMB().id)
							model.addLe(model.sum(z[i],z[j]),1,"BreakLoopsVG_"+i+j);
				}
			}
		}
		
		
		//Constraint #6 - Link Routing Constraint
		for(int e=0;e<E.size();e++){

            for(int i=0;i<numSubstrateNodes;i++){
            	IloNumExpr e1 = model.numExpr();
  				IloNumExpr e2 = model.numExpr();
                 
            for(int j=0;j<numSubstrateNodes;j++){
            	if(isSubstrateLink[i][j] == 1){
            		e1 = model.sum(e1,w[e][i][j]);
					e2 = model.sum(e2,w[e][j][i]);
					model.addLe(model.sum(w[e][i][j],w[e][j][i]), 1); //Prevent Loop              	
            	}
            }       
            	model.addEq(model.diff(e1,e2), model.diff(x[e][i],y[e][i]),"Routing Constraint "+e);          
            }
        }
        
        //Constraints #7 & #8 - Any VNF type can have a single v. Link originated from it or destined to it
		for(int i=0;i<numNFs;i++){
        	IloNumExpr ingE = model.numExpr();
        	IloNumExpr eggE = model.numExpr();
        	for(int j=0;j<E.size();j++){
        		int sourceNF = E.get(j).getOriginMB().id;
        		int destinationNF = E.get(j).getDestMB().id;
        	
        		if(f.getChain().NFs.get(i).id == sourceNF)
        			ingE = model.sum(ingE,z[j]);
        		
        		if(f.getChain().NFs.get(i).id == destinationNF)
        			eggE = model.sum(eggE,z[j]);    		
        	}
        	model.addLe(ingE, 1,"A single VLink originating from NF"+i);
        	model.addLe(eggE, 1,"A single VLink destined to NF"+i);
        	//model.addGe(model.sum(ingE,eggE),1);
        }
        
        //Constraint # 9 - Internal Switching Constraint
		IloIntVar [][] q = new IloIntVar[E.size()][numSubstrateNodes];
		for(int i=0;i<E.size();i++)
			for(int j=0;j<numSubstrateNodes;j++)
				q[i][j] = model.intVar(0, 1,"q"+i+j);
				
		for (int i=0;i<numSubstrateNodes;i++){  	
        	IloNumExpr e = model.numExpr();
			for(int j=0;j<E.size();j++){
        		model.addLe(q[j][i], x[j][i]);
        		model.addLe(q[j][i], y[j][i]);
        		model.addGe(q[j][i],model.diff(model.sum(x[j][i],y[j][i]),1));
        		e = model.sum(e,model.prod(q[j][i],E.get(j).getBW()));
        	}
        	model.addLe(e,G.getNodes()[i].getb(),"InternalSwitchingCapacity_"+i);
        }
        
        //Constraint # 10 - Link Capacity Constraint
    	 for(int j=0;j<numSubstrateNodes;j++){
    		for(int k=j;k<numSubstrateNodes;k++){
    			if(isSubstrateLink[j][k] == 0)
    				continue;
    			
    			IloNumExpr e = model.numExpr();
    			 for(int i=0;i<E.size();i++){
    				e = model.sum(e, model.prod(model.sum(w[i][j][k],w[i][k][j]),E.get(i).getBW()));
    			 }
    			model.addLe(e,G.getLinks()[G.getLinkIndex(G.getNodes()[j].getID(), G.getNodes()[k].getID())].getBW(),"LinkCapacity"+j+k);
    		}
    	 }
    	 
    	 //Constraint # 11 - Indicate the order of NFs in the chain
    	/* for(int i=0;i<E.size();i++){
    		int originIndex = getIndexNF(f,E.get(i).getOriginMB().id);
    		int destinationIndex = getIndexNF(f,E.get(i).getDestMB().id);
    		
    		model.addEq(delta[originIndex][destinationIndex],z[i],"OrderConsNFs"+i);
    		
    	 }*/
    	 //Constraint # 12 - Indicate the order of the NFs in the chain
    	 for(int i=0;i<numNFs;i++){
    		 for(int j=0;j<numNFs;j++){
    			 int index = getVLinkIndex(f.getChain().NFs.get(i), f.getChain().NFs.get(j), E);
 	    		
    			  if(j!=i){
	    			 for(int k=0;k<numNFs;k++){
	    				 if((k!=j) && (k!=i)){
	    					 //expr = model.sum(expr,delta[i][k]);
	    					 model.addLe(gamma[i][k][j],delta[i][k]);
	    					 model.addLe(gamma[i][k][j],delta[k][j]);
	    					 model.addGe(gamma[i][k][j],model.diff(model.sum(delta[i][k],delta[k][j]),1));
	    					//expr = model.sum(expr,gamma[i][k][j]);
	    					 if(index == -1)
	    						 model.addGe(delta[i][j], gamma[i][k][j]);
	    					 else
	    						 model.addGe(delta[i][j], model.sum(z[index],gamma[i][k][j]));
	    				 }
	    			 }
    			 }
    		 }
    		 
    	 }
    	//Constraint # 13 - Do not violate any invariants
    	 for(int i=0;i<numNFs;i++){
    		 for(int j=0;j<numNFs;j++){
    			 model.addLe(delta[i][j],Omega[i][j]);
    		 }
    	 }
    	 return model;    
	}
		
		public int getIndexNF(Flow f , int NF_ID){
			int index = -1;
			for(int i=0;i<f.getChain().NFs.size();i++){
				if(f.getChain().NFs.get(i).id == NF_ID)
					index = i;
			}
			return index;
		}
		public int getVLinkIndex(NF origin, NF destination, ArrayList<VirtualLink> E){
			
			for(int i=0;i<E.size();i++){
				if(E.get(i).getOriginMB().id == origin.id && E.get(i).getDestMB().id == destination.id)
					return i;
			}
			return -1;
		}
	
	}
	