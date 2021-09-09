<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="img/favicon-32x32.png"  />
    <link rel="stylesheet" href="css/admin_dashboard.css">
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
        <a href="index.jsp">
        <img class="nav-logo" src="img/logo.png" alt="">
        </a>
        <div class="nav__menu">
            <h3><a href="Flight_table.jsp">Flights</a></h3>
            <h3><a href="Ticket_table.jsp">Tickets</a></h3>
            <h3><a href="Logout.jsp">Logout</a></h3>
        </div>
    </nav>
    <div class="hero">
        <div class="hero_left">
            <div class="heading">
                <h1>Welcome,</h1>
                <h1><%= session.getAttribute("userid") %></h1>
            </div>
            <div class="button">
                <a href="Flight_table.jsp" target="_blank">Flights<span class="icon"><i class="fas fa-chevron-right icon"></i></span></a>
                <a href="Ticket_table.jsp" target="_blank">Tickets<span class="icon"><i class="fas fa-chevron-right icon"></i></span></a>
            </div>
        </div>
        <div class="hero_right">
            <div class="admin">
                <img src="img/crowd-2.svg" alt="">
            </div>
        </div>
    </div>
</body>
</html>