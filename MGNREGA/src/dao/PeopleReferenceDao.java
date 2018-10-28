package dao;

import java.util.ArrayList;

import bean.AssignPeopleBean;
import bean.PeopleBean;

public interface PeopleReferenceDao {
	
	public ArrayList<PeopleBean> getDetails(int projectid);

}
