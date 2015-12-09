package VerbClusterGenerater;


import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;

import javax.swing.plaf.synth.SynthSeparatorUI;

import Entity.VerbCluster;
import Entity.VerbFrequency;
import ToolSettings.Thresholds;
import WordDistanceCalculator.Distance;
import WordDistanceCalculator.JAWSController;
import WordDistanceCalculator.VerbDistanceList;

public class ClusterCreatorController {
	 
	private static HashSet<Distance> makeDistanceSet(HashSet<String> verbs) {
		
		JAWSController calc = JAWSController.getController();
		
		HashSet<Distance> retSet = new HashSet<Distance>();

		ArrayList<String> twinList = new ArrayList<String>(verbs);
		
		for(String v:verbs)
		{
			for(String t : twinList)
			{
				if(v.equals(t))
					continue;
				else if(retSet.contains(new Distance(v,t)))
					continue;
				else
				{
					double score = calc.getDistance(v, t);
					retSet.add(new Distance(v,t,score));
					//System.out.println("get similarity of "+v+","+t+":"+score);
				}
			}
			
			System.gc();
			
		}
		
		return retSet;
	}
	
	public static HashMap<String,String> createSynonymBasedCluster(HashSet<String> verbSet, HashMap<String, Double> freqMap)
	{
		ArrayList<String> minorVerbs = new ArrayList<String>();
		ArrayList<String> majorVerbs = new ArrayList<String>();
		
		//classify verbs by frequency
		for(String s:verbSet)
		{
			double freq = freqMap.get(s);
			if(freq>Thresholds.Verb_Occurence_Threshold)
			{
				majorVerbs.add(s);
				System.out.println(s);
			}
			else
				minorVerbs.add(s);
		}
		
		ClusterInventory ci = new ClusterInventory(majorVerbs);
		
		for(String s1 : majorVerbs)
		{
			for(String s2 : majorVerbs)
			{
				if(s1.equals(s2))
						continue;
				else
				{
					boolean isSyn = JAWSController.getController().isSynonym(s1, s2, Thresholds.Word_Min_Frequency_On_Similarity);
					
					if(isSyn)
					{
						System.out.println(s1 + "-"+s2);

						Cluster c1 = ci.getClusterFromString(s1);
						Cluster c2 = ci.getClusterFromString(s2);
						
						if(c1 == null || c1 == null)
						{
							c1 = ci.getClusterFromContainedString(s1);
							c2 = ci.getClusterFromContainedString(s2);
						}
						
						if(c1 != c2)
						{
							ci.add(ci.mergeCluster(c1, c2, 0, 0));
							
							ci.deleteCluster(c1);
							ci.deleteCluster(c2);
						}
					}
					
				}
			}
		}
		//Add Minors into closest cluster
		JAWSController con = JAWSController.getController();
		for(String v : minorVerbs)
		{
			double closestDist = Double.MAX_VALUE;
			Cluster closestCluster = null;
			
			for(Cluster c:ci)
			{
				double totalDist = 0.0;
				for(String cv : c.getVerbList())
				{
					totalDist = totalDist + con.getDistance(cv, v);
				}
				double avrDist = totalDist/c.getVerbList().size();
				
				if(closestDist>avrDist)
				{
					closestDist = avrDist;
					closestCluster = c;
				}
			}
			//System.out.println(closestCluster.toString()+":"+v);
			closestCluster.getVerbList().add(v);
		}
		
		
		
		HashMap<String,String> clusterMap = new HashMap<String,String>();
		for(Cluster c:ci)
		{
			String representive = c.getVerbList().get(0);
			String verbs = "";
			//System.out.println("==");
			for(String s : c.getVerbList())
			{
				if(verbs.equals(""))
					verbs = verbs + s;
				else
					verbs = verbs + ";"+s;
			}
			
			clusterMap.put(representive,verbs);

		}
		

		
		
		return clusterMap;
	}

	public static HashMap<String, String> createDistanceBasedCluster(HashSet<String> verbSet)
	{
		HashSet<Distance> verbDistSet= new HashSet<Distance>();
		
		verbDistSet = makeDistanceSet(verbSet);
		
		VerbDistanceList.makeDistanceList(verbDistSet);
		
		/*System.out.println("==========USER");

		double max = 9.0;
		
		for(Distance d : userDistList)
		{
			if(d.distance <= max)
				System.out.println(d);
		}
		
		System.out.println("==========SYSTEM");
		for(Distance d : systemDistList)
		{
			if(d.distance <= max)
				System.out.println(d);
		}*/
		
		//System.out.println(userVerbs);
		//System.out.println(systemVerbs);
		
		VerbClusterCreator userCluster = new VerbClusterCreator();
		ClusterInventory ci = userCluster.makeWardsHierarchicalCluster();
		
		ci.print();
		
		int optLevel = getOptimalClusterLevelByRSquare(ci);
		
		//System.out.println("------ Level : "+minLevel+"------");
		ArrayList<Cluster> minCluster = ci.getItem(optLevel);
		
		HashMap<String,String> clusterMap = new HashMap<String,String>(); 
		
		for(Cluster c:minCluster)
		{
			String representive = getRepresentiveVerb(c);
			String verbs = "";
			//System.out.println("==");
			for(String s : c.getVerbList())
			{
				if(verbs.equals(""))
					verbs = verbs + s;
				else
					verbs = verbs + ";"+s;
			}
			
			clusterMap.put(representive,verbs);

		}
		//VerbCluster systemCluster = new VerbCluster(systemDistList);
		//systemCluster.makeWardsHierarchicalCluster();
		
		return clusterMap;
	}
	
/*	private static int getMinDistBasedOptimalClusters(ClusterInventory ci)
	{
		int i = 0;

		while(true)
		{
			ArrayList<Cluster> levelCluster = ci.getItem(i);
			if(levelCluster.size() == 0)
				break;
			
			if(i > 0)
			{
				
			}
			
			if(i > 1)
			{
				
			}
			
			i++;
		}
		
		return 0;
	}*/
	
