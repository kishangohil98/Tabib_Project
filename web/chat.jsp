<%-- 
    Document   : chat
    Created on : Oct 5, 2019, 12:28:53 PM
    Author     : KISHAN
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(session.getAttribute("uname")==null || session.getAttribute("uname")=="")
{
    response.sendRedirect("login.html");
}
else{
            String uname=(String)session.getAttribute("uname");
            String with=(String)session.getAttribute("with");
            System.out.println("chat called");
            String doctor_name= (String)session.getAttribute("doctor_name");
            
%>
<html lang="en">

 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/style1.css"/>
    
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.min.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.min.css" />
     <script defer src="/your-path-to-fontawesome/js/all.js"></script> <!--load all styles -->
    
     <script src="https://kit.fontawesome.com/9945596943.js"></script>
<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
    <title>Communication</title>
   
  </head>
  <body>
      <!-- navigation bar start-->
      <div class="">
          <div class="sticky-top">
          <nav class="navbar navbar-expand-lg navbar-light bg-white">
              <a class="navbar-brand" href="#">
                  <img class="logo" src="images/logo7.png" alt="logo">
              </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
          <a class="nav-link mx-3" href="index.jsp">Home</a>
          </li>
      <li class="nav-item">
          <a class="nav-link mx-3" href="about_us.jsp">About Us</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3 active" href="communicate.jsp">Communicate</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3" href="book_appointment_redirect">Book Appointment</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3" href="donateblood.jsp">Donate Blood</a>
      </li>
      
     
    </ul>
      <ul class="navbar-nav mr-4">
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle logout_btn" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <%=uname%>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="profiledata">My Profile</a>
            <a class="dropdown-item" href="logout">Log out</a>
        </div>
      </li>  
      </ul>
      
  </div>
</nav>
          </div>
      </div>
        <!-- navbar end -->
        <div class="contact_background pt-3">
        <div class="row">
            <h4 class="m-auto h5">You are Talking to <b><%=doctor_name%></b>!!</h4>
        </div>
        <div class="row mt-2">
            <h6 class="h6 text-muted m-auto pb-3">Discribe your diseases or sickness to doctor with corresponding time to diagnosis and for the ease of Doctor!! </h6>
        </div>
        </div>
        <!-- chat frame-->
        
        <script>
            function typing(){
                document.getElementById("status").innerHTML="<font color='green'>typing...</font>";
            }
        </script>
    <center>
        <%
            
            char s=34;
            out.println("On Going Chat of: <font color='green'>"+uname+"</font> and "+with);
        %>
        <br><iframe  src="showC.jsp" width="500" height="475"></iframe><br>
        <form action="addmsg.jsp">
            <input type="text" name="msg" size="30" onkeyup="typing();" placeholder="Enter Your Message Here!" /><input type="submit" value="SEND" />
            <p id="status"></p>
        </form>
    </center>
        
          <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
  </body>
</html>
<%
}
%>