
import java.util.ArrayList;

public class FatTree {

	ArrayList<Node> Nodes = new ArrayList<Node>();
	ArrayList<Link> Links = new ArrayList<Link>();
	
	public Node[] nodelist ;
	public Link[] linklist ;
	public Node[] hostlist ;
	 	
	public FatTree(int K){
		
		int nodeCounter = 0;
		int linkCounter = 0;
		
		ArrayList<Node> coreSwitches = new ArrayList<Node>();
		ArrayList<Node> allFirstLayerAggregateSwitches = new ArrayList<Node>();
		ArrayList<Node> allSecondLayerAggregateSwitches = new ArrayList<Node>();
		ArrayList<Node> allhosts = new ArrayList<Node>();
		
		//Create (K/2)^2 core Switches
		for(int i=0;i<K*K/4;i++){
			Node coreSwitch = new Node(nodeCounter, 0, 0);
			Nodes.add(coreSwitch);
			coreSwitches.add(coreSwitch);
			nodeCounter++;
		}
		
		//Create K pods
		for(int i=0;i<K ;i++){						
			ArrayList<Node> firstAggregateSwitches = new ArrayList<Node>();
			ArrayList<Node> secondAggregateSwitches = new ArrayList<Node>();
			int coreSwitchCounter = 0;
			
			//Each Pod Contains K/2 First Layer AggregateSwitches
			for(int j=0;j<K/2;j++){
				Node firstAggregateSwitch = new Node(nodeCounter, 0, 0);
				Nodes.add(firstAggregateSwitch);
				firstAggregateSwitches.add(firstAggregateSwitch);
				allFirstLayerAggregateSwitches.add(firstAggregateSwitch);
				nodeCounter++;
			}
			
			//Each Pod Contains K/2 Second Layer AggregateSwitches
			for(int j=0;j<K/2;j++){
				Node secondAggregateSwitch = new Node(nodeCounter, 0, 0);
				Nodes.add(secondAggregateSwitch);
				secondAggregateSwitches.add(secondAggregateSwitch);
				allSecondLayerAggregateSwitches.add(secondAggregateSwitch);
				nodeCounter++;
				
				//Each Edge Switch is connected to K/2 end hosts
				for(int t=0;t<K/2;t++){
					
					Node host = new Node(nodeCounter,1,1);
					allhosts.add(host);
					Nodes.add(host);
					nodeCounter++;
				
					//Connect Hosts to EdgeSw
					Link e = new Link(linkCounter,secondAggregateSwitch,host,1000);
					Links.add(e);
					linkCounter++;
				}
			}
			
			
			//Connect FirstLayer AggregateSwitches to SecondLayer AggregateSwitches
			for(int f=0;f<firstAggregateSwitches.size();f++){
				int portCounter = 0;
				for(int s=0;s<secondAggregateSwitches.size();s++){
					Link e = new Link(linkCounter,firstAggregateSwitches.get(f),secondAggregateSwitches.get(s),10000);
				Links.add(e);
				linkCounter++;
				portCounter++;
				}
				
				//Connect FirstLayer AggregateSwitches to CoreSwitches
				for(int c=coreSwitchCounter;c<(coreSwitchCounter+(K/2));c++){
					Link e = new Link(linkCounter,coreSwitches.get(c),firstAggregateSwitches.get(f),10000);
					Links.add(e);
					linkCounter++;
					portCounter++;
				}
				coreSwitchCounter = coreSwitchCounter + (K/2);
			}
			
		}

		nodelist = new Node[Nodes.size()];
		for(int i=0;i<Nodes.size();i++){
			nodelist[i] = Nodes.get(i);	
		}
		hostlist = new Node[allhosts.size()];
		for(int i=0;i<allhosts.size();i++){
			hostlist[i] = allhosts.get(i);	
		}
		
		linklist = new Link[Links.size()];
		for(int i=0;i<Links.size();i++){
			linklist[i] = Links.get(i);
			linklist[i].getOrigin().getAdjacentNodes().add((linklist[i].getDest()));
			linklist[i].getOrigin().getAdjacentLinks().add(linklist[i]); //(linkList[i].getDestination().getID(), linkList[i]);
			linklist[i].getDest().getAdjacentNodes().add((linklist[i].getOrigin()));
			linklist[i].getDest().getAdjacentLinks().add(linklist[i]); //(linkList[i].getOrigin().getID(),linkList[i]);
		}
	}	
}
