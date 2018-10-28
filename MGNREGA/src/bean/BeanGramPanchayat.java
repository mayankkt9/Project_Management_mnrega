package bean;

import java.io.Serializable;

public class BeanGramPanchayat implements Serializable {
	
	private String name,vname,district,state,number,uname,pass;
	private int licence;
	
	public BeanGramPanchayat() {
		// TODO Auto-generated constructor stub
	}
	public BeanGramPanchayat(String name, String vname, String district, String state,
			String number, String uname, String pass,int licence) {
		super();
		this.name = name;
		this.vname = vname;
		this.district = district;
		this.state = state;
		this.number = number;
		this.uname = uname;
		this.pass = pass;
		this.licence=licence;
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
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getLicence() {
		return licence;
	}
	public void setLicence(int licence) {
		this.licence = licence;
	}
	

}
