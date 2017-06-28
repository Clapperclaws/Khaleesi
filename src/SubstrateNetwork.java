

public class SubstrateNetwork {
	//set of nodes in the network;
	Node[] n;
	//Set of links in the network;
	Link[] l;
	
	
	/**
	 * constructor of the substrate network
	 * @param n
	 * @param l
	 */
	public SubstrateNetwork(Node[] n, Link[] l){
		this.n = n;
		this.l = l;
		updateNeighbors(this.l);
	}
	
	public void updateNeighbors(Link[] l){
		//
		for(int i=0;i<l.length;i++){
			l[i].getOrigin().getAdjacentNodes().add(l[i].getDest());
			l[i].getDest().getAdjacentNodes().add(l[i].getOrigin());
			l[i].getOrigin().getAdjacentLinks().add(l[i]);
			l[i].getDest().getAdjacentLinks().add(l[i]);
		}
	}
	
	/**
	 * gets all the nodes in the network
	 * @return n
	 */
	public Node[] getNodes(){
		return n;
	}
	
	/**
	 * sets a list of the nodes in the network;
	 * @param n
	 */
	public void setNodes(Node[] n){
		this.n = n;
	}
	
	/**
	 * gets all the links in the network
	 * @return
	 */
	public Link[] getLinks(){
		return l;
	}
	
	/**
	 * sets a list of the links in the network
	 * @param l
	 */
	public void setLinks(Link[] l){
		this.l = l;
	}
	
	public int getLinkIndex(int originID, int destinationID){
		int index = -1;	
		for(int i=0;i<getLinks().length;i++){
			if((getLinks()[i].getOrigin().getID() == originID) && (getLinks()[i].getDest().getID() == destinationID)){
				index = i;
				break;
			}
			if((getLinks()[i].getDest().getID() == originID) && (getLinks()[i].getOrigin().getID() == destinationID)){
				index = i;
				break;
			}
		}	
		return index;
	}
	
	public int getNodeIndex(int nodeID){
		for(int i=0;i<n.length;i++){
			if(n[i].getID() == nodeID)
				return i;
		}
		return -1;
	}
	
	public int getLinkIndex(int id){
		for(int i=0;i<l.length;i++){
			if(l[i].id == id)
				return i;
		}
		return -1;
	}
	
	public String toString(){
		String content = "";
		for(int i=0;i<this.getNodes().length;i++){
			content+=this.getNodes()[i]+"\n";
		}
		
		for(int i=0;i<this.getLinks().length;i++){
			content +=this.getLinks()[i]+"\n";
		}
		return content;
	}
}
