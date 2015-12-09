package MissedActionFinder;

import java.util.ArrayList;
import java.util.HashMap;

import PatternGenerator.PatternFragment;

public class PatternPathRoad {
	private int from;
	private int to;
	private double weight;
	private PatternFragment matchedPattern;
	private double patternScore;
	private double equalityScore;
	private boolean hasMissed;
	private ArrayList<MissedAction> missedActionList;

	public PatternPathRoad(int from, int to, double weight, PatternFragment matchedPattern) {
		super();
		this.from = from;
		this.to = to;
		this.weight = weight;
		this.matchedPattern = matchedPattern;
		
		if(matchedPattern == null)
			hasMissed = false;
		else if(to-from == matchedPattern.getVerbList().size())
			hasMissed = false;
		else
			hasMissed = true;
		
		if(hasMissed)
			missedActionList = new ArrayList<MissedAction>();
	}
	
	public boolean hasMissed() {
		return hasMissed;
	}



	public int getFrom() {
		return from;
	}

	public int getTo() {
		return to;
	}

	public double getWeight() {
		return (double) Math.round(weight*1000) /1000;
	}

	public PatternFragment getMatchedPattern() {
		return matchedPattern;
	}
	
	@Override
	public String toString()
	{
		if(matchedPattern != null)
			return from+"-"+this.matchedPattern.toString()+"-"+to;
		else
			return from+"-EMPTY-"+to;
	}

	public double getPatternScore() {
		return patternScore;
	}

	public void setPatternScore(double patternScore) {
		this.patternScore = patternScore;
	}

	public double getEqualityScore() {
		return equalityScore;
	}

	public void setEqualityScore(double equalityScore) {
		this.equalityScore = equalityScore;
	}

	public ArrayList<MissedAction> getMissedActionMap() {
		return missedActionList;
	}

	public void setMissedActionMap(ArrayList<MissedAction> missedActionMap) {
		this.missedActionList = missedActionMap;
	}
}
