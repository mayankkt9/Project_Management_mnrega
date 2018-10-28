package Utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static Connection conn=null;
	private DBUtil()
	{
		
	}
	public static Connection getConnect()
	{
		//Connection conn=null;
		if(conn==null)
		{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String cs="jdbc:mysql://127.0.0.1:3306/batch1";
		try {
			conn=DriverManager.getConnection(cs,"root","Mayank@1881");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		
		
		
		return conn;
	}
	
	public static void closeConnection(Connection conn)
	{
		if(conn!=null)
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
