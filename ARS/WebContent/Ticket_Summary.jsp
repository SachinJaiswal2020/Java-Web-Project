<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import="flight.Search" %>
    <%@page import="flight.Booking" %>
    
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="/img/favicon-32x32.png"  />     
    <link rel="stylesheet" href="css/ticket.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="//db.onlinewebfonts.com/c/9da41c570d5a221cb2486d78769a076d?family=Neue+Helvetica" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous">
    
    <title>Aero</title>
        <meta http-equiv="refresh" content="20; url=http://localhost:8080/ARS/index.jsp">
    <meta name="description" content="Semi-private jet flights to the world's most in-demand destinations.">
    
</head>
<body>
    <div class="main">
        <div class="navbar">
            <div class="logo">
            <a href="index.jsp">
                <img src="img/logo-2.svg" alt="">
                </a>
            </div>
            <div class="text">
                <div class="heading">
                <h1>Let's fly to <%=Search.destination%>!</h1>
                <img class="air" src="img/aircraft-fixed.svg" alt="">
                </div>
            </div>
            </div>
            <div class="right_content">
                <div class="right_content_main">
                    <div class="right_info right_content_first">
                        <h2>DEPARTURE</h2>
                        <h1><%=Search.day%> <%=Search.date%></h1>
                    </div>
                    <div class="right_info right_content_second">
                        <h2>NAME</h2>
                        <h1><%=Booking.passenger_Fname%> <%=Booking.passenger_Lname%></h1>
                        <h2 style="padding-top: 15px; line-height: 0.8;">EMAIL</h2>
                        <h1><%=Booking.passenger_email%></h1>
                    </div>
                    <div class="right_info right_content_third">
                        <div class="third_one">
                            <h1><%=Search.source%></h1>
                            <h1><%=Booking.departure_time%></h1>
                        </div>
                        <div class="third_two">
                            <h3><%=Booking.source_airport%></h3>
                            <span class="up"><i class="fas fa-arrow-up"></i></span>
                        </div>
                    </div>
                    <div class="right_info right_content_fourth">
                        <div class="third_one">
                            <h1><%=Search.destination%></h1>
                            <h1><%=Booking.arrival_time%></h1>
                        </div>
                        <div class="third_two">
                            <h3><%=Booking.destination_airport%></h3>
                            <span class="down"><i class="fas fa-arrow-up"></i></span>
                        </div>
                    </div>
                    <div class="right_info right_content_fifth">
                        <h2>FLIGHT</h2>
                        <h1><%=Booking.flight_id%></h1>
                        <h2 style="padding-top: 15px;">DURATION</h2>
                        <h1><%=Booking.duration%></h1>
                    </div>
                    <div class="form_submit">
                        <input type="submit" value="Print"  onclick="window.print()">
                        <span> <i class="fas fa-print"></i></span>
                      </div>
                </div>
            </div>
        </div>
    </body>
</html>
