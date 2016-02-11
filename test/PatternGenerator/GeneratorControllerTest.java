package PatternGenerator;

import java.util.ArrayList;

import org.junit.Test;

import ActionFlowGraph.ActionFlowGraph;
import ActionFlowGraph.ActionFlowGraphGenerator;
import Entity.VerbCluster;
import VerbClusterGenerater.Generator;

public class GeneratorControllerTest {
	
	public void makePatterns(String targetProject){
		
		Generator vcGen = new Generator();
		ArrayList<VerbCluster> clusterList = vcGen.makeVerbClusterForValidation(targetProject);
		
		ActionFlowGraphGenerator afg = new ActionFlowGraphGenerator(clusterList);
		afg.makeActionFlowGraph();
		ActionFlowGraph flowGraph = afg.getGraph();
		//afg.drawGraph();
		
		PatternGeneratorController cont = new PatternGeneratorController(flowGraph);
		PatternFragmentSet patterns = cont.makePatterns(true, targetProject);
		
		for(PatternFragment pf : patterns)
		{
			String p = pf.toString()+"("+pf.getCountFactor()+","+pf.getAverageRI()+","+pf.getSizeFactor()+","+pf.getAdjustedWeight()+")";
			System.out.println(p);
		}

	}
	
	@Test
	public void makePatternTest(){
		makePatterns("SKP");
	}

}
