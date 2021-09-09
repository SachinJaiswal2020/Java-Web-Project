<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="img/favicon-32x32.png"  />     
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="//db.onlinewebfonts.com/c/9da41c570d5a221cb2486d78769a076d?family=Neue+Helvetica" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous">
    
    <title>Aero</title>
        <meta http-equiv="refresh" content="10; url=http://localhost:8080/ARS/index.jsp">
    <meta name="description" content="Semi-private jet flights to the world's most in-demand destinations.">
    <style>
        body{
            height: 100vh;
            width: 100vw;
            background-color: #f5f7f9;
            overflow: hidden;
        }
        img{
            height: 100%;
            width: 100%;
            object-fit: contain;
        }
        .link{
            position: absolute;
            top: 88%;
            left: 47%;
        }
        .link a:hover{
            text-decoration: underline;
            text-decoration-color: #76e2c2;
        }
        .link a{
            text-decoration: none;
            color: #253745;
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
            font-size: 20px; 
            transition: 0.3s all ease-in-out;           
        }
        .link a span{
            font-size: 15px;
        }
    </style>
</head>
<body>
    <div class="link">
        <a href="index.jsp">Go back <span><i class="fas fa-chevron-right"></i></span></a>
        </div>  
    <img src="img/error.png" alt="">    
</body>
</html>