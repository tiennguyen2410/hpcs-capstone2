package model.BEAN;

public class Comment {
	private String avatar_c;
	private String name_c;
	private String date_c;
	private int star_c;
	private String comment_c;
	private int id_customer;
	public int getId_customer() {
		return id_customer;
	}
	public void setId_customer(int id_customer) {
		this.id_customer = id_customer;
	}
	public String getAvatar_c() {
		return avatar_c;
	}
	public void setAvatar_c(String avatar_c) {
		this.avatar_c = avatar_c;
	}
	public String getName_c() {
		return name_c;
	}
	public void setName_c(String name_c) {
		this.name_c = name_c;
	}
	public String getDate_c() {
		return date_c;
	}
	public void setDate_c(String date_c) {
		this.date_c = date_c;
	}
	public int getStar_c() {
		return star_c;
	}
	public void setStar_c(int star_c) {
		this.star_c = star_c;
	}
	public String getComment_c() {
		return comment_c;
	}
	public void setComment_c(String comment_c) {
		this.comment_c = comment_c;
	}
	
	public Comment(String avatar_c, String name_c, String date_c, int star_c, String comment_c, int id_customer) {
		super();
		this.avatar_c = avatar_c;
		this.name_c = name_c;
		this.date_c = date_c;
		this.star_c = star_c;
		this.comment_c = comment_c;
		this.id_customer = id_customer;
	}
	
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "AVATAR : " + avatar_c + "\t\tName :" + name_c + "\t\tDATE : " + date_c +  "\t\tSTAR :" + star_c + "\t\tID_CUSTOMER : " + comment_c + "\t\tCOMMENT : " + id_customer;
	}
	public static void main(String[] args) {
		Comment cm = new Comment();
		System.err.println(cm.toString());
	}
	
}
