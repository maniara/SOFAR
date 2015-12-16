package ToolSettings;

public class Thresholds {
	public static double RI_Share = 0.7;
	public static double FrequencyFactor_Share = 0.3;
	
	public static double Edge_Weight_Threshold = 0.2;
	
	public static double Allowance_Occurences_By_Max = 0.08;
	public static double Allowance_RI = 0.01;
	
	public static double Verb_Occurence_Threshold = 0.01;
	
	public static double CoOccur_Threshold = 0.3;
	
	public static double Min_Average_Weight = 0.01;
	
	public static double[] Weight_Of_PatternWeight_COUNT_AVGRI_LENGHT={0.4,0.4,0.2};
	
	public static double Matched_Pattern_Min_Equal_Rate = 0.5;
	
	public static double Word_Min_Frequency_On_Similarity = 0.2;
	
	public static double[] Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE={0.3,0.7};
	
	//For the Dictionary based Clustering
	public static double Word_Max_Distance = 0.5;
}