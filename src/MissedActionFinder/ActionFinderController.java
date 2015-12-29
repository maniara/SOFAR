package MissedActionFinder;

import java.util.ArrayList;
import java.util.HashMap;

import Entity.Flow;
import Entity.Sentence;
import Entity.VerbCluster;
import MySQLDataAccess.PatternAccessor;
import MySQLDataAccess.VerbClusterAccessor;
import PatternGenerator.PatternFragment;
import PatternGenerator.PatternFragmentSet;
import PatternGenerator.PatternSetInstance;
import ToolSettings.Thresholds;
import VerbClusterGenerater.VerbClusterInstance;
import WordDistanceCalculator.JAWSController;

public class ActionFinderController {
	
	private PatternFragmentSet patternSet;
	private HashMap<String, String> userCluster;
	private HashMap<String, String> systemCluster;
	
	public ActionFinderController(){
		super();
	}
	
	public ActionFinderController(PatternFragmentSet patternSet, ArrayList<VerbCluster> clusterList)
	{
		this.patternSet = patternSet;
		userCluster = new HashMap<String, String>();
		systemCluster = new HashMap<String, String>();
		for(VerbCluster vc : clusterList)
		{
			if(vc.getSubjectType().equals("u"))
			{
				userCluster.put(vc.getRepresentives(), vc.getVerbs());
			}
			if(vc.getSubjectType().equals("s"))
			{
				systemCluster.put(vc.getRepresentives(), vc.getVerbs());
			}

		}
	}
	
	public ArrayList<MissedAction> findMissedAction(ArrayList<Sentence> sentenceList, boolean forValidation)
	{
		ArrayList<MissedAction> missedAction = new ArrayList<MissedAction>(); 

		if(this.patternSet == null)
			checkAndLoadPattern();
		if(this.userCluster == null || this.systemCluster == null)
			checkAndLoadVerbCluster();
		findRepresentiveVerb(sentenceList);
		ArrayList<PatternPathRoad> roadList = drawPatternPath(sentenceList);
		ArrayList<PatternPathRoad> optimalRoute = OptimalRouteGenerator.getOptimalRoute(sentenceList.size(),roadList);
		
		System.out.print("Optimal Pattern : ");
		for(PatternPathRoad pp : optimalRoute)
		{
			System.out.println(pp.toString()+" : "+pp.getWeight()+"["+pp.hasMissed()+"]");
			if(pp.hasMissed())
			{
				/*for(MissedAction ma :pp.getMissedActionMap()){
					System.out.println(ma);
				}*/
				missedAction.addAll(pp.getMissedActionMap());
			}
		}
		
		return missedAction;

	}

	private void checkAndLoadVerbCluster() {
		// TODO Auto-generated method stub
		userCluster = new HashMap<String, String>();
		systemCluster = new HashMap<String, String>();
		
		VerbClusterAccessor vca = new VerbClusterAccessor();
		ArrayList<VerbCluster> clusterList = vca.getAllClusters();
		
		for(VerbCluster vc : clusterList)
		{
			if (vc.getSubjectType().equals("u"))
				userCluster.put(vc.getRepresentives(), vc.getVerbs());
			else
				systemCluster.put(vc.getRepresentives(), vc.getVerbs());
		}
	}

	private void checkAndLoadPattern() {
		// TODO Auto-generated method stub
		if(PatternSetInstance.PatternSet == null)
			patternSet = new PatternAccessor().getPatternSet();
		else
			patternSet = PatternSetInstance.PatternSet;
		
		//debug
//		for(PatternFragment pf : PatternGenerator.PatternSetInstance.PatternSet){
//			if(pf.toString().contains("u:choose") &&pf.toString().contains("u:input"))
//				System.out.println(pf.toString());
//		}
	}

