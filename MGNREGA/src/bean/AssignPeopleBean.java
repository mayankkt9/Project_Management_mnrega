package bean;

import java.io.Serializable;

public class AssignPeopleBean implements Serializable {
	
	private int id,peopleid,projectid;
	
	public AssignPeopleBean() {
		// TODO Auto-generated constructor stub
	}

	public AssignPeopleBean(int id, int peopleid, int projectid) {
		super();
		this.id = id;
		this.peopleid = peopleid;
		this.projectid = projectid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPeopleid() {
		return peopleid;
	}

	public void setPeopleid(int peopleid) {
		this.peopleid = peopleid;
	}

	public int getProjectid() {
		return projectid;
	}

	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	

}
