<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

<%
    String driverName = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/practical";
    String userId = "root";
    String password = "root";
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="img/favicon-32x32.png"  />     
    <link rel="stylesheet" href="css/flight.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="//db.onlinewebfonts.com/c/9da41c570d5a221cb2486d78769a076d?family=Neue+Helvetica" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous">
    <title>Aero</title>
    <meta name="description" content="Semi-private jet flights to the world's most in-demand destinations.">
</head>
<body>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("userid") == null)
{
	response.sendRedirect("Admin_login.jsp?error=1");	
}
%>

    <nav>
        <a href="Admin_Dashboard.jsp">
        <img class="nav-logo" src="img/logo.png" alt="">
        </a>
        <div class="nav__menu">
            <h3><a href="Flight_table.jsp">Flights</a></h3>
            <h3><a href="Ticket_table.jsp">Tickets</a></h3>
            <h3><a href="Logout.jsp">Logout</a></h3>
        </div>
    </nav>
    <div class="heading">
        <h1>Flights</h1>
    </div>
    <div class="table">
<div class="fixTableHead">
	<table>
	<thead>
		<tr>
		<th>ID</th>
        <th>Flights ID</th>
        <th>Source</th>
        <th>Destination</th>
        <th>Day</th>
        <th>Price</th>
        <th>Departure Time</th>
        <th>Arrival Time</th>
        <th>Duration</th>
        <th>Departure Airport</th>
        <th>Arrival Airport</th>
		</tr>
	</thead>

	<tbody>
	 <%
                try{
                    connection = DriverManager.getConnection(connectionUrl, userId, password);
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM flight";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
        %>
	
		<tr>
            <td><%= resultSet.getInt("ID") %></td>
            <td><%= resultSet.getString("flight_id") %></td>
            <td><%= resultSet.getString("source") %></td>
            <td><%= resultSet.getString("destination") %></td>
            <td><%= resultSet.getString("days") %></td>
            <td><%= resultSet.getInt("price") %></td>
            <td><%= resultSet.getString("departure_time") %></td>
            <td><%= resultSet.getString("arrival_time") %></td>
            <td><%= resultSet.getString("duration") %></td>
            <td><%= resultSet.getString("source_airport") %></td>
            <td><%= resultSet.getString("destination_airport") %></td>
		</tr>
		
  <% 
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            
  %>
	</tbody>
		
	</table>
</div>
</div>
    </body>
</html>