	public void findRepresentiveVerb(ArrayList<Sentence> sentenceList) {
		for(Sentence sen : sentenceList)
		{
			if(sen.getRepresentVerb() != null)
				continue;
			
			if(sen.getVerb() == null || sen.getVerb().equals(""))
			{
				break;
			}
			if(sen.getSentenceType() == 'u')
			{
				for(String uClust : userCluster.keySet())
				{
					if(userCluster.get(uClust).contains(sen.getVerb()))
					{
						//System.out.println("U-Detected : "+sen.getVerb() + "->" + uClust);
						sen.setRepresentVerb(uClust);
					}
				}
			}
			else if(sen.getSentenceType() == 's')
			{
				for(String sClust : systemCluster.keySet())
				{
					if(systemCluster.get(sClust).contains(sen.getVerb()))
					{
						//System.out.println("S-Detected : "+sen.getVerb() + "->" + sClust);
						sen.setRepresentVerb(sClust);
					}
				}
			}
			
			//if there's no representives, find synonym or most similar verb among patterns
			if(sen.getRepresentVerb() == null)
			{
				HashMap<String, String> verbMap = null;
				if(sen.getSentenceType() == 'u')
					verbMap = userCluster;
				else if(sen.getSentenceType() == 's')
					verbMap = systemCluster;
				else
					System.out.println("=== Exception Sentence Type :"+sen.getSentenceContents()+":"+sen.getSentenceContents()+" ===");
				
				double min_distance = 1000.0;
				String similarVerb = "";
				boolean isFinished = false;
				for(String s : verbMap.keySet())
				{
					for(String verb : verbMap.get(s).split("-"))
					{
						if(JAWSController.getController().isSynonym(sen.getVerb(),verb,Thresholds.Word_Min_Frequency_On_Similarity))
						{
							sen.setRepresentVerb(verb);
							similarVerb = s;
							isFinished = true;
							//System.out.println("Syn-Detected : "+sen.getVerbString()+"->"+similarVerb);
							break;
						}
						else
						{
							double sim = JAWSController.getController().getDistance(sen.getVerb(),verb);
							if(min_distance > sim)
							{
								min_distance = sim;
								similarVerb = s;
							}
						}
							
					}
					if(isFinished)
						break;
				}

				sen.setRepresentVerb(similarVerb);
				//System.out.println("Dist-Detected"+sen.getVerb()+"->"+similarVerb);
			}
			
			else
				continue;
		}
		
		String origin = "";
		String reps = "";
		for(Sentence sen : sentenceList)
		{
			origin= origin + sen.getSentenceType()+":"+sen.getVerb()+"-";
			reps= reps + sen.getSentenceType()+":"+sen.getRepresentVerb()+"-";
		}
		//System.out.println("Representive generated : "+origin + "==>"+reps );
	}
	
	private ArrayList<PatternPathRoad> drawPatternPath(ArrayList<Sentence> sentenceList)
	{
		ArrayList<PatternPathRoad> roadList = new ArrayList<PatternPathRoad>(); 
		//all match is from the each sentence
		for(int sentenceIndex = 0;sentenceIndex<sentenceList.size();sentenceIndex++){
			//minimum size of pattern : 3
			if(sentenceIndex + 2 >= sentenceList.size())
				break;
			int i=1;
			//expanding size find similarity 
			while(sentenceIndex+i < sentenceList.size())
			{
				for(PatternFragment pf : patternSet)
				{
					//if pattern is larger, the step is discard
					if(i+1 > pf.getVerbList().size())
						continue;
					ArrayList<Sentence> scenaraioPiece = getScenarioPiece(sentenceList, sentenceIndex ,i+sentenceIndex);
					//Matching item debug
//					System.out.print("Target : ");
//					printSentenceList(scenaraioPiece);
//					System.out.print("Pattern : ");
//					System.out.println(pf);
					
					PatternPathRoad ppr = getPatternRoadWithSimilarity(sentenceIndex,i+sentenceIndex+1,scenaraioPiece, pf);
					
					if(ppr.getWeight() != 0.0)
					{
						// = new PatternPathRoad(sentenceIndex,i+sentenceIndex+1,similarity,pf);
						checkHighRoadAndAdd(roadList,ppr);
						//roadList.add();
					}
				}
				i++;
			}
		}
		for(int i = 0;i<sentenceList.size();i++)
		{
			roadList.add(new PatternPathRoad(i,i+1,0.0,null));
		}
		
		/*for(PatternPathRoad pp:roadList)
		{
			System.out.println(pp.toString()+" : "+pp.getWeight());
		}*/
		
		return roadList;
	}

