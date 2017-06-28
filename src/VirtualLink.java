

import java.io.Serializable;

public class VirtualLink implements Serializable{
	//id of the virtual link
	int id;
	//id of the flow passing through it
	int flowID;
	//the origin middleBox
	NF origin;
	//the destination middleBox
	NF destination;
	//the bw demand
	int bw;
	/**
	 * Constructor of the VirtualLink object
	 * 
	 * @param id
	 * @param flowID
	 * @param origin
	 * @param destination
	 */
	public VirtualLink(int id, int flowID, NF origin, NF destination,int bw){
		this.id = id;
		this.flowID = flowID;
		this.origin = origin;
		this.destination = destination;
		this.bw = bw;
	}
	
	public VirtualLink(VirtualLink copyVLink){
		this.id = copyVLink.id;
		this.flowID = copyVLink.flowID;
		this.origin = copyVLink.origin;
		this.destination = copyVLink.destination;
		this.bw = copyVLink.bw;
	}
	/**
	 * gets the id of the virtual link
	 * @return id
	 */
	public int getID(){
		return id;
	}
	
	/**
	 * sets the id of the virtual link
	 * @param id
	 */
	public void setID(int id){
		this.id=id;
	}
	
	/**
	 * gets the id of the flow
	 * @return flowID
	 */
	public int getFlowID(){
		return flowID;
	}
	
	/**
	 * sets the id of the flow
	 * @param flowID
	 */
	public void setFlowID(int flowID){
		this.flowID = flowID;
	}
	
	/**
	 * gets the origin middlebox of the link
	 * @return origin
	 */
	public NF getOriginMB(){
		return origin;
	}
	
	/**
	 * sets the origin middle box of the link
	 * @param origin
	 */
	public void setOriginMB(NF origin){
		this.origin = origin;
	}
	
	/**
	 * gets the destination middlebox of the link
	 * @return destination
	 */
	public NF getDestMB(){
		return destination;
	}
	
	/**
	 * sets the destination middlebox of the link
	 * @param destination
	 */
	public void setDestMB(NF destination){
		this.destination = destination;
	}

	public int getBW() {
		return bw;
	}

	public void setBW(int bw) {
		this.bw = bw;
	}
	
	public String toString(){
		return "Virtual Link "+id+": {"+origin.id + "-"+ destination.id+"}\n";
	}
	
}

