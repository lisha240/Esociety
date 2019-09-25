package CompalinDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sun.jndi.cosnaming.CNNameParser;

import complainBean.complainbean;
import util.util;

public class complaindao{
	public static int insertcomplain(complainbean c) {
		
		int status=0;	
		String sql="insert into complain (service,description,time,date,uid,bn,flat) values (?,?,?,?,?,?,?)";
		System.out.println("in insertUSER  complaindao");
		
		try {
			System.out.println("intry dao");
			Connection con=util.getConnection();
	
			PreparedStatement ps=con.prepareStatement(sql);

			System.out.println("in ps");
				ps.setString(1,c.getService());
				ps.setString(2,c.getDescription());
				ps.setString(3,c.getTime());
				ps.setString(4,c.getDate());
				ps.setInt(5, c.getUid());
				System.out.println("in dao id"+c.getUid());
				ps.setString(6, c.getBn());
				ps.setString(7,c.getFlat());
				//ps.setString(8,c.getStatus());
				status=ps.executeUpdate();
					
			}
	catch (Exception e) {
					e.printStackTrace();
				}
		return status;
					
	}
		
	

	public static  ArrayList<complainbean>getall(int id)
	{
		System.out.println("in complain complaindao");
		ArrayList<complainbean> c1=new ArrayList<>();
	
		
		Connection con=util.getConnection();
		String sql="select * from complain where uid=?";
		
		try {
			PreparedStatement ps= con.prepareStatement(sql);
			
			
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				
				complainbean c=new complainbean();
				c.setService(rs.getString("service"));
				c.setDescription(rs.getString("description"));
				c.setTime(rs.getString("time"));
				c.setDate(rs.getString("date"));
				c.setBn(rs.getString("bn"));
				System.out.println("bn"+rs.getString("bn"));
				c.setFlat(rs.getString("flat"));
				c.setStatus(rs.getString("status"));
				System.out.println("status"+rs.getString("status"));
				c1.add(c);
				
			}
			
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		
		
		return c1;
		
		
		
	}		
	
}	
	
		
		
		

	
		
		
		
		
		
		
		
		
		




