package ActionFlowGraph;

import java.util.ArrayList;

import Entity.Sentence;
import Entity.UseCase;
import Entity.VerbCluster;
import MySQLDataAccess.UseCaseAccessor;
import MySQLDataAccess.VerbClusterAccessor;
import ToolSettings.Thresholds;

public class ActionFlowGraphGenerator {
	private ArrayList<UseCase> useCaseList;
	private ArrayList<VerbCluster> clusterList;
	private ActionFlowGraph graph;
	
	
	
	public ActionFlowGraph getGraph() {
		return graph;
	}

	public ActionFlowGraphGenerator()
	{
		useCaseList = new UseCaseAccessor().getAllTrainingUseCaseList();
		clusterList = new VerbClusterAccessor().getAllClusters();
	}
	
	public void makeActionFlowGraph()
	{
		setRepresentiveVerb();
		makeGraph();
	}
	
	public void drawGraph()
	{
		if(this.graph != null)
			GraphViewer.draw(this.graph);
	}
	
	private void makeGraph() {
		graph = new ActionFlowGraph();
		
		for(UseCase uc : this.useCaseList)
		{
			for(int i=1;i<uc.getBasicFlowSentences().size();i++)
			{
				Sentence prev = uc.getBasicFlowSentences().get(i-1);
				Sentence next = uc.getBasicFlowSentences().get(i);
				
				AFGNode prevNode = this.graph.getNode(prev.getSentenceType()+"", prev.getRepresentVerb());
				AFGNode nextNode = this.graph.getNode(next.getSentenceType()+"", next.getRepresentVerb());

				
				if(prevNode == null)
				{
					prevNode = new AFGNode(prev.getSentenceType()+"", prev.getRepresentVerb());
					this.graph.addNode(prevNode);
				}
				else
				{
					prevNode.addOccurCount();
				}
				prevNode.addOutCount();

				if(nextNode == null)
				{
					nextNode = new AFGNode(next.getSentenceType()+"", next.getRepresentVerb());
					this.graph.addNode(nextNode);
				}
				else
				{
					nextNode.addOccurCount();
				}
				nextNode.addInCount();
				
				AFGEdge edge = this.graph.getEdge(prevNode, nextNode);
				
				if(edge == null)
				{
					edge = new AFGEdge(prevNode,nextNode);
					graph.addEdge(edge);
				}
				else
				{
					edge.addOccurCount();
				}
				
				if(graph.getMaxOccurEdge() < edge.getOccurCount())
					graph.setMaxOccurEdge(edge.getOccurCount());
				
				//edge.calculateWeight(maxOccur);
				//System.out.println(edge.getWeight());
			}
		}
		
		//this.graph.printGraph();
		//GraphViewer.draw(this.graph);
		graph.calculateWeight();
		
		ArrayList<AFGEdge> remTarget = getAllowanceRemoveTarget();
		
		for(AFGEdge e : remTarget)
		{
			this.graph.getEdgeList().remove(e);
		}
			
		//GraphViewer.draw(this.graph);
		
		System.out.println("Graph Generated");
	}
	
	private void printGraph()
	{
		//Print nodes
		System.out.println("name:occurence");
		for(AFGNode n : graph.getNodeList())
		{
			System.out.println(n.getIdentifyString()+":"+n.getOccurCount());
		}
		
		//Print edges
		System.out.println("from|to|occurence|freq|RI");
		for(AFGEdge e : graph.getEdgeList())
		{
			System.out.println(e.getFromNode().getIdentifyString()+"|"+e.getToNode().getIdentifyString()+"|"+e.getOccurCount()+"|"+e.getOccurrencesByMax()+"|"+e.getRelatedInterconectivity());
		}
	}
	
	
	private ArrayList<AFGEdge> getRemoveTargetByWeightedThreshold()
	{
		ArrayList<AFGEdge> remTarget = new ArrayList<AFGEdge>(); 
		
		for(AFGEdge e : graph.getEdgeList())
		{
			if(e.getWeight() < Thresholds.Edge_Weight_Threshold)
				remTarget.add(e);
		}
		
		return remTarget;
	}
	
	private ArrayList<AFGEdge> getAllowanceRemoveTarget()
	{
		ArrayList<AFGEdge> remTarget = new ArrayList<AFGEdge>(); 
		
		for(AFGEdge e : graph.getEdgeList())
		{
			if(e.getOccurrencesByMax() < Thresholds.Allowance_Occurences_By_Max || e.getRelatedInterconectivity() < Thresholds.Allowance_RI)
				remTarget.add(e);
		}	
		
		return remTarget;
	}
	
	private double getAverageWeightThreshold()
	{
		double sum = 0.0;
		double avr = 0.0;
		for(AFGEdge e : graph.getEdgeList())
			sum = sum + e.getWeight();
		avr = sum / graph.getEdgeList().size();
		
		//avr = 0.35;
		
		return avr;
	}

	private  void setRepresentiveVerb()
	{
		for(UseCase uc : useCaseList)
		{
			if(uc.getBasicFlowSentences() == null)
				continue;
			for(Sentence s : uc.getBasicFlowSentences())
			{
				//System.out.println(s.getSentenceContents());
				s.setRepresentVerb(getRepresentiveVerb(s.getSentenceType()+"",s.getVerb()));
			}
		}
	}
	
	private String getRepresentiveVerb(String type, String verb)
	{
		//System.out.println(type+":"+verb);
		for(VerbCluster vc : clusterList)
		{
			if(vc.getSubjectType().equals(type) && vc.getVerbs().contains(verb))
			{
				for(String vs : vc.getVerbs().split(";"))
				{
					if(vs.equals(verb))
						return vc.getRepresentives();
				}
			}
		}
		
		return "";
	}
}
