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
		prjList.add("PAY");
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
		prjList.add("EFF");
		prjList.add("OPS");
		return prjList;
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
	public void doWholeValidation()
	{
		ArrayList<String> prjList = this.getAllProjectList();
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
	public void doNoExceptValidation()
	{
		ArrayList<String> prjList = this.getAllProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			ValidatorController v = new ValidatorController();
			Result r = v.doNoExceptValidation(prj);
			r.setProjectCode(prj);
			resultList.add(r);
		}
		printResult(resultList);
	}
	
	
	
	@Test
	public void doCompleteScenarioValidation()
	{
		ArrayList<String> prjList = this.getIndustryProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			ValidatorController v = new ValidatorController();
			Result r = v.doCompleteScenarioValidation(prj);
			r.setProjectCode(prj);
			resultList.add(r);
		}
		printResult(resultList);
	}
	
	@Test
	public void doOneProjectValidation()
	{
		String prj = "PAY";
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		ValidatorController v = new ValidatorController();
		Result r = v.doSentenceValidation(prj);
		r.setProjectCode(prj);
		resultList.add(r);
		printResult(resultList);
	}
	
	@Test
	public void doOneScenarioValidation()
	{
		String prj = "SKP";
		String uc = "SKP01";
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		ValidatorController v = new ValidatorController();
		Result r = v.doOneScenarioValidation(prj, uc);
		r.setProjectCode(prj);
		resultList.add(r);
		printResult(resultList);
	}


}