	private void checkHighRoadAndAdd(ArrayList<PatternPathRoad> roadList, PatternPathRoad ppr) {
		for(PatternPathRoad road : roadList){
			if(ppr.getFrom() == road.getFrom() && ppr.getTo() == road.getTo())
			{
				if(ppr.getWeight() >= road.getWeight()){
					roadList.remove(road);
					roadList.add(ppr);
					return;
				}
				else
				{
					return;
				}
			}
		}
		
		roadList.add(ppr);
		
	}

	private ArrayList<Sentence> getScenarioPiece(ArrayList<Sentence> sentenceList, int from, int to) {
		ArrayList<Sentence> retList = new ArrayList<Sentence>();
		for(int i=from ; i<=to ;i++)
		{
			retList.add(sentenceList.get(i));
		}
		
		return retList;
	}
	
	private void printSentenceList(ArrayList<Sentence> list)
	{
		for(Sentence sen : list)
		{
			System.out.print(sen.getSentenceType()+":"+sen.getRepresentVerb()+"-");
		}
		System.out.println("");
	}

	private MissedAction getMissedActionObject(int prev,String prevSequenceString,int index,String patternString)
	{
		String[] sArr = patternString.split(":");
		String sub = "";
		if(sArr[0].equals("s"))
			sub = "system";
		else
			sub = "user";
		String verb = sArr[1];
		return new MissedAction(prev,prevSequenceString, index, sub, verb);
		
	}
	
	private PatternPathRoad getPatternRoadWithSimilarity(int from, int to,ArrayList<Sentence> target, PatternFragment pf)
	{
		//debug
//		System.out.print("Target : ");
//		printSentenceList(target);
//		System.out.print("Pattern : ");
//		System.out.println(pf);
		//it assume that no omission in pattern.
		int i=0; //pattern index
		int j=0; //target index
		int matched = 0;
		//System.out.println(pf.toString());
		
		ArrayList<MissedAction> missedAction= new ArrayList<MissedAction>(); 
		
		while(i<pf.getVerbList().size() && j<target.size())
		{

			String targetString = target.get(j).getSentenceType()+":"+target.get(j).getRepresentVerb();
			String patternString = pf.getVerbList().get(i);

			
			if(targetString.equals(patternString)){
				i++;
				j++;
				matched++;
				
			}
			
			else{
				String prevSentenceString = null;
				if(j == 0)
					prevSentenceString = "Beginning";
				else
					prevSentenceString = target.get(j-1).getSentenceType()+":"+target.get(j-1).getRepresentVerb();
				
				missedAction.add(getMissedActionObject(from + j, prevSentenceString, from +j+i,patternString));
				i++;
			}
			
			//if target is the last sentence but pattern is not
			if(j == target.size())
			{
				String prevSentenceString = null;
				if(j == 0)
					prevSentenceString = "Beginning";
				else
					prevSentenceString = target.get(j-1).getSentenceType()+":"+target.get(j-1).getRepresentVerb();
				
				for(int k=i;k<pf.getVerbList().size();k++)
				{
					String lastPatternString = pf.getVerbList().get(k);
					missedAction.add(getMissedActionObject(from + j, prevSentenceString, from + j+k-1,lastPatternString));
				}
			}
			//System.out.println(targetString+" & "+patternString);
		}
		/*if(matched > 1){
			System.out.print("Target : ");
			printSentenceList(target);
			System.out.print("Pattern : ");
			System.out.println(pf);
			System.out.println("Matched:" + matched);
//		}*/
//		System.out.println("Matched:" + matched);
		double equalRate =(double) (matched*2) / (pf.getVerbList().size()+target.size());
		double weight = 0.0;
		if(equalRate >= Thresholds.Matched_Pattern_Min_Equal_Rate)
		{
//			System.out.print("Target : ");
//			printSentenceList(target);
//			System.out.print("Pattern : ");
//			System.out.println(pf);
//			System.out.println("Matched:" + matched);
//			System.out.println(equalRate+","+pf.getAdjustedWeight());
			
			weight =  Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE[0]*equalRate 
					+ Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE[1]*pf.getAdjustedWeight();
		}
		else
			weight =  0.0;
		
		PatternPathRoad road = new PatternPathRoad(from,to,weight,pf);
		if(road.hasMissed())
			road.setMissedActionMap(missedAction);
		
		return road;
	}
}

