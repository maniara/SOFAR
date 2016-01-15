package Validator;

import java.util.ArrayList;

import ActionFlowGraph.ActionFlowGraph;
import ActionFlowGraph.ActionFlowGraphGenerator;
import Entity.Project;
import Entity.Sentence;
import Entity.UseCase;
import Entity.VerbCluster;
import MissedActionFinder.ActionFinderController;
import MissedActionFinder.MissedAction;
import MySQLDataAccess.ProjectAccessor;
import MySQLDataAccess.SentenceAccessor;
import MySQLDataAccess.UseCaseAccessor;
import PatternGenerator.GeneratorController;
import PatternGenerator.PatternFragment;
import PatternGenerator.PatternFragmentSet;
import VerbClusterGenerater.Generator;

public class ValidatorController {
	
	private String targetProjectId;
	private ArrayList<VerbCluster> clusterList;
	private ActionFlowGraph flowGraph;
	private PatternFragmentSet patterns;
	private ArrayList<UseCase> targetProject;
	//ArrayList<UseCase> randomRemovedTargetProject;
	
	public Result doSentenceValidation(String targetProjectId){
		this.targetProjectId = targetProjectId;
		getVerbCluster(targetProjectId);
		getFlowGraph();
		getPatterns();
		getTargetProject(targetProjectId);
		return validate();
	}

	private void getTargetProject(String targetProjectId) {
		UseCaseAccessor ua = new UseCaseAccessor();
		targetProject = ua.getUseCaseList(targetProjectId);
		System.out.println("--- "+ targetProject.size()+" use case loaded ---");
		
	}

	private Result validate() {
		int totalTry = 0;
		int correct = 0;
		int incorrect = 0;
		int allExtracted = 0;
		for(UseCase uc : targetProject)
		{
			//UseCase uc = targetProject.get(0);
			ArrayList<Sentence> originSentenceList = new SentenceAccessor().getBasicFlowSentenceList(uc.getProjectID(), uc.getUseCaseID());
			ActionFinderController afc = new ActionFinderController(patterns,clusterList);
			afc.findRepresentiveVerb(originSentenceList);
			System.out.print("Original Scenario : ");
			for(Sentence sen : originSentenceList)
			{
				System.out.print(sen.getSentenceType()+":"+sen.getRepresentVerb()+"-");
			}
			System.out.println("");
//			
			for(int i=0;i<originSentenceList.size();i++){
				boolean findThisTry = false; 
				totalTry++;
				Sentence removedSentence = originSentenceList.get(i);
				ArrayList<Sentence> sentenceList = new ArrayList<Sentence>(originSentenceList);
				sentenceList.remove(i);
				System.out.println("-----"+uc.getUseCaseID()+"-----");
				System.out.println("'"+removedSentence.getVerb()+"'("+removedSentence.getSentenceOrder()+") is removed");
				System.out.print("Input Scenario : ");
				for(Sentence sen : sentenceList)
				{
					System.out.print(sen.getSentenceType()+":"+sen.getRepresentVerb()+"-");
				}
				System.out.println("");
				ArrayList<MissedAction> missedActionMap = afc.findMissedAction(sentenceList,true);
				System.out.println(missedActionMap);
				
				for(MissedAction ma : missedActionMap)
				{
					allExtracted++;
					String removedAction = removedSentence.getVerbString();
					int removedActionNum = Integer.parseInt(removedSentence.getSentenceOrder());

					String missedAction = ma.getActionString();
					int MissedPrevAction = ma.getPrevSequence();
					System.out.println("REM: "+removedAction+"("+removedActionNum +"), GOT: "+missedAction +"("+(MissedPrevAction+1)+")");
					
					if(removedAction.equals(missedAction) && removedActionNum == MissedPrevAction+1){
					//if(removedAction.equals(missedAction)){
						correct++;
						findThisTry = true;
					}
					else{
						System.out.println();
						incorrect++;
					}
				}
				System.out.println("Result : " + findThisTry);
				
				
			}
		}
		
		System.out.println("Missed Sentence #: "+totalTry);
		System.out.println("Extrected Action: "+allExtracted);
		System.out.println("Correct: "+correct);
		
		return new Result(totalTry,allExtracted,correct);
	}

	private void getFlowGraph() {
		ActionFlowGraphGenerator afg = new ActionFlowGraphGenerator(clusterList);
		afg.makeActionFlowGraph();
		flowGraph = afg.getGraph();
		//afg.drawGraph();
		
	}

	private void getVerbCluster(String targetProjectId) {
		Generator vcGen = new Generator();
		//clusterList = vcGen.makeVerbClusterForValidation(targetProjectId);
		clusterList = vcGen.makeVerbCluster();
		//System.out.println(clusterList.size());
		System.out.println("--- "+clusterList.size()+" cluster generated (SAMPLE-"+clusterList.get(0)+") ---");
		
	}
	
	private void getPatterns()
	{
		GeneratorController cont = new GeneratorController(flowGraph);	
		patterns = cont.makePatterns(true, targetProjectId);
		/*for(PatternFragment pf : patterns)
		{
			if(pf != null)
				System.out.println(pf);
		}*/
		System.out.println("--- "+patterns.size()+" patterns generated ---");
	}

}
