package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Utility.DBUtil;

public class AssignPeopleDaoImpl1 implements AssignPeopleDao1{

	@Override
	public boolean assign(int peopleid, int projectid) {
		boolean f=false;
		int i=0;
		
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("insert into peopleproject(peopleid,projectid) values(?,?)");
				PreparedStatement ps1=conn.prepareStatement("update registerpeople set assign=? where id=?");
				
				ps.setInt(1, peopleid);
				ps.setInt(2, projectid);
				
				ps1.setString(1, "ASSIGNED");
				ps1.setInt(2,peopleid);
				
				int temp=ps.executeUpdate();
				int temp1=ps1.executeUpdate();
				if(temp>0 && temp1>0)
				{
					f=true;
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
		
		
		
		
		return f;
	}

	@Override
	public boolean reduceCapacity(int projectid,int capacity) {
		boolean f=false;
		
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("update project set capacity=? where id=? ");
				ps.setInt(1, capacity-1);
				ps.setInt(2, projectid);
				
				int temp=ps.executeUpdate();
				if(temp>0)
					f=true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return f;
		
	}

}
