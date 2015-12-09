package Entity;

import java.util.ArrayList;

import MySQLDataAccess.SentenceAccessor;

public class Flow {
	private String startOrder;
	private boolean isAlternative;
	private ArrayList<Sentence> sentenceList; 
	private String flowID;
	private String startCondition;
	private String projectID;
	private String usecaseID;
	private char flowType;
	
	public Flow(String projectID, String usecaseID, boolean isAlternative, String startOrder, String flowID, ArrayList<Sentence> sentenceList, char flowType)
	{
		//sentenceList = new ArrayList<Sentence>();
		this.isAlternative = isAlternative;
		this.startOrder = startOrder;
		this.flowID = flowID;
		this.sentenceList = sentenceList;
		this.projectID = projectID;
		this.usecaseID = usecaseID;
		this.flowType = flowType;
	}
	
	public Flow(String projectID, String usecaseID, boolean isAlternative, String startOrder, String flowID, ArrayList<Sentence> sentenceList, String startCondition, char flowType)
	{
		this.isAlternative = isAlternative;
		this.startOrder = startOrder;
		this.flowID = flowID;
		this.sentenceList = sentenceList;
		this.startCondition = startCondition;
		this.projectID = projectID;
		this.usecaseID = usecaseID;
		this.flowType = flowType;
	}
	
	public Flow(Flow flow) {
		this(flow.getProjectID(),flow.getUseCaseID(),flow.getIsAlternative(),flow.getStartOrder(),flow.getFlowID(),null,flow.getStartCondition(),flow.getFlowType());
		ArrayList<Sentence> SA = new ArrayList<Sentence>();
		SA.addAll(flow.getSentenceList());
		this.sentenceList = SA;
	}

	public char getFlowType()
	{
		return this.flowType;
	}
	
	public String getStartOrder()
	{
		return this.startOrder;
	}
	
	public boolean getIsAlternative()
	{
		return this.isAlternative;
	}
	
	public char getIsAlternativeByChar()
	{
		if(this.isAlternative)
			return 'Y';
		else
			return 'N';
	}
	
	public ArrayList<Sentence> getSentenceList()
	{
		return this.sentenceList;
	}
	
	public String getFlowID()
	{
		return this.flowID;
	}
	
	public String getStartCondition()
	{
		return this.startCondition;
	}
	public String getProjectID()
	{
		return this.projectID;
	}
	public String getUseCaseID()
	{
		return this.usecaseID;
	}
	
	public int getFirstRepeat()
	{
		for(Sentence s:this.sentenceList)
		{
			if(s.isRepeatable())
				return s.getSentenceSeq();
		}
		return 0;
	}

	public void changeOrder(String from, String to) {
		String original = this.startOrder; 
		String changed = original.replaceFirst(from, to);
		this.startOrder = changed;
		
		for(Sentence s:this.sentenceList)
		{
			s.changeOrder(from, to);
		}
	}
	
	public void addAllSentence()
	{
		SentenceAccessor sa = new SentenceAccessor();
		this.sentenceList=sa.getSentenceList(this.projectID, this.usecaseID, this.flowID);
	}
}
