package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Utility.DBUtil;
import bean.BeanGramPanchayat;
import bean.ProjectBean;

public class AssignPeopleDaoImpl implements AssignPeopleDao {

	@Override
	public ProjectBean getProjectName(BeanGramPanchayat bean) {
		ProjectBean pbean=null;
		int grampanchayatid=bean.getLicence();
		int projectid=0;
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("select projectid from gpproject where grampanchayatid=?");
				ps.setInt(1, grampanchayatid);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					projectid=rs.getInt(1);
				}
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(projectid!=0)
			{
				try {
					PreparedStatement ps1=conn.prepareStatement("select * from project where id=?");
					ps1.setInt(1, projectid);
					ResultSet rs1=ps1.executeQuery();
					if(rs1.next())
					{
						pbean=new ProjectBean();
						pbean.setId(rs1.getInt(1));
						pbean.setName(rs1.getString(2));
						pbean.setDuration(rs1.getString(3));
						pbean.setCapacity(rs1.getInt(4));
						pbean.setDescription(rs1.getString(5));
						pbean.setSdate(rs1.getString(6));
						pbean.setEdate(rs1.getString(7));
						pbean.setStatus(rs1.getString(8));
						
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
			}
			
			
			
			
			
			
			
		}
		
		
		
		return pbean;
	}

}
