package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dao.BDODao;
import Utility.DBUtil;
import bean.BDOBean;

public class BDODaoImpl implements BDODao {

	@Override
	public int registerBDO(BDOBean bd) {
		
		int id=0;

		Connection conn=Utility.DBUtil.getConnect();
		if(conn != null){
			
			try {
				PreparedStatement ps=conn.prepareStatement("insert into registerbdo(name,address,mobile,email,password) values(?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
				ps.setString(1,bd.getName());
				ps.setString(2,bd.getMobile());
				ps.setString(3,bd.getAddress());
				ps.setString(4,bd.getEmail());
				ps.setString(5,bd.getPassword());
				
				int temp=ps.executeUpdate();
				
				if(temp>0){
					ResultSet rs=ps.getGeneratedKeys();
					if(rs.next())
					id=rs.getInt(1);
				
				}			
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
			
		}
		else
			System.out.println("pls check the connection..");
		
			
		
		return id;
	
	}

	@Override
	public boolean updateBDO(BDOBean bd) {
		boolean f=false;
		
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("update registerbdo set name=?,address=?,mobile=?,email=?,password=? where id=?");
				ps.setString(1, bd.getName());
				ps.setString(2, bd.getAddress());
				ps.setString(3, bd.getMobile());
				ps.setString(4, bd.getEmail());
				ps.setString(5, bd.getPassword());
				ps.setInt(6, bd.getId());
				
				int temp=ps.executeUpdate();
				if(temp>0)
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

}
