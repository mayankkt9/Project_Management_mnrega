package bean;

import java.io.Serializable;

public class AssignedGramPanchayat implements Serializable {

	private int pid,gid;
	private String pname,pdescription,pduration,gname,gvname,gdistrict;
	
	
	public AssignedGramPanchayat() {
		// TODO Auto-generated constructor stub
	}


	public AssignedGramPanchayat(int pid, int gid, String pname,
			String pdescription, String pduration, String gname, String gvname,
			String gdistrict) {
		super();
		this.pid = pid;
		this.gid = gid;
		this.pname = pname;
		this.pdescription = pdescription;
		this.pduration = pduration;
		this.gname = gname;
		this.gvname = gvname;
		this.gdistrict = gdistrict;
	}


	public int getPid() {
		return pid;
	}


	public void setPid(int pid) {
		this.pid = pid;
	}


	public int getGid() {
		return gid;
	}


	public void setGid(int gid) {
		this.gid = gid;
	}


	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}


	public String getPdescription() {
		return pdescription;
	}


	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}


	public String getPduration() {
		return pduration;
	}


	public void setPduration(String pduration) {
		this.pduration = pduration;
	}


	public String getGname() {
		return gname;
	}


	public void setGname(String gname) {
		this.gname = gname;
	}


	public String getGvname() {
		return gvname;
	}


	public void setGvname(String gvname) {
		this.gvname = gvname;
	}


	public String getGdistrict() {
		return gdistrict;
	}


	public void setGdistrict(String gdistrict) {
		this.gdistrict = gdistrict;
	}
	
	
}
