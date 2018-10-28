package bean;

import java.io.Serializable;

public class ProjectBean implements Serializable {
	
	private int id,capacity;
	private String name,duration,description,sdate,edate,status;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public ProjectBean() {
		// TODO Auto-generated constructor stub
	}
	public ProjectBean(int id, int capacity, String name, String duration,
			String description, String sdate, String edate,String status) {
		super();
		this.id = id;
		this.capacity = capacity;
		this.name = name;
		this.duration = duration;
		this.description = description;
		this.sdate = sdate;
		this.edate = edate;
		this.status=status;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	

}
