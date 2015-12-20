package Validator;

import java.util.ArrayList;

import ActionFlowGraph.ActionFlowGraph;
import ActionFlowGraph.ActionFlowGraphGenerator;
import Entity.Project;
import Entity.UseCase;
import Entity.VerbCluster;
import MySQLDataAccess.ProjectAccessor;
import MySQLDataAccess.UseCaseAccessor;
import PatternGenerator.GeneratorController;
import PatternGenerator.PatternFragmentSet;
import VerbClusterGenerater.Generator;

public class ValidatorController {
	
	ArrayList<VerbCluster> clusterList;
	private ActionFlowGraph flowGraph;
	PatternFragmentSet patterns;
	ArrayList<UseCase> targetProject;
	ArrayList<UseCase> randomRemovedTargetProject;
	
	public void perform(String targetProjectId){
		getVerbCluster(targetProjectId);
		getFlowGraph();
		getPatterns();
		getTargetProjectEntity(targetProjectId);
	}

	private void getTargetProjectEntity(String targetProjectId) {
		UseCaseAccessor ua = new UseCaseAccessor();
		targetProject = ua.getUseCaseList(targetProjectId);
	}

	private void getFlowGraph() {
		ActionFlowGraphGenerator afg = new ActionFlowGraphGenerator(clusterList);
		afg.makeActionFlowGraph();
		flowGraph = afg.getGraph();
		
	}

	private void getVerbCluster(String targetProjectId) {
		Generator vcGen = new Generator();
		clusterList = vcGen.makeVerbClusterForValidation(targetProjectId);
		
	}
	
	private void getPatterns()
	{
		GeneratorController cont = new GeneratorController(flowGraph);	
		patterns = cont.makePatterns();
	}

}
