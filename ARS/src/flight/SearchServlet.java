package flight;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Search.source = request.getParameter("source");
		Search.destination = request.getParameter("destination");
		Search.date  = request.getParameter("date");
		Search.persons = Integer.parseInt(request.getParameter("person"));
		
            Search.day = getDay(Search.date);
            response.sendRedirect("Search_Flight.jsp");
    }

		public String getDay(String Date) {
        LocalDate dt = LocalDate.parse(Date);
        return dt.getDayOfWeek().toString();
    }
}
