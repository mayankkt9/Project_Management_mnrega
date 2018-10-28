package dao;

import java.util.ArrayList;

import bean.PeopleBean;

public interface PeopleDao {

	public boolean addpeople(PeopleBean bean);
	public ArrayList<PeopleBean> seeAllPeople();
}
