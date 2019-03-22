package model.BEAN;

public class Education {
	private int id_education;
	private String name_Education;

	public String getName_Education() {
		return name_Education;
	}

	public int getId_education() {
		return id_education;
	}

	public void setId_education(int id_education) {
		this.id_education = id_education;
	}

	public void setName_Education(String name_Education) {
		this.name_Education = name_Education;
	}

	public Education(int id_education, String name_Education) {
		super();
		this.id_education = id_education;
		this.name_Education = name_Education;
	}

	public Education() {
		super();
		// TODO Auto-generated constructor stub
	}

	


	
	

}
