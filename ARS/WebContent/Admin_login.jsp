<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="img/favicon-32x32.png"  />
    <link rel="stylesheet" href="css/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="//db.onlinewebfonts.com/c/9da41c570d5a221cb2486d78769a076d?family=Neue+Helvetica" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous">

    <title>Aero</title>
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
                <div class="admin_logo">
                    <img src="img/crowd.svg" alt="">
                </div>
                <div class="heading">
                    <h1>Admin Login</h1>
                </div>
            </div>
        </div>
            <div class="right_content">
<%
		if (request.getParameter("error") != null) 
			out.println("<b><span style='color:red; background-color:white'> Your Session has Expired or Invalid, Please Login Again!!!</span></b>");
%> 
              <form action="Login" method="post">
                  <input type="text" placeholder="Username" id="userid" name="userid" required>
                  <input type="password" placeholder="Password" id="password" name="password" required>
                  <div class="form_submit">
                    <input type="submit" value="Login">
                  </div>
              </form>
            </div>
    </div>
</body>
</html> 