	private static int getOptimalClusterLevelByRSquare(ClusterInventory ci)
	{
		
		ArrayList<Double> R_SquareList = new ArrayList<Double>(); 
		
		int i = 0;
		
		System.out.println("R_Square; incresed; growth");

		while(true)
		{
			double SSB = ci.getSSB(i);
			double SSW = 0.0;
			ArrayList<Cluster> levelCluster = ci.getItem(i);
			if(levelCluster.size() == 0)
				break;
			
			for(Cluster c:levelCluster)
			{
				SSW = SSW+c.getSumSquare();
			}
			
			double R_Square = SSB / (SSB + SSW);
			R_SquareList.add(R_Square);
			
			double increseOfR_Square = 0.0;
			double growthOfR_Square = 0.0;
			if(i > 0)
			{//	System.out.println(R_SquareList.get(i-1)+" - "+R_SquareList.get(i));
				increseOfR_Square = R_SquareList.get(i-1) - R_SquareList.get(i);
			}
			
			if(i > 1)
				growthOfR_Square = (R_SquareList.get(i-1) - R_SquareList.get(i)) / (R_SquareList.get(i-2) - R_SquareList.get(i-1));
			
			if(growthOfR_Square>2 && increseOfR_Square>0.05)
			{
				System.out.println("Optimal Level : " + (i-2));
				return i-2;
			}
			
			System.out.print("LV"+i+">>");
			System.out.println( R_Square + ";" + increseOfR_Square + ";" + growthOfR_Square);
			
			i++;
		}
		
		/*for(int l = 0 ;l<R_SquareList.size()-1 ; l++)
		{
			System.out.println(l+"-"+(l+1)+"="+(R_SquareList.get(l) - R_SquareList.get(l+1)));
		}*/
		
		return 0;
	}
	
	private static int getOptimalClusterLevelByCustom(ClusterInventory ci)
	{
		double minATSS = 10000.0;
		int minLevel = 0;
		int i = 0;

		while(true)
		{
			double ss = 0.0;
			//System.out.println("----------------Level : "+i);
			ArrayList<Cluster> levelCluster = ci.getItem(i);
			if(levelCluster.size() == 0)
				break;
			
			for(Cluster c:levelCluster)
			{
				for(String s : c.getVerbList())
					System.out.println(s);
				//System.out.println(c.getSumSquare());
				ss = ss+c.getSumSquare();
			}
			
			double atss = ss / (double) levelCluster.size();
			//System.out.println("average total ss :"+atss);
			
			if(minATSS > atss)
			{
				minATSS = atss;
				minLevel = i;
			}
			
			i++;
		}
		
		return minLevel;
	}
	
	private static String getRepresentiveVerb(Cluster c)
	{
		double minDist = 1000.0;
		String repCandidate = c.getVerbList().get(0);
		for(String v1 : c.getVerbList())
		{
			double sumDist = 0.0;
			for(String v2 : c.getVerbList())
			{
				if(v1.equals(v2))
					continue;
				else
					sumDist = sumDist + JAWSController.getController().getDistance(v1, v2);
			}
			if(minDist>sumDist)
			{
				minDist = sumDist;
				repCandidate = v1;
			}
		}
		return repCandidate;
	}
	
	

	public static HashMap<String, String> createDicBasedCluster(ArrayList<VerbCluster> base, HashSet<String> verbs) {

		for(String v : verbs)
		{
			//pass if the verb is in dic
			if(isInDictionary(base,v))
				continue;
			
			for(VerbCluster vc :base)
			{
				for(String dicItem : vc.getVerbList())
				{
					if(v.equals(dicItem))
						break;
					else if(JAWSController.getController().isSynonym(v, dicItem,0.2)){
						vc.addVerb(v);
					}
				}
			}
			
		}
			
		
		/*for(VerbCluster vc :base)
		{
			for(String v : verbs)
			{
				for(String dicItem : vc.getVerbList())
				{
					if(v.equals(dicItem))
						break;
					else if(JAWSController.getController().isSynonym(v, dicItem)){
						System.out.println(v+":"+dicItem);
					}
				}
			}
		}*/
		
		return null;
	}

	private static boolean isInDictionary(ArrayList<VerbCluster> base, String v) {
		for(VerbCluster vc : base)
		{
			if(vc.getVerbList().contains(v))
				return true;
		}
		return false;
	}
}	

