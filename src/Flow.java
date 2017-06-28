


import java.io.Serializable;
import java.util.ArrayList;

public class Flow {
  
	//flow id
	int flowID;
   
	//The ingress node
    Node ni;
   
    //The egress node;
    Node ne;
   
    //The chain of middleBoxes the flow has to go through;
    Chain s;
   
    //bandwidth demand
    int demand;
   
    //Flow Arrival
    int arrival;
   
    //Flow Departure
    int departure;
    
    //List of Virtual Links
    ArrayList<VirtualLink> vLinks;
    
    public Flow(int flowID, Node ni, Node ne, Chain s, int demand){
    	this.flowID = flowID;
    	this.ni = ni;
        this.ne = ne;
        this.s = s;
        this.demand = demand;
        vLinks = new ArrayList<VirtualLink>();
        generateVLinks();
    }

    public void generateVLinks(){
    	NF i = s.head;
    	int counter = 0;
    	while(i.next != null){
    		vLinks.add(new VirtualLink(counter,flowID, i, i.next, demand));
    		i = i.next;
    		counter ++;
    	}
    }
    
    
    /**
     * get the flow id
     * @return flowID
     */
    public int getFlowID(){
    	return flowID;
    }
    
    /**
     * set the flow id
     * @param flowID
     */
    public void setFlowId(int flowID){
    	this.flowID = flowID;
    }
    
    /**
     * get the ingress node
     * @return ni
     */
    public Node getIngress(){
        return ni;
    }
     
    /**
     * set the ingress node
     * @param ni
     */
    public void setIngress(Node ni){
        this.ni = ni;
    }
     
    /**
     * get the egress node
     * @return ne
     */
    public Node getEgress(){
        return ne;
    }
     
    /**
     * set the egress node
     * @param ne
     */
    public void setEgress(Node ne){
         
    }

     
    public NF getChainHead(){
    	return s.head;
    }
    
    /**
     * get the bandwidth demand
     * @return demand
     */
    public int getDemand(){
        return demand;
    }
     
    
    public Chain getChain(){
    	return s;
    }
     
    /**
     * set the bandwidth demand
     * @param demand
     */
    public void setDemand(int demand){
        this.demand = demand;
    }
 
    public ArrayList<VirtualLink> getvLinks() {
        return vLinks;
    }
 
    public void setvLinks(ArrayList<VirtualLink> vLinks) {
        this.vLinks = vLinks;
    }
     
    public String toString(){
    	String output= "Flow "+flowID+" with Chain ";
    	NF i = s.head;
    	while(i != null){
    		output += "NF "+i.id+" of Type "+i.mb.type+",";
    		i = i.next;
    	}
    	return output;
    }
}