package model.BEAN;

import model.BEAN.Account;

public class Caregiver extends Account{
	private double wallet;
	private double rate;
	private String name_education;
	private String academic_Level;
	private String describe;
	private String cmnd_Number;
	private String university;
	
	
	
	public double getWallet() {
		return wallet;
	}



	public void setWallet(double wallet) {
		this.wallet = wallet;
	}



	public double getRate() {
		return rate;
	}



	public void setRate(double rate) {
		this.rate = rate;
	}



	public String getName_education() {
		return name_education;
	}



	public void setName_education(String name_education) {
		this.name_education = name_education;
	}



	public String getAcademic_Level() {
		return academic_Level;
	}



	public void setAcademic_Level(String academic_Level) {
		this.academic_Level = academic_Level;
	}



	public String getDescribe() {
		return describe;
	}



	public void setDescribe(String describe) {
		this.describe = describe;
	}



	public String getCmnd_Number() {
		return cmnd_Number;
	}



	public void setCmnd_Number(String cmnd_Number) {
		this.cmnd_Number = cmnd_Number;
	}



	public String getUniversity() {
		return university;
	}



	public void setUniversity(String university) {
		this.university = university;
	}



	public Caregiver(int id_Account, String name, String address, String phone, String avatar, String gmail,
			String password, int id_type, String birthday, double wallet, double rate, String name_education,
			String academic_Level, String describe, String cmnd_Number, String university) {
		super(id_Account, name, address, phone, avatar, gmail, password, id_type, birthday);
		this.wallet = wallet;
		this.rate = rate;
		this.name_education = name_education;
		this.academic_Level = academic_Level;
		this.describe = describe;
		this.cmnd_Number = cmnd_Number;
		this.university = university;
	}



	public Caregiver() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Caregiver(int id_Account, String name, String address, String phone, String avatar, String gmail,
			String password, int id_type, String birthday) {
		super(id_Account, name, address, phone, avatar, gmail, password, id_type, birthday);
		// TODO Auto-generated constructor stub
	}



	@Override
	public String toString() {
		return super.toString()  +"\t\tWallet :" +wallet+"\t\tRate :" +rate+"\t\tName_Education:"+name_education+"\t\tAcademic_Level:"+academic_Level+"\t\tDescribe:"+describe+"\t\tCMND_Number:"+cmnd_Number+"\t\tUniversity:"+university+"\n\n";
	}
	
	
	
	
	
}
