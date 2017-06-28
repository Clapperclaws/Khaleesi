

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;

public class MiddleBoxType{

	//MiddleBox Type
	 int type;
	
	//Resource Demands from the hosting node
	 int resourceDemands;
	
	// Constructor of the MiddleBox Object
	public MiddleBoxType(int type, int demand){
		this.type = type;
		this.resourceDemands = demand;
	}

	// Gets the type of the middlebox.
	public int getType(){
		return type;
	}
	
	// Sets the type of the middlebox
	public void setType(int type){
		this.type = type;
	}

	//Gets the resource demands of the middlebox
	public int getResourceDemands() {
		return resourceDemands;
	}

	//Sets the processing capacity of the middlebox
	public void setResourceDemands(int resourceDemands) {
		this.resourceDemands = resourceDemands;
	}
	
	//Override the toString method
	public String toString(){
		String output = "";
		output = "MiddleBox type: " + this.type + " has a demand = "+this.resourceDemands;		
		return output;
	}
}
