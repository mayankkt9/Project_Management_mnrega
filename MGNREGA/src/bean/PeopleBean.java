package bean;

import java.io.Serializable;

public class PeopleBean implements Serializable {
	 
	private String name,vname,gender,caste,experience,assign;
	int id,age;
	public PeopleBean() {
		// TODO Auto-generated constructor stub
	}
	public PeopleBean(String name, String vname, String gender, String caste,
			String experience, String assign, int id, int age) {
		super();
		this.name = name;
		this.vname = vname;
		this.gender = gender;
		this.caste = caste;
		this.experience = experience;
		this.assign = assign;
		this.id = id;
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getAssign() {
		return assign;
	}
	public void setAssign(String assign) {
		this.assign = assign;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	

}
