package dao;

import bean.BDOBean;

public interface BDODao {
	
	public int registerBDO(BDOBean bd);
	public boolean  updateBDO(BDOBean bd);
}
