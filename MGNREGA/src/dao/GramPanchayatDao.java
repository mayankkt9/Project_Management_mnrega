package dao;

import java.util.ArrayList;

import bean.BDOBean;
import bean.BeanGramPanchayat;

public interface GramPanchayatDao {
	
	public int insertgp(BeanGramPanchayat obj);
	public ArrayList<BeanGramPanchayat> seeAllGramPanchayat();
	public boolean  updateGramPanchayat(BeanGramPanchayat gp);
}
