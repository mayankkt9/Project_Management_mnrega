package dao;

import java.util.ArrayList;

import bean.ProjectBean;

public interface ProjectDao {

	public int addproject(ProjectBean obj);
	public ArrayList<ProjectBean> seeAllProject();
}
