package dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.AssignedGramPanchayat;
import bean.BeanGramPanchayat;
import Utility.DBUtil;

public class AssignGramPanchayatDaoImpl implements AssignGramPanchayatDao {

	@Override
	public boolean assign(int projectid, int grampanchayatid) {
		boolean f=false;
		int i=0;
		
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("insert into gpproject(projectid,grampanchayatid) values(?,?)");
				PreparedStatement ps1=conn.prepareStatement("update project set status=? where id=?");
				
				ps.setInt(1, projectid);
				ps.setInt(2, grampanchayatid);
				
				ps1.setString(1, "ASSIGNED");
				ps1.setInt(2,projectid);
				
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
	public ArrayList<AssignedGramPanchayat> seeAllAssignedGramPanchayat() {
		ArrayList<AssignedGramPanchayat> alist=new ArrayList<AssignedGramPanchayat>();
		AssignedGramPanchayat obj1;
		Connection conn=DBUtil.getConnect();
		if(conn!=null)
		{
			try {
				PreparedStatement ps=conn.prepareStatement("select g.licence,g.name,g.vname,g.district,p.id,p.name,p.description,p.duration from registergp g,gpproject gp,project p where gp.grampanchayatid=g.licence and gp.projectid=p.id;");
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					
					int gid=rs.getInt(1);
					String gname=rs.getString(2);
					String gvname=rs.getString(3);
					String gdistrict=rs.getString(4);
					int pid=rs.getInt(5);
					String pname=rs.getString(6);
					String pdescription=rs.getString(7);
					String pduration=rs.getString(8);
					
					
					obj1=new AssignedGramPanchayat();
					obj1.setGid(gid);
					obj1.setGname(gname);
					obj1.setGvname(gvname);
					obj1.setGdistrict(gdistrict);
					obj1.setPid(pid);
					obj1.setPname(pname);
					obj1.setPdescription(pdescription);
					obj1.setPduration(pduration);
					
					
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
