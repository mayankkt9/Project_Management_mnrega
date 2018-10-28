package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;





import Utility.DBUtil;
import bean.AssignPeopleBean;
import bean.PeopleBean;

public class PeopleReferenceDaoImpl implements PeopleReferenceDao {

	@Override
	public ArrayList<PeopleBean> getDetails(int projectid) {
		ArrayList<AssignPeopleBean> alist=new ArrayList<AssignPeopleBean>();
		ArrayList<PeopleBean> alist1=new ArrayList<PeopleBean>();
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("select * from peopleproject where projectid=?");
				ps.setInt(1, projectid);
				ResultSet rs=ps.executeQuery();
				
				while(rs.next())
				{
					AssignPeopleBean bean=new AssignPeopleBean();
					bean.setId(rs.getInt(1));
					bean.setPeopleid(rs.getInt(2));
					bean.setProjectid(rs.getInt(3));
					alist.add(bean);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		if(conn!=null)
		{
			
			for(AssignPeopleBean obj:alist)
			{
				PreparedStatement ps1;
				try {
					ps1 = conn.prepareStatement("select * from registerpeople where id=?");
					ps1.setInt(1, obj.getPeopleid());
					ResultSet rs1=ps1.executeQuery();
					
					if(rs1.next())
					{
						PeopleBean pbean=new PeopleBean();
						pbean.setId(rs1.getInt(1));
						pbean.setName(rs1.getString(2));
						pbean.setVname(rs1.getString(3));
						pbean.setAge(rs1.getInt(4));
						pbean.setGender(rs1.getString(5));
						pbean.setCaste(rs1.getString(6));
						pbean.setExperience(rs1.getString(7));
						pbean.setAssign(rs1.getString(8));
						alist1.add(pbean);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}
		
		
		
		return alist1;
	}

}
