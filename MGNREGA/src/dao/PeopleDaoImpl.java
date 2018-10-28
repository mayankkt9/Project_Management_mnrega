package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Utility.DBUtil;
import bean.PeopleBean;
import bean.ProjectBean;

public class PeopleDaoImpl implements PeopleDao {

	@Override
	public boolean addpeople(PeopleBean bean) {
		boolean flag=false;
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("insert into registerpeople(name,vname,age,gender,caste,exp,assign) values(?,?,?,?,?,?,?)");
				
				ps.setString(1, bean.getName());
				ps.setString(2,bean.getVname());
				ps.setInt(3, bean.getAge());
				ps.setString(4, bean.getGender());
				ps.setString(5, bean.getCaste());
				ps.setString(6, bean.getExperience());
				ps.setString(7,"NOT ASSIGNED");
				int temp=ps.executeUpdate();
				if(temp>0)
				{
					flag=true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
			System.out.println("CHECK CONNECTION");
		
		
		
		
		return flag;
	}

	@Override
	public ArrayList<PeopleBean> seeAllPeople() {
		ArrayList<PeopleBean> alist=new ArrayList<PeopleBean>();
		PeopleBean obj1;
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("select * from registerpeople");
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					
					int id=rs.getInt(1);
					String name=rs.getString(2);
					String vname=rs.getString(3);
					int age=rs.getInt(4);
					String gender=rs.getString(5);
					String caste=rs.getString(6);
					String exp=rs.getString(7);
					String assign=rs.getString(8);
					
					obj1=new PeopleBean(name, vname, gender, caste, exp, assign,id,age);
					
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
