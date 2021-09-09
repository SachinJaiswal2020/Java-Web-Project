<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="flight.Search"%>
<%@page import="flight.Booking"%>

<%
	Booking.passenger_Fname = request.getParameter("fname");
	Booking.passenger_Lname = request.getParameter("lname");
	Booking.passenger_email = request.getParameter("email");
	Booking.passenger_code = request.getParameter("code");
	Booking.passenger_phone = request.getParameter("number");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="img/favicon-32x32.png"  />     
    <link rel="stylesheet" href="css/payment.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="//db.onlinewebfonts.com/c/9da41c570d5a221cb2486d78769a076d?family=Neue+Helvetica" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous">
    <title>Aero</title>
    <meta name="description" content="Semi-private jet flights to the world's most in-demand destinations.">
</head>
<body>

<div class="main">  
  <div class="left">
    <div class="logo">
    <a href="index.jsp">
                <img src="img/logo-2.svg" alt="">
                </a>
            </div>
    
  </div>
    <div class="right">
      <div class="form_container">
      <div class="heading">
        <span> <a href="Search_Flight.jsp" style="color:black;"><i class="fas fa-arrow-left">
              </i></a> </span>
          <h1>Payment Information</h1>
        </div>
     <form action="TicketStore" method="post">
       <div class="input1">
          <input type="text" id="Name_on_card" name="Name_on_card" placeholder="Name on Card" required>
         <div class="card">
            <input type="text" id="Number_on_card" name="Number_on_card" maxlength="16" oninput="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="Card Number" required >
           <span> <i class="fas fa-credit-card"></i></span>
         </div>
        </div>
        
        <div class="input2">
          <input type="text" id="expiration" name="Expiration" placeholder="Expiration" required maxlength="5">
            <input type="text" id="security" name="Security" placeholder="Security Code" required maxlength="3" oninput="this.value=this.value.replace(/[^0-9]/g,'');">
          <input type="text" id="postal" name="Postal" placeholder="Postal Code" required maxlength="6" oninput="this.value=this.value.replace(/[^0-9]/g,'');">
        </div>
        
        <div class="news_letter">
            <span>
                Save credit card in my profile
            </span>
            <div class="switch">
              <input type="checkbox" id="checkbox1">
            </div>
          </div>
        
        
        <div class="order_table">
          <div class="head">
            <h1 >Order Detail</h1>
          </div>

          <div class="first">
            <h3>Adult(<%=Search.persons%>)</h3>
            <h2><%=Search.persons%>× $<%=Booking.ticket_price%></h2>
            <!-- <h2>1<span>x</span> $2000</h2> -->

          </div>
          <div class="four">
            <h3>Taxes and Fees</h3>
            <h2>Included</h2>
          </div>
          <div class="second">
            <h3>Subtotal</h3>
            <h2>$<%=Booking.ticket_price * Search.persons%></h2>
          </div>
          <div class="third">
            <h3>Total</h3>
            <h2>$<%=Booking.ticket_price * Search.persons%></h2>
          </div>
        </div>
        
        <div class="para">
          <p class="para-1">By confirming this reservation, you are agreeing to accept the <span>Conditions of Carriage</span> as applicable to your flight(s). An email with the details of your reservation will be sent to your email address.</p>
          
          <p class="para-2">All flights are operated (i) in the EU by Aero Guernsey Ltd., a licensed and registered air carrier in Guernsey, and (ii) in North America by USAC Airways 695 LLC dba Aero Air, unless otherwise advised by Aero. Aero Technologies Inc. acts as ticketing agent for Aero Guernsey Ltd. and, in the US, as a charter operator and indirect air carrier under US-DOT Part 380.</p>
        </div>
        
        <div class="submit">
          <input type="submit" value="Confirm & Pay">
        </div>
        </form>
      </div>
  </div>
</div>

 </body>
</html>