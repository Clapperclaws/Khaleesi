

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;

public class Node {
	
	//id of the node should be unique
	private int id;
	
	//level of the node in the tree
	private int cpu;
	
	private int b; // Switching capacity between VMs residing on the same Substrate Node.
	
	//type of the node
	private String type;
	
	public boolean isServer;
		
	private ArrayList<Node> adjacentNodes;
	private ArrayList<Link> adjacentLinks;
	
	/**
	 * Constructor for the node without type param
	 * @param id
	 * @param cpu
	 */
	public Node(int id, int b, int cpu){
		this.id = id;
		this.b  = b;
		this.cpu = cpu;
		adjacentNodes = new ArrayList<Node>();
		adjacentLinks = new ArrayList<Link>();
	}
	/**
	 * Constructor of the Node Object
	 * 
	 * @param id
	 * @param cpu
	 * @param type
	 */
	public Node (int id, int cpu, String type){
		
		this.id = id;
		this.cpu = cpu;
		this.type =  type;
	}
	
	/**
	 * gets the ID of the node
	 * @return id
	 */
	public int getID(){
		return id;
	}
	
	/**
	 * Sets the ID of a node.
	 * @param id
	 */
	public void setID(int id){
		this.id = id;
	}
	
	/**
	 * gets the capacity of the node
	 * @return cpu
	 */
	public int getCPU(){
		return cpu;
	}
	
	/**
	 * Sets the cpacity of a node.
	 * @param cpu
	 */
	public void setCPU(int cpu){
		this.cpu = cpu;
	}
	
	/**
	 * gets the type of the node.
	 * @return type
	 */
	public String getType(){
		return type;
	}
	
	/**
	 * Sets the type of the node
	 * @param type
	 */
	public void setType(String type){
		this.type = type;
	}
	
	//Getters and Setters for the adjacent nodes and links
	public ArrayList<Node> getAdjacentNodes() {
		return adjacentNodes;
	}
	public void setAdjacentNodes(ArrayList<Node> adjacentNodes) {
		this.adjacentNodes = adjacentNodes;
	}
	public ArrayList<Link> getAdjacentLinks() {
		return adjacentLinks;
	}
	public void setAdjacentLinks(ArrayList<Link> adjacentLinks) {
		this.adjacentLinks = adjacentLinks;
	}
	
	public Link getAdjacentLinkTo(Node n){
		for(int i=0;i<this.getAdjacentLinks().size();i++){
			if(this.getAdjacentLinks().get(i).getDest().getID() == n.getID())
				return this.getAdjacentLinks().get(i);
			if(this.getAdjacentLinks().get(i).getOrigin().getID() == n.getID())
				return this.getAdjacentLinks().get(i);
		}
		return null;
	}
	
	public String toString(){
		return this.getID()+", internal switchin cap "+this.b+", CPU = "+this.getCPU();
	}
	
	public int getb(){
		return b;
	}
	
	public void setb(int value){
		this.b = value;
	}
	
}
