package USERDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Stack;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.omg.CORBA.PUBLIC_MEMBER;

import com.sun.org.apache.bcel.internal.generic.RETURN;

import CompalinDao.complaindao;
import bean.User;
import bean.feedback;
import bean.maintanance;
import complainBean.complainbean;
import jdk.internal.dynalink.beans.StaticClass;
import util.util;

public class userdao {
	
	public static int insertuser(User u)
	{
		
		int status=0;	
		String sql="insert into user (fname,lname,email,pass,mobno,bn,flat,sq,ans) value (?,?,?,?,?,?,?,?,?)";
		System.out.println("in insertUSER dao");
		
		try {
			Connection con=util.getConnection();
			
	PreparedStatement ps=con.prepareStatement(sql);

		
		
	
			ps.setString(1,u.getFname() );
			ps.setString(2, u.getLname());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPass());
			ps.setString(5, u.getMobno());
			ps.setString(6,u.getBn() );
			ps.setString(7,u.getFlat());
			ps.setString(8,u.getSq());
			ps.setString(9, u.getAns());
			
		   // ps.setString(6, u.getUsertype());
			
			status=ps.executeUpdate();
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
return status;
	}

public static User checkuser(User u)
{
	
	System.out.println("in checkuserdao");
    String sql="select  * from user where email=?  and  pass=?";
	
	try {
		Connection con=util.getConnection();

	    PreparedStatement ps=con.prepareStatement(sql);

		ps.setString(1, u.getEmail());
		ps.setString(2, u.getPass());
		ResultSet rs =ps.executeQuery();
		if(rs.next()) {
			
			u.setUid(Integer.parseInt(rs.getString("uid")));
			u.setFname(rs.getString("fname"));
			u.setLname(rs.getString("lname"));
			u.setEmail(rs.getString("email"));
			u.setPass(rs.getString("pass"));
			u.setMobno(rs.getString("mobno"));
			u.setUsertype(rs.getString("usertype"));
			u.setBn(rs.getString("bn"));
			u.setFlat(rs.getString("flat"));
			
			u.setSq(rs.getString("sq"));
			u.setAns(rs.getString("ans"));
			
			
		}
		else {
			u=null;
			
		}
	}
		catch (Exception e) {
		e.printStackTrace();
	}

	return u;
	
}

public static User edit(int id) {
	
	
	System.out.println("in editdao");
	String sql1="select  * from user where uid=?";
	User u=null;

	try {
		Connection con=util.getConnection();
		
		PreparedStatement ps=con.prepareStatement(sql1);
			ps.setInt(1, id);		
	ResultSet rs =ps.executeQuery();
	if(rs.next()) {
	u=new User();
	u.setUid(Integer.parseInt(rs.getString("uid")));
	u.setFname(rs.getString("fname"));
	u.setLname(rs.getString("lname"));
	u.setEmail(rs.getString("email"));
	u.setPass(rs.getString("pass"));
	u.setMobno(rs.getString("mobno"));
	u.setUsertype(rs.getString("usertype"));
	u.setBn(rs.getString("bn"));
	u.setFlat(rs.getString("flat"));
	u.setSq(rs.getString("sq"));
	u.setAns(rs.getString("ans"));
	
	}


	else {
	u=null;

	}
	}


	catch (Exception e) {
	e.printStackTrace();
	}

	
	return u ;
}

public static int updateUSER(User u) {
	
	
	
	int status=0;	
	String sql="update user set fname = ? ,lname=?,email=?,pass=?,mobno=?,bn=?,flat=?,sq=?,ans=? where uid=?";
	System.out.println("in updateUSER dao");
	
	try {
		Connection con=util.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,u.getFname() );
		ps.setString(2, u.getLname());
		ps.setString(3, u.getEmail());
		ps.setString(4, u.getPass());
		ps.setString(5, u.getMobno());
		ps.setInt(6, u.getUid());
		ps.setString(7,u.getBn() );
		ps.setString(8,u.getFlat());
		ps.setString(9,u.getSq());
		ps.setString(10, u.getAns());
		
		
		
		
		status=ps.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	}
	return status;
	}

public static int feedback(feedback f) {
	
	int status=0;	
	String sql="insert into feedback (description,uid,fname,bn,flat) values (?,?,?,?,?)";
	System.out.println("in insertfeedback  complaindao");
	
	try {
		System.out.println("in try dao");
		Connection con=util.getConnection();
		
		PreparedStatement ps=con.prepareStatement(sql);

		System.out.println("in ps");
		ps.setString(1, f.getDescription());
	   ps.setInt(2, f.getUid());
	   ps.setString(3, f.getFname());
	   ps.setString(4, f.getBn());
	   ps.setString(5, f.getFlat());
			System.out.println("in dao id"+f.getUid());
			status=ps.executeUpdate();
				
		}
catch (Exception e) {
				e.printStackTrace();
			}

return status;
}





public static User forgotpassword(User u) {
	
	String sql="select* from user where email=? and sq=? and ans=?";
	System.out.println("in insertfeedback  complaindao");
	
	try {
		Connection con=util.getConnection();

	    PreparedStatement ps=con.prepareStatement(sql);

		ps.setString(1, u.getEmail());
ps.setString(2,u.getSq());
ps.setString(3,u.getAns());
		ResultSet rs =ps.executeQuery();
		if(rs.next()) {
			
			u.setEmail(rs.getString("email"));
			u.setSq(rs.getString("sq"));
			u.setAns(rs.getString("ans"));
			
			
		}
		else {
			u=null;
			
		}
	}
		catch (Exception e) {
		e.printStackTrace();
	}

	return u;
	
}

public static void changepassword(User u) {
	
	String sql="update user set pass=? where email=?and sq=? and ans=?";
	System.out.println("in changepassword dao");
	
	try {
		Connection con=util.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, u.getPass());
		ps.setString(2, u.getEmail());
		ps.setString(3,u.getSq());
		ps.setString(4, u.getAns());
		
		
		
		
		ps.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	}

	
	
}
	
	
	
}


	
	
	

