<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="img/favicon-32x32.png"  />     
    <link rel="stylesheet" href="css/search_page.css">
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
            <div class="main__ka__second__child">
                <form action="SearchServlet" method="post">
                  <fieldset>
             <legend class="one__way">One Way</legend>
                  <fieldset>
             <legend>From</legend>
                    <select id="source" name="source" required>
               <option value="" disabled selected>Origin</option>
              <option value="Ibiza">Ibiza</option>
              <option value="London">London</option>
              <option value="Nice">Nice</option>
              <option value="Aspen">Aspen</option>
              <option value="Moscow">Moscow</option>
            </select>
                      </fieldset>
                    
                <fieldset>
             <legend>To</legend>
                    <select id="destination" name="destination" required>
               <option value="" disabled selected>Destination</option>
               <option value="Ibiza">Ibiza</option>
               <option value="London">London</option>
               <option value="Nice">Nice</option>
               <option value="Aspen">Aspen</option>
               <option value="Moscow">Moscow</option>
            </select>
                    </fieldset>
                    
                    <fieldset>
             <legend class="date">Date</legend>
                    <input type="date" placeholder="" id="date" name="date" max="2021-09-30" min="2021-09-05" required>
               </fieldset>
                    
                            <fieldset>
             <legend>Passengers</legend>
                    <select id="person" name="person" required>
               <option value="" disabled selected>Adults</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>
                      </fieldset>
                    
            </fieldset>
                  <div class="form__submit">
                    
                    <span> <i class="fa fa-chevron-right"></i> </span>
               <input type="submit" value="Search Flight">
                  </div>   
                </form>
              </div>
        </div>
</body>
</html>