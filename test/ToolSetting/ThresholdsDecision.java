package ToolSetting;

import java.util.ArrayList;

import org.junit.Test;

import ToolSettings.Thresholds;
import Validator.Result;
import Validator.ValidatorController;

public class ThresholdsDecision {
	
	private ArrayList<String> getIndustryProjectList()
	{
		ArrayList<String> prjList = new ArrayList<String>();
		prjList.add("SKP");
		prjList.add("COS");
		prjList.add("META");
		prjList.add("UIS");
		return prjList;
	}
	
	private ArrayList<String> getAcademicProjectList()
	{
		ArrayList<String> prjList = new ArrayList<String>();
		prjList.add("ATM");
		prjList.add("OSS");
		prjList.add("PRS");
		prjList.add("POS");
		prjList.add("TMS");
		prjList.add("STS");
		prjList.add("OPS");
		prjList.add("PAY");
		return prjList;
	}
	
	private ArrayList<String> getAllProjectList()
	{
		ArrayList<String> prjList = new ArrayList<String>();
		prjList.add("SKP");
		prjList.add("COS");
		prjList.add("META");
		prjList.add("UIS");
		prjList.add("PAY");
		prjList.add("ATM");
		prjList.add("OSS");
		prjList.add("PRS");
		prjList.add("POS");
		prjList.add("TMS");
		prjList.add("STS");
		prjList.add("OPS");
		prjList.add("PAY");
		return prjList;
	}
	
	/*@Test
	public void doSentenceValidationTestForAllowance_RI()
	{
		ArrayList<Result> resultList = new ArrayList<Result>();
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		
		for(double i = 0.00 ; i<0.5 ; i=i+0.05){
			Thresholds.Graph_Min_RI = i;
			ValidatorController v = new ValidatorController();
			resultList.add(v.doSentenceValidation("prs",false,false));
		}
		
		for(Result r : resultList)
		{
			System.out.println(r);
		}
	}*/
	
	/*@Test
	public void doSentenceValidationTestForMatched_Pattern_Min_Equal_Rate()
	{
		ArrayList<Result> resultList = new ArrayList<Result>();
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		
		
		for(double i = 0.1 ; i<1.01 ; i=i+0.1){
			Thresholds.Matched_Pattern_Min_Equal_Rate = i;
			ValidatorController v = new ValidatorController();
			resultList.add(v.doSentenceValidation("PRS",false,false));
		}
		
		for(Result r : resultList)
		{
			System.out.println(r);
		}
	}*/
	
	//No effect
	/*@Test
	public void doSentenceValidationTestForAllowance_Occurences_By_Max()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			for(double i = 0.00 ; i<0.5 ; i=i+0.05){
				Thresholds.Graph_Verb_Occr_Criteria = i;
				ValidatorController v = new ValidatorController();
				Result r = v.doSentenceValidation(prj,false,false);
				r.setProjectCode(prj);
				resultList.add(r);
			}

		}
		
		printResult(resultList);
	}*/
	
	//No Result
	/*@Test
	public void doSentenceValidationTestForRI_FF_Share()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			for(double i = 0.0 ; i<=1 ; i=i+0.1){
				Thresholds.RI_Share = i;
				Thresholds.FrequencyFactor_Share = 1.0 - i;
				ValidatorController v = new ValidatorController();
				Result r = v.doSentenceValidation(prj,false,false);
				r.setProjectCode(prj);
				resultList.add(r);
			}

		}
		
		printResult(resultList);
	}*/
	
	//No Result
	/*@Test
	public void doSentenceValidationTestForEdge_Weight_Threshold()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			for(double i = 0.0 ; i<=1 ; i=i+0.1){
				Thresholds.Edge_Weight_Threshold = i;
				ValidatorController v = new ValidatorController();
				Result r = v.doSentenceValidation(prj,false,false);
				r.setProjectCode(prj);
				resultList.add(r);
			}

		}
		
		printResult(resultList);
	}*/
	
	
	
	@Test
	public void doPatternScoreRatioCheck()
	{
		ArrayList<String> prjList = new ArrayList<String>();
		prjList.add("UIS");
		//ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
		int stage = 0;
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			System.out.println("=== "+prj+" starting ===");
			ValidatorController v = new ValidatorController();
			v.setPatternSet(prj);
			for(double i =0.0; i<=1.0 ; i=i+0.1){
				for(double j= 0.0 ; j<=1.0 ; j=j+0.1){
					if(j + i > 1)
						continue;
					//System.out.println("--"+stage+"--");
					Thresholds.Weight_Of_PatternWeight_COUNT_AVGRI_LENGHT[0] = i;
					Thresholds.Weight_Of_PatternWeight_COUNT_AVGRI_LENGHT[1] = j;
					double lengthRatio = Math.round((1.0-i-j)*100d) / 100d;
					Thresholds.Weight_Of_PatternWeight_COUNT_AVGRI_LENGHT[2] = lengthRatio;
					//ValidatorController v = new ValidatorController();
					//System.out.println(i+","+j+","+(1.0-i-j));
					Result r = v.doSentenceValidation(prj,false,false,false);
					r.setProjectCode(prj);
					resultList.add(r);
					stage++;
				}
			}

		}
		
		printResult(resultList);
	}
	
	//No result
	/*@Test
	public void doSentenceValidationTestForWord_Min_Frequency_On_Similarity()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			for(double i = 0.0 ; i<=1 ; i=i+0.1){
				Thresholds.Word_Min_Frequency_On_Similarity = i;
				ValidatorController v = new ValidatorController();
				Result r = v.doSentenceValidation(prj,false,false);
				r.setProjectCode(prj);
				resultList.add(r);
			}

		}
		
		printResult(resultList);
	}*/
	
	@Test
	public void doMatchingRationCheck()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			System.out.println("=== "+prj+" starting ===");
			ValidatorController v = new ValidatorController();
			v.setPatternSet(prj);
			for(double i = 0.0 ; i<=1 ; i=i+0.1){
				Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE[0] = i;
				double patScoreRatio = Math.round((1.0-i)*100d) / 100d;
				Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE[1] = 1.0 - i;
				Result r = v.doSentenceValidation(prj,false,false,false);
				r.setProjectCode(prj);
				resultList.add(r);
			}

		}
		
		printResult(resultList);
	}
	
	private void printResult(ArrayList<Result> resultList) {
		String prj = "";
		for(Result r : resultList)
		{
			if(!prj.equals(r.getProjectCode())){
				prj = r.getProjectCode();
				System.out.println("---"+r.getProjectCode()+"---");
			}
			System.out.println(r);
		}
	}
}
