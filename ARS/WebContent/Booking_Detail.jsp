<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="flight.Booking" %>
 <%
    Booking.ticket_price = Integer.parseInt(request.getParameter("price"));
    Booking.flight_id = request.getParameter("f_id");
    Booking.departure_time = request.getParameter("d_time");
    Booking.arrival_time = request.getParameter("a_time");
    Booking.duration = request.getParameter("dur");
    Booking.source_airport = request.getParameter("a_air");
    Booking.destination_airport = request.getParameter("d_air");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="img/favicon-32x32.png"  />       
    <link rel="stylesheet" href="css/booking_detail.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="//db.onlinewebfonts.com/c/9da41c570d5a221cb2486d78769a076d?family=Neue+Helvetica" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous">
    <title>Aero</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
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
                <h1>Our LA routes are coming soon.</h1>
                </div>
            </div>
        </div>
        <div class="main__ka__second__child">
            <form action="Payment.jsp" method="post">
              <span> <a href="Search_Flight.jsp" style="color:black;"><i class="fas fa-arrow-left">
              </i></a> </span>
              <fieldset>
                <legend class="one__way">Personal Details</legend>
      
                <div class="input1">
                  <input type="text" id="Fname" name="fname" placeholder="First Name"  required>
                  <input type="text" id="Lname" name="lname" placeholder="Last Name"  required>
                </div>
                <div class="input2">
                  <div>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                  </div>
                  <div class="number">
                  <select id="code" name="code">
                   <option value="US">&#127482;&#127480;</option>
                   <option value="RU">&#127479;&#127482;</option>
                   <option value="EG">&#127466;&#127468;</option>
                   <option value="ZA">&#127487;&#127462;</option>
                   <option value="FR">&#127467;&#127479;</option>
                   <option value="ES">&#127466;&#127480;</option>
                   <option value="GB">&#127468;&#127463;</option>
                   <option value="GR">&#127468;&#127479;</option>
                   <option value="AU">&#127462;&#127482;</option>
                   <option value="CN">&#127464;&#127475;</option>
                   <option value="IN">&#x1f1ee;&#x1f1f3;</option>
                   <option value="AE">&#127462;&#127466;</option>
                   <option value="IT">&#127470;&#127481;</option>
                   <option value="JP">&#127471;&#127477;</option>
                   <option value="DK">&#127465;&#127472;</option>
                    </select>
                    <!-- <span>🇮🇳 +91</span> -->
                    <input type="text" id="number" name="number" maxlength="10" oninput="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="Phone Number" required >
                  </div>
      
                </div>
      
                <div class="news_letter">
                  <span>
                    Subscribe to newsletter
                  </span>
                  <div class="switch">
                    <input type="checkbox" id="checkbox1" required>
                  </div>
                </div>
      
                <div class="policy">
                  <p>
                    Your personal information is important to us. We will only use your contact information to notify you about flight updates and we never sell or share it with third parties for marketing purposes. See our <a href="404Page.jsp">Privacy Policy.</a>
                  </p>
                </div>
      
                <div class="form_submit">
      
                  <input type="submit" value="Proceed">
                  <span> <i class="fa fa-chevron-right"></i> </span>
                </div>
      
              </fieldset>
            </form>
          </div>
        </div>
</body>
</html>