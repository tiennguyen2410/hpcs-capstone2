package model.BEAN;

public class Rate {
	private int star_1;
	private int star_2;
	private int star_3;
	private int star_4;
	private int star_5;
	public int getStar_1() {
		return star_1;
	}
	public void setStar_1(int star_1) {
		this.star_1 = star_1;
	}
	public int getStar_2() {
		return star_2;
	}
	public void setStar_2(int star_2) {
		this.star_2 = star_2;
	}
	public int getStar_3() {
		return star_3;
	}
	public void setStar_3(int star_3) {
		this.star_3 = star_3;
	}
	public int getStar_4() {
		return star_4;
	}
	public void setStar_4(int star_4) {
		this.star_4 = star_4;
	}
	public int getStar_5() {
		return star_5;
	}
	public void setStar_5(int star_5) {
		this.star_5 = star_5;
	}
	public Rate(int star_1, int star_2, int star_3, int star_4, int star_5) {
		super();
		this.star_1 = star_1;
		this.star_2 = star_2;
		this.star_3 = star_3;
		this.star_4 = star_4;
		this.star_5 = star_5;
	}
	public Rate() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "STAR_1 :" + star_1 +"\t\tSTAR_2 :" +star_2+"\t\tSTAR_3 :" +star_3+"\t\tSTAR_4 :" +star_4+"\t\tSTAR_5 :" +star_5;
	}
	public static void main(String[] args) {
		Rate r= new Rate();
		System.err.println(r.toString());
	}
	public void setRate(int star, int rate_number) {
		switch (star) {
		case 1:
			setStar_1(rate_number);
			break;
		case 2:
			setStar_2(rate_number);
			break;
		case 3:
			setStar_3(rate_number);
			break;
		case 4:
			setStar_4(rate_number);
			break;
		case 5:
			setStar_5(rate_number);
			break;
		}
	}
	
}
