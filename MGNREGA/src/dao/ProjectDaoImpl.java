package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import bean.ProjectBean;
import Utility.DBUtil;

public class ProjectDaoImpl implements ProjectDao {

	@Override
	public int addproject(ProjectBean obj) {
		
		int id=0;
		
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("insert into project(name,duration,capacity,description,sdate,edate,status) values(?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
				ps.setString(1, obj.getName());
				ps.setString(2, obj.getDuration());
				ps.setInt(3, obj.getCapacity());
				ps.setString(4, obj.getDescription());
				ps.setString(5, obj.getSdate());
				ps.setString(6, obj.getEdate());
				ps.setString(7,"NOT ASSIGNED");
				
				int temp=ps.executeUpdate();
				if(temp>0)
				{
					ResultSet rs=ps.getGeneratedKeys();
					if(rs.next())
					{
						id=rs.getInt(1);
					}
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		
		
		return id;
	}

	@Override
	public ArrayList<ProjectBean> seeAllProject() {
		ArrayList<ProjectBean> alist=new ArrayList<ProjectBean>();
		ProjectBean obj1;
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("select * from project");
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					int id=rs.getInt(1);
					String name=rs.getString(2);
					String duration=rs.getString(3);
					int capacity=rs.getInt(4);
					String description=rs.getString(5);
					String sdate=rs.getString(6);
					String edate=rs.getString(7);
					String status=rs.getString(8);
					
					obj1=new ProjectBean();
					obj1.setId(id);
					obj1.setName(name);
					obj1.setDuration(duration);
					obj1.setCapacity(capacity);
					obj1.setDescription(description);
					obj1.setSdate(sdate);
					obj1.setEdate(edate);
					obj1.setStatus(status);
					
					alist.add(obj1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		return alist;
	}

	
}
