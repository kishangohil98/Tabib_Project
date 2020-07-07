<%-- 
    Document   : bap_success
    Created on : Jun 27, 2020, 4:29:42 PM
    Author     : KISHAN
--%>

<%
if(session.getAttribute("uname")==null || session.getAttribute("uname")=="")
{
    response.sendRedirect("login.html");
}
else{
    String uname=(String)session.getAttribute("uname");
    
%>
    <!doctype html>
<html lang="en">

 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/style1.css"/>
        <link rel="stylesheet" type="text/css" href="css/style-register.css"/>

    
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.min.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.min.css" />
     <script defer src="/your-path-to-fontawesome/js/all.js"></script> <!--load all styles -->
    
     <script src="https://kit.fontawesome.com/9945596943.js"></script>
<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
    <title>Book Appointment</title>
   
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
          <a class="nav-link mx-3" href="communicate.jsp">Communicate</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3  active" href="#">Book Appointment</a>
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
      <!-- navigation bar End-->
 <!--content start -->
   
 <div class="contact_background pt-3 " style="height:80vh">
     <div style="padding: 12rem 4rem" class="mx-auto" >
         <h4 class=" h5" style="text-align: center">Greetings!! Your Blood donation appointment has been scheduled successfully</h4>
         <div class="mx-auto" style="display: flex">
         <a style="justify-content: center; align-items: center " class="mx-auto" href="index.jsp">Click here to Home page</a>
</div>
     </div>
            
   
          </div>
 
 
  <footer >
              <div class="row">
                  <div class="col-lg-3 col-md-6 col-12">
                      <ul class="mt-4">
                          <li><h5><u class="ud">Tabib</u></h5></li>
                          <li><a href="#" >Home</a></li>
                          <li><a href="#">About Us</a></li>
                          <li><a href="#">Health Care</a></li>
                          <li><a href="#">Services</a></li>
                      </ul>
                  </div>
                  <div class="col-lg-3 col-md-6 col-12">
                      <ul class="mt-4">
                          <li><h5><u class="ud">For Patients</u></h5></li>
                          <li><a href="#">Search for Doctors</a></li>
                          <li><a href="#">Search for Clinics</a></li>
                          <li><a href="#">Search for Hospitals</a></li>
                          <li><a href="#">Book Appointment</a></li>
                          
                      </ul>
                  </div>
                  <div class="col-lg-3 col-md-6 col-12">
                      <ul class="mt-4">
                          <li><h5><u class="ud">For Hospital</u></h5></li>
                          <li><a href="#">Record</a></li>
                          <li><a href="#">Doctor's Statement</a></li>
                          <li><a href="#">Lab Reports</a></li>
                          <li><a href="#">Payment History </a></li>
                      </ul>
                  </div>
                  <div class="col-lg-3 col-md-6 col-12">
                      <ul class="mt-4">
                          <li><h5><u class="ud">Contact Us</u></h5></li>
                          <li><a href="#">Mail</a></li>
                          <li><a href="#">Instagram</a></li>
                          <li><a href="#">Facebook</a></li>
                          <li><a href="#">LinkedIn</a></li>
                          <li><a href="#">Feedback</a></li>
                      </ul>
                  </div>
              </div><br>
              <div class="row">
                  <p class="copyright">Copyright &copy,Tabib .2019</p>
              </div>
          </footer>
 
      
     
      </div>
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