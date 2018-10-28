package bean;

import java.io.Serializable;

public class AssignGramPanchayatBean implements Serializable{

	private int gpprojectid,projectid,grampanchayatid;

	
	
	public AssignGramPanchayatBean() {
		super();
		// TODO Auto-generated constructor stub
	}



	public AssignGramPanchayatBean(int gpprojectid, int projectid,
			int grampanchayatid) {
		super();
		this.gpprojectid = gpprojectid;
		this.projectid = projectid;
		this.grampanchayatid = grampanchayatid;
	}



	public int getGpprojectid() {
		return gpprojectid;
	}



	public void setGpprojectid(int gpprojectid) {
		this.gpprojectid = gpprojectid;
	}



	public int getProjectid() {
		return projectid;
	}



	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}



	public int getGrampanchayatid() {
		return grampanchayatid;
	}



	public void setGrampanchayatid(int grampanchayatid) {
		this.grampanchayatid = grampanchayatid;
	}
	
	
	
	
	
}
