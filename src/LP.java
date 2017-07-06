
import java.util.ArrayList;

import ilog.concert.IloException;
import ilog.concert.IloIntVar;
import ilog.concert.IloNumExpr;
import ilog.concert.IloNumVar;
import ilog.concert.IloNumVarType;
import ilog.cplex.IloCplex;

	
public class LP {
	
	//Parameter
	int numNFs;
	
	//Decision Variable
	IloNumVar[][]   theta;
	IloNumVar[][]   x ;
	IloNumVar[][]   y ;
	IloNumVar[][][] w ;
	IloNumVar[]     z;
	IloNumVar[][]   c;
	
	public boolean isContain(ArrayList<VirtualLink> E, NF origin, NF destination){
		for(int e=0;e<E.size();e++){
			if((E.get(e).getOriginMB().id == origin.id) && (E.get(e).getDestMB().id == destination.id))
					return true;
		}
		return false;
	}
	
	public void runLP(SubstrateNetwork G, int[][] M, Flow f, ArrayList<VirtualLink> E) throws IloException{
		IloCplex model = buildILP(G,M,f,E);
		numNFs = f.getvLinks().size()+1;
		model.exportModel("ILP.lp");
		
		int start = (int)System.currentTimeMillis();
		if(model.solve()){
			int finish = (int)System.currentTimeMillis();
			System.out.println("Duration = "+ (finish-start));

			System.out.println("Optimal Solution = "+model.getObjValue());
			System.out.println("NF Placements");
			for(int i=0;i<numNFs;i++){
				for(int j=0;j<G.getNodes().length;j++){
					if(model.getValue(theta[i][j]) > 0)
						System.out.println(model.getValue(theta[i][j])+"% of NF "+f.getChain().NFs.get(i).id+" of type "+ f.getChain().NFs.get(i).mb.type +" is placed on "+G.getNodes()[j].getID());
				}
			}
			
			for(int i=0;i<E.size();i++){
				for(int j=0;j<G.getNodes().length;j++){
					if(model.getValue(x[i][j]) > 0)
						System.out.println("Source of Link "+E.get(i).getID()+" is placed on "+G.getNodes()[j].getID());
					if(model.getValue(y[i][j]) > 0)
						System.out.println("Destination of Link "+E.get(i).getID()+" is placed on "+G.getNodes()[j].getID());
			
				}
			}
			
			
			System.out.println("Chosen E Links");
			for(int i=0;i<E.size();i++){
				if(model.getValue(z[i]) > 0){
					System.out.println("Z "+i +"is routed through Path: ");
				for(int j=0;j<G.getNodes().length;j++){
					for(int k=0;k<G.getNodes().length;k++){
						try{if(model.getValue(w[i][j][k]) > 0)
							//System.out.print(model.getValue(w[i][j][k])+",");
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
		theta = new IloNumVar[numNFs][numSubstrateNodes]; // denotes the placement of each NF in f
		for(int i=0;i<numNFs;i++){
			for(int j=0;j<numSubstrateNodes;j++)
				theta[i][j] = model.numVar(0.0,1.0,"theta"+i+j);
		}
		x   = new IloNumVar[E.size()][numSubstrateNodes]; //denotes the placement of e's source
		y   = new IloNumVar[E.size()][numSubstrateNodes]; //denotes the placement of e's destination
		w   = new IloNumVar[E.size()][numSubstrateNodes][numSubstrateNodes]; //denotes the routing of e
		z   = new IloNumVar[E.size()]; //indicates if link e is routed
		c   = new IloNumVar[numSubstrateNodes][numSubstrateNodes];
		for(int i=0;i<E.size();i++){
			z[i] = model.numVar(0.0, 1.0,"z"+i);
			for(int j=0;j<numSubstrateNodes;j++){
				x[i][j] = model.numVar(0.0, 1.0,"x"+i+j);
				y[i][j] = model.numVar(0.0, 1.0,"y"+i+j);
				for(int k=0;k<numSubstrateNodes;k++)
					w[i][j][k] = model.numVar(0.0,1.0,"w"+i+j+k);//numVar(0.0, Double.MAX_VALUE,"w"+i+j+k);
			}
		}
		
		for(int i=0;i<numSubstrateNodes;i++){
			for(int j=0;j<numSubstrateNodes;j++){
				c[i][j] = model.numVar(0.0, 1.0,"c"+i+j);
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
					model.addLe(model.sum(w[e][i][j],w[e][j][i]), 1);
            	}
            }       
            	model.addEq(e1, x[e][i],"FlowCons1"+e+"_"+i);
            	model.addEq(e2, y[e][i],"FlowCons2"+e+"_"+i);
            	model.addEq(model.diff(e1,e2), 0,"FlowCons3"+e+"_"+i);          
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
        
        
        //Constraint # 10 - Link Capacity Constraint		
    	 for(int j=0;j<numSubstrateNodes;j++){
    		for(int k=j;k<numSubstrateNodes;k++){
    			if(isSubstrateLink[j][k] == 0)
    				continue;
    			
    			IloNumExpr e = model.numExpr();
    			 for(int i=0;i<E.size();i++){
    				e = model.sum(e, model.sum(w[i][j][k],w[i][k][j]));
    			
    			//	IloNumExpr exp = model.numExpr();
    			//	exp = model.prod(Double.MAX_VALUE/2,model.sum(w[i][j][k],w[i][k][j]));
    				
    			//	model.addLe(c[j][k], model.sum(model.sum(w[i][j][k],w[i][k][j]),
    			//			model.prod(1, 1/exp))),"min_"+j+k);
    			 }
    			model.addLe(e,c[j][k],"LinkCapacity"+j+k);
    		}
    	 }
 	
    	//Constraint # 11 - Do not violate any invariants
    	 for(int i=0;i<numNFs;i++){
    		 for(int j=0;j<numNFs;j++){
    			if(Omega[i][j] == 0){
    				for(int k=0;k<numNFs;k++){
    					if(k == i)
    						continue;
    					if(k == j)
    						continue;
    					int sourceIndex = getVLinkIndex(f.getChain().NFs.get(i),
    							f.getChain().NFs.get(k), f.getvLinks());
    					int dstIndex = getVLinkIndex(f.getChain().NFs.get(k),
    							f.getChain().NFs.get(j), f.getvLinks());
    					if(sourceIndex != -1 && dstIndex != -1)
    						model.addLe(model.sum(z[sourceIndex], z[dstIndex]),1,"PreventOrderViolation_"+i+j);
    				}
    			}
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
	