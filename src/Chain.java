import java.util.ArrayList;


public class Chain {
	
	NF head;
	
	ArrayList<NF> NFs;
	
	public Chain(NF head){
		this.head = head;
		
		NFs = new ArrayList<NF>();
		generateNFs();
	}

	public void generateNFs(){
		NF node = head;
		while(node != null){
			NFs.add(node);
			node = node.next;
		}
		
	}
}
