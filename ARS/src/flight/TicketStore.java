package flight;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TicketStore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String day = Search.day;
		String date = Search.date;
		String fname = Booking.passenger_Fname;
		String lname = Booking.passenger_Lname;
		String email = Booking.passenger_email;
		String source = Search.source;
		String source_air = Booking.source_airport;
		String departure_time = Booking.departure_time;
		String destination = Search.destination;
		String destination_air = Booking.destination_airport;
		String arrival_time = Booking.arrival_time;
		String flightid = Booking.flight_id;
		String duration = Booking.duration;
		int passengers = Search.persons;
	    int price= Search.persons * Booking.ticket_price;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practical", "root", "root");
			
			PreparedStatement ps = con.prepareStatement("insert into tickets(fname, lname, email, source, source_air, departure_time, destination, destination_air, arrival_time, flightid, duration, day, date, passengers, price) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, source);
			ps.setString(5, source_air);
			ps.setString(6, departure_time);
			ps.setString(7, destination);
			ps.setString(8, destination_air);
			ps.setString(9, arrival_time);
			ps.setString(10, flightid);
			ps.setString(11, duration);
			ps.setString(12, day);
			ps.setString(13, date);
			ps.setInt(14, passengers);
			ps.setInt(15, price);
			
			ps.executeUpdate();
			response.sendRedirect("Ticket_Summary.jsp");
		} catch(Exception e) {
			out.println("Error " + e.getMessage());
		}
		
	}
		
}