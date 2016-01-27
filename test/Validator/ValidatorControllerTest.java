package Validator;

import java.util.ArrayList;
import org.junit.Test;
import ToolSettings.Thresholds;

public class ValidatorControllerTest {
	
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
		prjList.add("EFF");
		prjList.add("OPS");
		return prjList;
	}
	
	@Test
	public void doSentenceValidationTestForAllowance_RI()
	{
		ArrayList<Result> resultList = new ArrayList<Result>();
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		
		for(double i = 0.00 ; i<0.5 ; i=i+0.05){
			Thresholds.Graph_Min_RI = i;
			ValidatorController v = new ValidatorController();
			resultList.add(v.doSentenceValidation("prs"));
		}
		
		for(Result r : resultList)
		{
			System.out.println(r);
		}
	}
	
	@Test
	public void doSentenceValidationTestForMatched_Pattern_Min_Equal_Rate()
	{
		ArrayList<Result> resultList = new ArrayList<Result>();
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		
		
		for(double i = 0.1 ; i<1.01 ; i=i+0.1){
			Thresholds.Matched_Pattern_Min_Equal_Rate = i;
			ValidatorController v = new ValidatorController();
			resultList.add(v.doSentenceValidation("PRS"));
		}
		
		for(Result r : resultList)
		{
			System.out.println(r);
		}
	}
	
	@Test
	public void doSentenceValidationTestForAllowance_Occurences_By_Max()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			for(double i = 0.00 ; i<0.5 ; i=i+0.05){
				Thresholds.Graph_Verb_Occr_Criteria = i;
				ValidatorController v = new ValidatorController();
				Result r = v.doSentenceValidation(prj);
				r.setProjectCode(prj);
				resultList.add(r);
			}

		}
		
		printResult(resultList);
	}
	
	@Test
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
				Result r = v.doSentenceValidation(prj);
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
	

	@Test
	public void doSentenceValidationTestForSimilarity_Equality_Share()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			for(double i = 0.0 ; i<=1 ; i=i+0.1){
				Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE[0] = i;
				Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE[1] = 1.0 - i;
				ValidatorController v = new ValidatorController();
				Result r = v.doSentenceValidation(prj);
				r.setProjectCode(prj);
				resultList.add(r);
			}

		}
		
		printResult(resultList);
	}
	
	//No result
	@Test
	public void doSentenceValidationTestForWord_Min_Frequency_On_Similarity()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			for(double i = 0.0 ; i<=1 ; i=i+0.1){
				Thresholds.Word_Min_Frequency_On_Similarity = i;
				ValidatorController v = new ValidatorController();
				Result r = v.doSentenceValidation(prj);
				r.setProjectCode(prj);
				resultList.add(r);
			}

		}
		
		printResult(resultList);
	}
	
	@Test
	public void doSentenceValidationTestForPattern_Weight_Share()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
		int stage = 0;
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			for(double i = 0.0 ; i<=1 ; i=i+0.3){
				for(double j= 0.0 ; j<=1 ; j=j+0.3){
					if(j + i > 1)
						continue;
					System.out.println("--"+stage+"--");
					Thresholds.Weight_Of_PatternWeight_COUNT_AVGRI_LENGHT[0] = i;
					Thresholds.Weight_Of_PatternWeight_COUNT_AVGRI_LENGHT[1] = j;
					Thresholds.Weight_Of_PatternWeight_COUNT_AVGRI_LENGHT[2] = 1.0-i-j;
					ValidatorController v = new ValidatorController();
					Result r = v.doSentenceValidation(prj);
					r.setProjectCode(prj);
					resultList.add(r);
					stage++;
				}
			}

		}
		
		printResult(resultList);
	}
	
	@Test
	public void doSentenceValidationTest()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			ValidatorController v = new ValidatorController();
			Result r = v.doSentenceValidation(prj);
			r.setProjectCode(prj);
			resultList.add(r);
		}
		printResult(resultList);
	}
	
	@Test
	public void doSentenceValidationNoOmitTest()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			ValidatorController v = new ValidatorController();
			Result r = v.doSentenceValidationNoOmit(prj);
			r.setProjectCode(prj);
			resultList.add(r);
		}
		printResult(resultList);
	}
	
	@Test
	public void doOneProjectValidationTest()
	{
		String prj = "SKP";
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		ValidatorController v = new ValidatorController();
		Result r = v.doSentenceValidation(prj);
		r.setProjectCode(prj);
		resultList.add(r);
		printResult(resultList);
	}
	
	@Test
	public void doOneScenarioValidationTest()
	{
		String prj = "SKP";
		String uc = "SKP06";
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		ValidatorController v = new ValidatorController();
		Result r = v.doOneScenarioValidation(prj, uc);
		r.setProjectCode(prj);
		resultList.add(r);
		printResult(resultList);
	}


}
