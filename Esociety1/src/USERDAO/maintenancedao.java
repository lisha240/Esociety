package USERDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.User;
import bean.maintanance;
import util.util;

public class maintenancedao {
	
	public static maintanance maintanance() throws Exception {
		
		maintanance m=new maintanance();
		Connection con=util.getConnection();
		String sql="select * from maintanance";
		
		PreparedStatement ps=con.prepareStatement(sql);
      ResultSet rs=ps.executeQuery();
      while(rs.next())
      {
    	  m.setMaintanance(rs.getString("maintanance"));
      }
		return m;
		
		
		
	}
	
	
	public static void payment(User u) throws Exception
	{
		Connection con=util.getConnection();
		String sql="update user set payment='done' where uid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, u.getUid());
		ps.executeUpdate();
		
	}
	
	
		  
		                 
		    


}
