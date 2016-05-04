package Validator;

import java.util.ArrayList;
import org.junit.Test;

import MySQLDataAccess.MissedResultAccessor;
import MySQLDataAccess.OverExtractedResultAccessor;
import MySQLDataAccess.ValidationResultAccessor;
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
		prjList.add("STS");
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
		prjList.add("STS");
		prjList.add("OPS");
		return prjList;
	}
	
	
	
	
	private void printResult(ArrayList<Result> resultList) {
		int tot_try=0;
		int tot_ext=0;
		int tot_cor=0;
		String prj = "";
		for(Result r : resultList)
		{
			if(!prj.equals(r.getProjectCode())){
				prj = r.getProjectCode();
				System.out.println("---"+r.getProjectCode()+"---");
			}
			System.out.println(r);
			tot_try = tot_try + r.getTryNum();
			tot_ext = tot_ext + r.getExtracted();
			tot_cor = tot_cor + r.getCorrect();
		}
		
		System.out.println("=== Total ===");
		System.out.println(tot_try+":"+tot_ext+":"+tot_cor);
	}
	
	@Test
	public void doWholeValidation()
	{
		boolean dbStore = true;
		boolean printLog = true;
		if(dbStore){
			ValidationResultAccessor vra = new ValidationResultAccessor();
			vra.deleteAllResult();
			
			OverExtractedResultAccessor oera = new OverExtractedResultAccessor();
			oera.deleteAllResult();
			
			MissedResultAccessor mra = new MissedResultAccessor();
			mra.deleteAllResult();
		}

		ArrayList<String> prjList = this.getAllProjectList();
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		//Thresholds.Weight_Of_Scenario_Similarity_EQUALITY_PATTERNSCORE = {0.2,0.8};
		for(String prj : prjList){
			ValidatorController v = new ValidatorController();
			Result r = v.doSentenceValidation(prj,dbStore,printLog);
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
			Result r = v.doNoExceptValidation(prj,false);
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
		boolean dbStore = false;
		boolean printLog = false;
		if(dbStore){
			ValidationResultAccessor vra = new ValidationResultAccessor();
			vra.deleteAllResult();
			
			OverExtractedResultAccessor oera = new OverExtractedResultAccessor();
			oera.deleteAllResult();
			
			MissedResultAccessor mra = new MissedResultAccessor();
			mra.deleteAllResult();
		}
		String prj = "UIS";
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		ValidatorController v = new ValidatorController();
		Result r = v.doSentenceValidation(prj,dbStore,printLog);
		r.setProjectCode(prj);
		resultList.add(r);
		printResult(resultList);
	}
	
	@Test
	public void doOneScenarioValidation()
	{
		String prj = "UIS";
		String uc = "UIS17";
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		ValidatorController v = new ValidatorController();
		Result r = v.doOneScenarioValidation(prj, uc,false);
		r.setProjectCode(prj);
		resultList.add(r);
		printResult(resultList);
	}
	
	@Test
	public void doOneTryValidation()
	{
		String prj = "UIS";
		String uc = "UIS17";
		int omit = 6;
		ArrayList<Result> resultList = new ArrayList<Result>();
				
		ValidatorController v = new ValidatorController();
		Result r = v.doOneTryValidation(prj, uc, omit, false);
		r.setProjectCode(prj);
		resultList.add(r);
		printResult(resultList);
	}


}
