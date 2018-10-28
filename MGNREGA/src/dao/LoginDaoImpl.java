package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.BDOBean;
import bean.BeanGramPanchayat;
import Utility.DBUtil;
import bean.BDOBean;

public class LoginDaoImpl implements LoginDao {

	@Override
	public BDOBean validateUser(String username, String password) {
		
BDOBean bd=null;
		
		
		
		Connection conn=DBUtil.getConnect();
		if(conn != null){
			
			try {
				PreparedStatement ps=conn.prepareStatement("select * from registerbdo where email=? AND password=?");
				
				ps.setString(1, username);
				ps.setString(2, password);
				
				ResultSet rs=ps.executeQuery();
				
				if(rs.next()){
					
					
					String name=rs.getString(1);
					String mobile=rs.getString(2);
					String address=rs.getString(3);
					String email=rs.getString(4);
					String pass=rs.getString(5);
					int id=rs.getInt(6);
					
					bd=new BDOBean(id, name, address, mobile, email, pass);
					
				}
				
				
				
				
				
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		else
			System.out.println("Please check the connection....");
		
		
		
		
		return bd;
		
	}

	@Override
	public BeanGramPanchayat validateUserGP(String username, String password) {
		BeanGramPanchayat bean=null;
		Connection conn=DBUtil.getConnect();
		if(conn != null){
			
			try {
				PreparedStatement ps=conn.prepareStatement("select * from registergp where uname=? AND pass=?");
				
				ps.setString(1, username);
				ps.setString(2, password);
				
				ResultSet rs=ps.executeQuery();
				
				if(rs.next()){
					
					
					String name=rs.getString(1);
					String vname=rs.getString(2);
					String district=rs.getString(3);
					String state=rs.getString(4);
					String number=rs.getString(5);
					String uname=rs.getString(6);
					String pass=rs.getString(7);
					int id=rs.getInt(8);
					
					bean=new BeanGramPanchayat(name, vname, district, state, number, uname, pass, id);
					
				}
				
				
				
				
				
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		else
			System.out.println("Please check the connection....");
		
		
		
		
		return bean;
		
	}

}
