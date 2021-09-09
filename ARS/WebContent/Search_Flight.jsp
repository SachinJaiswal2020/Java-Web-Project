<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="flight.Search" %>
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
    ResultSet resultset = null;
    %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="img/favicon-32x32.png"  />     
    <link rel="stylesheet" href="css/search_flight.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="//db.onlinewebfonts.com/c/9da41c570d5a221cb2486d78769a076d?family=Neue+Helvetica" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous">
    
    <title>Aero</title>
    <meta name="description" content="Semi-private jet flights to the world's most in-demand destinations.">
</head>
<body>
<%if(Search.source.equals(Search.destination)){ %>
        <div class="main">
        <div class="navbar">
            <div class="logo">
                <img src="img/logo-2.svg" alt="">
            </div>
            <div class="text">
                <div class="heading">
                <h1>Let's go places, together.</h1>
                </div>
                <div class="text__container">
                <div class="seats">
                    <img class="nav__logo" src="img/seat.svg" alt="">
                    <p>All first-class seats with window and aisle access</p>
                </div>
                <div class="cancel">
                    <img class="nav__logo" src="img/cancellation.svg" alt="">
                    <p>Change or cancel your trip up to 48 hours before departure</p>
                </div>
            </div>
            </div>
        </div>
            <div class="right_content">
              <div class="icon">
                <span><i class="fas fa-map-marked-alt"></i></span>
              </div>
              <div class="text_2">
                <h1>Sorry, please select a another destination.</h1>
              </div>
              <div class="link">
                <a href="Search_Page.jsp">Go back <span><i class="fas fa-chevron-right"></i></span></a>
                </div>  
            </div>
    </div>
        
        <%} else { %>
  <div class="main">
        <div class="navbar">
            <div class="logo">
            <a href="index.jsp">
                <img src="img/logo-2.svg" alt="">
                </a>
            </div>
            <div class="text">
                <div class="heading">
                <h1>Let's go <%=Search.destination%>, together.</h1>
                </div>
                <div class="text__container">
                <div class="seats">
                    <img class="nav__logo" src="img/seat.svg" alt="">
                    <p>All first-class seats with window and aisle access</p>
                </div>
                <div class="cancel">
                    <img class="nav__logo" src="img/cancellation.svg" alt="">
                    <p>Change or cancel your trip up to 48 hours before departure</p>
                </div>
            </div>
            </div>
        </div>



        <div class="main__ka__second__child">
            <div class="form">
              <fieldset>
              
                <legend class="one__way">Departure</legend>
                <%
            try{
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                statement=connection.createStatement();
                String query = "select * from flight where source='"+Search.source+"' AND destination='"+Search.destination+"' AND days='"+Search.day+"'";
                resultset = statement.executeQuery(query);
                while(resultset.next()){
        %>
                <div class="flight">
                 <div class="first">
                   <h1><span><%=Search.date%></span></h1>
                   <h3>$<%= resultset.getInt("price") %></h3>
                 </div>
                 <div class="second">
                 	<h2><%= resultset.getString("days") %></h2>
                   <h5><%= resultset.getString("departure_time") %></h5>
                 </div>
                </div>
      

      		<form action="Booking_Detail.jsp" method="post">
    	<input type="hidden" id="price" name="price" value="<%= resultset.getInt("price") %>">
    	<input type="hidden" id="flight_id" name="f_id" value="<%= resultset.getString("flight_id") %>">
    	    	<input type="hidden" id="departure_time" name="d_time" value="<%= resultset.getString("departure_time") %>">
    	    	<input type="hidden" id="arrival_time" name="a_time" value="<%= resultset.getString("arrival_time") %>">
    	    	<input type="hidden" id="duration" name="dur" value="<%= resultset.getString("duration") %>">
    	    	<input type="hidden" id="source_airport" name="a_air" value="<%= resultset.getString("source_airport") %>">
    	    	<input type="hidden" id="destination_airport" name="d_air" value="<%= resultset.getString("destination_airport") %>">
    	
                <div class="form_submit">
                  <input type="submit" value="Proceed">
                  <span><i class="fa fa-chevron-right"></i></span>
                </div>
              </form>
               <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <%} %>
           </fieldset>
            </div>
          </div>
       
        </div>
</body>
</html>