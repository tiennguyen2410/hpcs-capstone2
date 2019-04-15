package model.BEAN;

public class SearchCaregiver {
	private String name;
	private String avatar;
	private int view;
	private int numComment;
	private int numRate;
	private int cost;
	private String describe;
	private String startTime;
	private String endTime;
	private int idCaregiver;
	private int idCalendar;
	public int getIdCaregiver() {
		return idCaregiver;
	}
	public void setIdCaregiver(int idCaregiver) {
		this.idCaregiver = idCaregiver;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public int getNumComment() {
		return numComment;
	}
	public void setNumComment(int numComment) {
		this.numComment = numComment;
	}
	public int getNumRate() {
		return numRate;
	}
	public void setNumRate(int numRate) {
		this.numRate = numRate;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	public SearchCaregiver(int idCaregiver, String name, String avatar, int view, int numComment, int numRate, int cost,
			String describe, String startTime, String endTime,int idCalendar) {
		super();
		this.idCaregiver = idCaregiver;
		this.name = name;
		this.avatar = avatar;
		this.view = view;
		this.numComment = numComment;
		this.numRate = numRate;
		this.cost = cost;
		this.describe = describe;
		this.startTime = startTime;
		this.endTime = endTime;
		this.idCalendar=idCalendar;
	}
	@Override
	public String toString() {
		return idCaregiver+"_"+ name+"_"+ avatar+"_"+ view+"_"+ numComment+"_"+ numRate+"_"+ cost+"_"+ describe+"_"+ startTime+"_"+ endTime+"_"+idCalendar;
	}
	
}
