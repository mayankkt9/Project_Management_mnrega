package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.ws.rs.BeanParam;

import Utility.DBUtil;
import bean.BeanGramPanchayat;
import bean.ProjectBean;
import dao.GramPanchayatDao;

public class GramPanchayatDaoImpl implements GramPanchayatDao {

	@Override
	public int insertgp(BeanGramPanchayat obj) {
		int licence=0;
		Connection conn=DBUtil.getConnect();
		System.out.println("licence "+licence);
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("insert into registergp(name,vname,district,state,number,uname,pass) values(?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
				ps.setString(1,obj.getName());
				ps.setString(2,obj.getVname());
				ps.setString(3,obj.getDistrict());
				ps.setString(4,obj.getState());
				ps.setString(5,obj.getNumber());
				ps.setString(6,obj.getUname());
				ps.setString(7,obj.getPass());
				
				int temp=ps.executeUpdate();
				if(temp>0)
				{
				ResultSet rs=ps.getGeneratedKeys();
				if(rs.next())
					licence=rs.getInt(1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
			System.out.println("azxs");
		

		System.out.println("licence "+licence);
		
		
		return licence;
	}

	@Override
	public ArrayList<BeanGramPanchayat> seeAllGramPanchayat() {
		ArrayList<BeanGramPanchayat> alist=new ArrayList<BeanGramPanchayat>();
		BeanGramPanchayat obj1;
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("select * from registergp");
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					int id=rs.getInt(8);
					String name=rs.getString(1);
					String vname=rs.getString(2);
					String district=rs.getString(3);
					String state=rs.getString(4);
					String number=rs.getString(5);
					String uname=rs.getString(6);
					
					obj1=new BeanGramPanchayat();
					obj1.setName(name);
					obj1.setVname(vname);
					obj1.setDistrict(district);
					obj1.setState(state);
					obj1.setNumber(number);
					obj1.setUname(uname);
					obj1.setLicence(id);
					
					alist.add(obj1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		return alist;
	}

	@Override
	public boolean updateGramPanchayat(BeanGramPanchayat gp) {
		boolean f=false;
		Connection conn=DBUtil.getConnect();
		if(conn!=null){
			try {
				PreparedStatement ps=conn.prepareStatement("update registergp set name=?,vname=?,district=?,state=?,number=?,uname=?,pass=? where licence=?");
				ps.setString(1, gp.getName());
				ps.setString(2, gp.getVname());
				ps.setString(3, gp.getDistrict());
				ps.setString(4, gp.getState());
				ps.setString(5, gp.getNumber());
				ps.setString(6, gp.getUname());
				ps.setString(7, gp.getPass());
				ps.setInt(8, gp.getLicence());
				
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
