import ilog.concert.IloException;

import java.io.IOException;
import java.util.ArrayList;


public class Driver {

	public static void main(String [] args) throws IOException, IloException{
		
		//Initialize Substrate Network
		InitializeSubstrate is = new InitializeSubstrate();
		
		SubstrateNetwork G =  is.executeRFFSubstrate("Node", "Link");
		System.out.println("Substrate Network \n"+G);
		
		//Initialize Middlebox Types
		MiddleBoxType[] mbTypes ={new MiddleBoxType(0, 1), new MiddleBoxType(1, 1),new MiddleBoxType(2, 1),new MiddleBoxType(3, 1)};
		
		//Create Flow Chain
		NF head = new NF(0,mbTypes[0]);
		//head.previous = new NF(,null);
		NF f1   = new NF(1, mbTypes[2]);
		head.next = f1;
		f1.previous = head;
		NF f2   = new NF(2, mbTypes[1]);
		f1.next = f2;
		f2.previous = f1;
		NF f3   = new NF(3, mbTypes[3]);
		f2.next = f3;
		f3.previous = f2;
		
		//Initialize Flow	
		Chain s = new Chain(head);	
		Flow f = new Flow(0, G.getNodes()[0], G.getNodes()[3], s, 1);
		System.out.println("Flow "+f);
		
		ILP model = new ILP();
		int[][] M = {{0,0,1,1},{0,0,1,1},{1,1,0,1},{1,1,1,0}};
		
		System.out.println("Printing RMC");
		NF i = s.head;
		NF j = s.head;
		String n = "";
		System.out.printf("%4s",n);
		while(i != null){
			System.out.printf("%4s",i.id);
			i = i.next;
		}
		System.out.println();
		i = s.head;
		while(i != null){
			System.out.printf("%4d",i.id);
			while(j != null){
				System.out.printf("%4d",M[i.id][j.id]);
				j = j.next;
			}
			 i = i.next;
			 j = s.head;
			System.out.println();
		}
		
		ArrayList<VirtualLink> vLinks = generateE(f,M);
		System.out.println(vLinks);
		model.runILP(G, M, f, vLinks);
	}
	
	public static boolean contains(ArrayList<VirtualLink> vLinks,NF source, NF destination){
		for(int i=0;i<vLinks.size();i++){
			if((vLinks.get(i).getOriginMB().id == source.id) && (vLinks.get(i).getDestMB().id == destination.id))
				return true;
		}
		return false;
	}
	
	public static ArrayList<VirtualLink> generateE(Flow f, int [][] M){
		
		ArrayList<VirtualLink> vLinks = new ArrayList<VirtualLink>();
		
		//Add Links in the Original Chain
		vLinks.addAll(f.getvLinks());
		
		NF i = new NF(f.getChainHead());		
		while(i.next != null){
			System.out.println("Comparing NF "+i.id);
			NF j = new NF(i.next);
			while(j != null){
				System.out.println("with NF "+j.id);
				if(isNext(i,j,M)){
					System.out.println("NFs "+i.id+" has next "+j.id);
					if(!contains(vLinks,i,j))
						vLinks.add(new VirtualLink(vLinks.size(), f.getFlowID(), i, j, f.getDemand()));
				}
				if(isPrev(i,i.next,j,j.previous,M)){
					System.out.println("NFs "+i.id+" has previous "+j.id);
					if(!contains(vLinks,j,i))
						vLinks.add(new VirtualLink(vLinks.size(), f.getFlowID(), j, i, f.getDemand()));
				}
				j = j.next;
			}
			i = i.next;
		}
		return vLinks;
	}
	
	public static boolean isNext(NF i, NF j, int[][] M){
		if(i.next.id == j.id)
			return true;
	
		if(M[j.previous.id][j.id] == 1){
			return isNext(i,j.previous,M);
		}
		if(M[i.id][i.next.id] == 1){
			return isNext(i.next,j,M);
		}
		return false;
	}
	
	/*public static boolean isPrev(NF i, NF j, int[][] M){
		if((i.next.id == j.id)&&M[j.previous.id][j.id])
			return true;
	
		if(M[j.previous.id][j.id] == 1){
			return isPrev(i,j.previous,M);
		}
		if(M[i.id][i.next.id] == 1){
			return isPrev(i.next,j,M);
		}
		return false;
	}*/
	
	public static boolean isPrev(NF i, NF x, NF j, NF y, int[][] M){
		
		if((i.id == y.id) && (M[i.id][j.id] == 1))
			return true;
		if((j.id == x.id) && (M[i.id][j.id] == 1))
			return true;
		if(M[j.id][y.id] == 1)
			return isPrev(i,x,j,y.previous,M);
		if(M[i.id][x.id] == 1)
			return isPrev(i,x.next,j,y.previous,M);
		
		return false;
	}
}
