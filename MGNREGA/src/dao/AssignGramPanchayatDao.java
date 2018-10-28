package dao;

import java.util.ArrayList;

import bean.AssignedGramPanchayat;


public interface AssignGramPanchayatDao {
	
	public boolean assign(int projectid,int grampanchayatid);
	public ArrayList<AssignedGramPanchayat> seeAllAssignedGramPanchayat();
}
