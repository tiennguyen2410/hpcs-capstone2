package model.BEAN;

public class Account {
	private int id_Account;
	private String name;
	private String address;
	private String phone;
	private String avatar;
	private String gmail;
	private String password;
	private int id_type;
	private String birthday;
	public int getId_Account() {
		return id_Account;
	}
	public void setId_Account(int id_Account) {
		this.id_Account = id_Account;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getGmail() {
		return gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId_type() {
		return id_type;
	}
	public void setId_type(int id_type) {
		this.id_type = id_type;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public Account(int id_Account, String name, String address, String phone, String avatar, String gmail,
			String password, int id_type, String birthday) {
		super();
		this.id_Account = id_Account;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.avatar = avatar;
		this.gmail = gmail;
		this.password = password;
		this.id_type = id_type;
		this.birthday = birthday;
	}
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ID_Account :" +id_Account+"\t\tName :" +name+"\t\tAddress :" +address+"\t\tPhone:"+phone+"\t\tAvatar:"+avatar+"\t\tGmail:"+gmail+"\t\tPassword:"+password+"\t\tID_type:"+id_type+"\t\tBirthday:"+birthday+"\n\n";
	}
	
	public String abc() {
		return "ID_Account :\t" + id_Account;
	}
	
}
