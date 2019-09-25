package USERCONTROLLER;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.fabric.Response;

import CompalinDao.complaindao;
import USERDAO.userdao;
import bean.User;
import complainBean.complainbean;



@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();
      }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	
	protected void insertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int status=0;
		System.out.println("in insertUser in controller");
	
		 User u = new  User();
	
		u.setFname(request.getParameter("fname"));
		u.setLname(request.getParameter("lname"));
		u.setEmail(request.getParameter("email"));
		u.setPass(request.getParameter("pass"));
		u.setMobno(request.getParameter("mobno"));
		u.setFlat(request.getParameter("flat"));
		u.setBn(request.getParameter("bn"));
		u.setSq(request.getParameter("sq"));
		u.setAns(request.getParameter("ans"));
		//u.setUsertype(request.getParameter("usertype"));
		
		
		
 status=userdao.insertuser(u);

	
		
		if(status>0) {
			request.getRequestDispatcher("index.jsp").forward(request, response);

			System.out.println("Data inserted Successfully");
		}
	}

protected void checkuser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("in checkUser in controller");
		
		 User u = new  User();
		u.setEmail(request.getParameter("email"));
		u.setPass(request.getParameter("pass"));
		u=userdao.checkuser(u);
		
		if(u!=null)
		{
			System.out.println("in if");
			if(u.getUsertype().equalsIgnoreCase("user")) {
				
				
				HttpSession session=request.getSession();
				
				session.setAttribute("user", u);
				request.getRequestDispatcher("profile.jsp").forward(request, response);
				}
			else
			{
				request.setAttribute("user", u);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
}

	/*//    for logout	
		if(u!=null) {
			if(u.getUtype().equalsIgnoreCase("user")) {
				HttpSession session=request.getSession();
				session.setAttribute("user", u);
				response.sendRedirect("WelcomeUSER.jsp");
			}
		}else {
			request.setAttribute("err", "INVALID USER");
			request.getRequestDispatcher("login.jsp").forward(request, response);			
			//response.sendRedirect("Error.jsp");
		}
	}

		//
		
	
		if(u!=null) {
			if(u.getUtype().equalsIgnoreCase("user")) {
				request.setAttribute("user", u);
				request.getRequestDispatcher("WelcomeUSER.jsp").forward(request, response);
			}else {
				getAll(request, response);
				//response.sendRedirect("WelcomeAdmin.jsp");
			}
		}
	}
	

*/	
	
protected void edituser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println(request.getParameter("uid"));
	int id=(Integer.parseInt(request.getParameter("uid")));
	User u = new User();
	u=userdao.edit(id);
	request.setAttribute("user", u);
	request.getRequestDispatcher("Update.jsp").forward(request, response);
}

protected void updateuser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	int status=0;
User u = new User();

	System.out.println(request.getParameter("fname"));
	u.setFname(request.getParameter("fname"));
	u.setLname(request.getParameter("lname"));
	u.setEmail(request.getParameter("email"));
	u.setPass(request.getParameter("pass"));
	u.setMobno(request.getParameter("mobno"));
	u.setUid(Integer.parseInt(request.getParameter("uid")));
	u.setFlat(request.getParameter("flat"));
	u.setBn(request.getParameter("bn"));
	u.setSq(request.getParameter("sq"));
	u.setAns(request.getParameter("ans"));

	
	
	
	status=userdao.updateUSER(u);
	HttpSession session=request.getSession();
	session.setAttribute("user", u);
	response.sendRedirect("profile.jsp");
}	
	/*if(status>0) {
		
	
		System.out.println("Data Updated Successfully");
	}*/

protected void feedback(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int status=0;
	System.out.println("in feedback in controller");

	 bean.feedback f = new  bean.feedback();
      f.setDescription(request.getParameter("description"));
	f.setUid(Integer.parseInt(request.getParameter("uid")));
	f.setFname(request.getParameter("fname"));
	f.setBn(request.getParameter("bn"));
	f.setFlat(request.getParameter("flat"));

	
	status=	userdao.feedback(f);
	


	System.out.println("2nd time in controller" );
	if(status>0) {
		System.out.println("Data inserted Successfully");
		response.sendRedirect("profile.jsp");
	}
	
}

protected void forgot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int status=0;
	System.out.println("in forgot in controller");

	User u=new User();
	u.setEmail(request.getParameter("email"));
	u.setSq(request.getParameter("sq"));
	u.setAns(request.getParameter("ans"));
	
	
	
u=	userdao.forgotpassword(u);
 if(u!=null)
 {
	 request.setAttribute("user", u);
	 
	 request.getRequestDispatcher("pass.jsp").forward(request, response);
}else {
	
	request.setAttribute("err","invalid email or question");
	request.getRequestDispatcher("forgot.jsp").forward(request, response);
}
	
}




protected void changepassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
User u = new User();

	u.setEmail(request.getParameter("email"));
	u.setPass(request.getParameter("pass2"));
	u.setSq(request.getParameter("sq"));
	u.setAns(request.getParameter("ans"));

	
	
	
	userdao.changepassword(u);
	response.sendRedirect("login.jsp");
	}	




protected void payuser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.sendRedirect("payment.jsp");;
	
	}	
















	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
		
		System.out.println(action);
		
		if(action.equalsIgnoreCase("submit")) {
			 
			System.out.println(" in action submit");
			
			insertUser(request, response);
		}
	
		if(action.equalsIgnoreCase("login")) {
			 
			System.out.println(" in action login");
			
			checkuser(request, response);
		}
	
	
	if(action.equalsIgnoreCase("Edit")) {
			 
			System.out.println(" in action edit");
			
			edituser(request, response);
		}
	
	
	if(action.equalsIgnoreCase("update")) {
		 
		System.out.println(" in action update");
		
		updateuser(request, response);
	}


	if(action.equalsIgnoreCase("feedback")) {
		 
		System.out.println(" in action feedback");
		
		feedback(request, response);
	}

		

	if(action.equalsIgnoreCase("forgot")) {
		 
		System.out.println(" in action forgot");
		
		forgot(request, response);
	}

	

if(action.equalsIgnoreCase("change")) {
	 
	System.out.println(" in action forgot");
	
	changepassword(request, response);
}
if(action.equalsIgnoreCase("pay")) {
	 
	System.out.println(" in action edit");
	
	payuser(request, response);
}



	
	}

}

