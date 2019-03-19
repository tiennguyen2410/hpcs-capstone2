package model.BEAN;

public class Calendar {
	private int id_calendar;
	private String startDate;
	private String finishDate;
	private String address;
	
	private double money;
	private double into_money;
	private double promotion;
	public Calendar(int id_calendar, String startDate, String finishDate, String address, int id_customer,
			int id_caregive, double money, double into_money, double promotion) {
		super();
		this.id_calendar = id_calendar;
		this.startDate = startDate;
		this.finishDate = finishDate;
		this.address = address;
		this.id_customer = id_customer;
		this.id_caregive = id_caregive;
		this.money = money;
		this.into_money = into_money;
		this.promotion = promotion;
	}
	@Override
	public String toString() {
		return  id_calendar+"\t"+ startDate+"\t"+ finishDate+"\t"+ address+"\t"+ id_customer+"\t"+ id_caregive+"\t"+ money+"\t"+ into_money+"\t"+ promotion+"\n";
		
	}
	private int id_customer;
	public int getId_customer() {
		return id_customer;
	}
	public void setId_customer(int id_customer) {
		this.id_customer = id_customer;
	}
	public int getId_caregive() {
		return id_caregive;
	}
	public void setId_caregive(int id_caregive) {
		this.id_caregive = id_caregive;
	}
	private int id_caregive;
	public int getId_calendar() {
		return id_calendar;
	}
	public void setId_calendar(int id_calendar) {
		this.id_calendar = id_calendar;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getFinishDate() {
		return finishDate;
	}
	public void setFinishDate(String finishDate) {
		this.finishDate = finishDate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public double getInto_money() {
		return into_money;
	}
	public void setInto_money(double into_money) {
		this.into_money = into_money;
	}
	public double getPromotion() {
		return promotion;
	}
	public void setPromotion(double promotion) {
		this.promotion = promotion;
	}
	
}
