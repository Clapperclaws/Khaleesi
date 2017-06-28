

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

public class InitializeSubstrate {

	//Get SubstrateNetwork NodeList
	public Node[] ReadNodeList(String filename) throws IOException{
		Node [] NodeList = null;
		BufferedReader br = new BufferedReader(new FileReader(filename));
	    try {
	        StringBuilder sb = new StringBuilder();
	        String line = br.readLine();
	        NodeList = new Node[Integer.parseInt(line)]; //Initialize Node List
	        int counter = 0;
	        while (line != null) {
	            line = br.readLine();
	            if(line != null){
	            	String[] splitLine = line.split(","); //Split to get NodeID and CPU.
	            	Node _newNode = new Node(Integer.parseInt(splitLine[0]),Integer.parseInt(splitLine[1]),Integer.parseInt(splitLine[2])); //Create New Node
	            	NodeList[counter] = _newNode; //Insert Node in Array
	            	counter ++; //Increment counter for array index
	            }
	        }       
	    } finally {
	    	if (br != null)
	    		br.close();
	    }	
	    return NodeList; //return NodeList
	}

		//Get SubstrateNetwork LinkList
		public Link[] ReadLinkList(String filename, Node [] nodeList) throws IOException{
			Link [] LinkList;
			BufferedReader br = new BufferedReader(new FileReader(filename));
		    try {
		        StringBuilder sb = new StringBuilder();
		        String line = br.readLine();
		        LinkList = new Link[Integer.parseInt(line)]; //Initialize Link List
		        int counter = 0;
		        while (line != null) {
		            line = br.readLine();
		            if(line != null){
		            	String[] splitLine = line.split(","); //Split to get LinkID, Source, Destination, and Bandwidth.
		            	Link _newLink = new Link(counter,nodeList[Integer.parseInt(splitLine[1])],nodeList[Integer.parseInt(splitLine[2])],Integer.parseInt(splitLine[3])); //Create New Node
		            	LinkList[counter] = _newLink; //Insert Link in Array
		            	counter ++; //Increment counter for array index
		            }
		        }
		    } finally {
		        br.close();
		    }
			return LinkList; //return LinkList
		}
			
		public SubstrateNetwork executeRFFSubstrate(String NodeListName, String LinkListName) throws IOException{
			
			SubstrateNetwork graph = null;
			
			//Read from File
			Node[] substrateNodes = ReadNodeList("./src/Subs/"+NodeListName);
			Link[] substrateLinks = ReadLinkList("./src/Subs/"+LinkListName, substrateNodes);
			Node[] hostNodes = substrateNodes;
			//Populate Neighbors list for each substrate node
			for(int i=0;i<substrateNodes.length;i++){
				int nodeID = substrateNodes[i].getID();
				for(int j=0;j<substrateLinks.length;j++){
					if(substrateLinks[j].getOrigin().getID() == nodeID){
						substrateNodes[i].getAdjacentNodes().add((substrateLinks[j].getDest()));
						substrateNodes[i].getAdjacentLinks().add(substrateLinks[j]);
					}
					if(substrateLinks[j].getDest().getID() == nodeID){
						substrateNodes[i].getAdjacentNodes().add((substrateLinks[j].getOrigin()));
						substrateNodes[i].getAdjacentLinks().add(substrateLinks[j]);
					}
				}
			}
			
			//Initialize Substrate Network
			graph = new SubstrateNetwork(substrateNodes, substrateLinks);
			return graph;
		}
	
	public Node[] generateNodeList(int numNodes, int b, int CPU){
		Node[] nodeList = new Node[numNodes];
		
		for(int i=0;i<nodeList.length;i++){
			nodeList[i] = new Node(i,b,CPU);
		}
		return nodeList;
	}
	
	public Link[] generateLinkList(Node[] nodeList, double prob){
		
		ArrayList<Link> linkList = new ArrayList<Link>();
		Random generator = new Random();
		int counter = 0;
		for(int i=0;i<nodeList.length;i++){
			for(int j=i+1;j<nodeList.length;j++){
				double pb = generator.nextDouble();
				if(pb >= prob){
					Link l = new Link(counter, nodeList[i],nodeList[j],1000);
					linkList.add(l);
					counter++;
				}
			}
		}
		Link[] linkArray = new Link[counter];
		for(int i=0;i<linkList.size();i++){
			linkArray[i] = linkList.get(i);
		}
		return linkArray;				
	}
}
