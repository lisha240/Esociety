package complainController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CompalinDao.complaindao;
import USERDAO.userdao;
import bean.User;
import complainBean.complainbean;
@WebServlet("/complaincontroller")
public class complaincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public complaincontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	
		protected void insertcomplain(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			int status=0;
			System.out.println("in insertUser in controller");
		
			 complainbean c = new  complainbean();
		
			 c.setService(request.getParameter("service"));
			 c.setDescription(request.getParameter("description"));
			 c.setTime(request.getParameter("time"));
			 c.setDate(request.getParameter("date"));
			c.setUid(Integer.parseInt(request.getParameter("uid")));
			c.setBn(request.getParameter("bn"));
			c.setFlat(request.getParameter("flat"));
			c.setStatus(request.getParameter("status"));
			System.out.println("flat"+request.getParameter("flat"));
	
			
			status=	complaindao.insertcomplain(c);
			

		
			System.out.println("2nd time in controller" );
			if(status>0) {
				System.out.println("Data inserted Successfully");
				response.sendRedirect("allComplain.jsp");
			}
			
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
String action=request.getParameter("action");
		
		System.out.println(action);
		
		if(action.equalsIgnoreCase("send")) {
			 
			System.out.println(" in action send");
			
			insertcomplain(request, response);
		}
	
	
	
	
	
	}

}
