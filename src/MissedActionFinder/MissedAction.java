package MissedActionFinder;

public class MissedAction implements Comparable {
	private int prevSequence;
	private int actionSequence;
	private String subject;
	private String verb;
	public MissedAction(int pervSequence, int actionSequence, String subject, String verb) {
		super();
		this.prevSequence = pervSequence;
		this.actionSequence = actionSequence;
		this.subject = subject;
		this.verb = verb;
	}
	public int getPrevSequence() {
		return prevSequence;
	}
	public int getActionSequence() {
		return actionSequence;
	}
	public String getSubject() {
		return subject;
	}
	public String getVerb() {
		return verb;
	}
	@Override
	public int compareTo(Object arg0) {
		MissedAction o = (MissedAction) arg0;
		if(this.prevSequence != o.getPrevSequence())
			return this.prevSequence - o.getPrevSequence();
		else
			return this.actionSequence - o.actionSequence;
	}
	
	@Override
	public String toString()
	{
		return "'"+subject+" "+verb+"'("+(actionSequence)+") is missed after "+(prevSequence)+"";
	}
	
	
}
