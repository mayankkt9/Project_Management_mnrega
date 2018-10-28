package dao;

import bean.BDOBean;
import bean.BeanGramPanchayat;

public interface LoginDao {

	public BDOBean validateUser(String username,String password);
	public BeanGramPanchayat validateUserGP(String username,String password);
}
