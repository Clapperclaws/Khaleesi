

import java.io.Serializable;

public class Link implements Serializable{
	
	//id of the link
	public int id;
	
	//source node of the link
	public Node origin;
	
	//destination node of the link
	public Node dest;
	
	//bandwidth of the link
	public int bandwidth;
		
	/**
	 * Constructor of the link object 
	 * 
	 * @param id
	 * @param origin
	 * @param dest
	 * @param bandwidth
	 */
	public Link(int id, Node origin, Node dest, int bandwidth){		
		this.id = id;
		this.origin = origin;
		this.dest = dest;
		this.bandwidth = bandwidth;
	}
	
	/**
	 * gets the ID of the link
	 * @return id
	 */
	public int getID(){
		return id;
	}
	
	/**
	 * Sets the ID of a link.
	 * @param id
	 */
	public void setID(int id){
		this.id = id;
	}
	
	/**
	 * gets the capacity of the link
	 * @return bandwidth
	 */
	public int getBW(){
		return bandwidth;
	}
	
	/**
	 * Sets the cpacity of a link.
	 * @param cpu
	 */
	public void setBW(int bandwidth){
		this.bandwidth = bandwidth;
	}
	
	/**
	 * gets the origin node of the link
	 * @return origin node
	 */
	public Node getOrigin(){
		return origin;
	}
	
	/**
	 * sets the origin node of the link
	 * @param origin
	 */
	public void setOrigin(Node origin){
		this.origin = origin;
	}
	
	/**
	 * gets the destination node of the link
	 * @return destination node
	 */
	public Node getDest(){
		return dest;
	}
	
	/**
	 * sets the destination node of the link
	 * @param dest 
	 */
	public void setDest(Node dest){
		this.dest = dest;
	}
	
	public int other(int e){
		if(e == origin.getID())
			return dest.getID();
		if(e == dest.getID())
			return origin.getID();
		return -1;
	}

	public String toString(){
		return this.getID()+","+this.getOrigin().getID()+","+this.getDest().getID()+","+this.getBW();
	}
}
