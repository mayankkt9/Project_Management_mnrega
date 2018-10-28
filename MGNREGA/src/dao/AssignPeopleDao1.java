package dao;

public interface AssignPeopleDao1 {

	public boolean assign(int peopleid,int projectid);
	public boolean reduceCapacity(int projectid,int capacity);
}
