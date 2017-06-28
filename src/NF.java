
public class NF {
	
	int id;
	MiddleBoxType mb;
	NF next;
	NF previous;
	
	public NF(int id, MiddleBoxType mb){
		this.id = id;
		this.mb = mb;
	}
	
	public NF (NF i){
		this.id = i.id;
		this.mb = i.mb;
		this.next = i.next;
		this.previous = i.previous;
	}
	
	
	public String toString(){
		return "NF id_"+this.id+", type = "+mb.type;
	}

}
