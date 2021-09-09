package flight;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String userid = request.getParameter("userid");
				String password = request.getParameter("password");
				
				PrintWriter out = response.getWriter();
				out.print("<html><body>");
		try {
				
				if(userid.equals("ASAP") && password.equals("ASAP")) {
					HttpSession session = request.getSession();
					session.setAttribute("userid", userid);
		    		response.sendRedirect("Admin_Dashboard.jsp");		
		    }
		     out.print(" <center style='color:red; background-color:white; position: absolute; top: 500px; left: 790px;'><span  >Invalid credential!!</span></center>");		
	         RequestDispatcher rd = request.getRequestDispatcher("Admin_login.jsp");
	        rd.include(request, response);
	        
		}catch(Exception e) {
			e.printStackTrace();
		}
		      
		out.print("</body></html>");
	}
	
}
