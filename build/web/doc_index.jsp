
<%
if(session.getAttribute("uname")==null || session.getAttribute("uname")=="")
{
    response.sendRedirect("login.html");
}
else{
    String uname=(String)session.getAttribute("uname");
    String doc_name=(String)session.getAttribute("doc_name");
    response.setHeader("Cache-Control", "no-cahe,no-store,must-revalidate");
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
    
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.min.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.min.css" />
     <script defer src="/your-path-to-fontawesome/js/all.js"></script> <!--load all styles -->
    
     <script src="https://kit.fontawesome.com/9945596943.js"></script>
<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
    <title>Profile</title>
   
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
          <a class="nav-link mx-3 active" href="#">Home</a>
          </li>
      <li class="nav-item">
          <a class="nav-link mx-3" href="#">About Us</a>
      </li>
      
      <li class="nav-item">
          <a class="nav-link mx-3" href="doctor_panel.jsp">Communicate</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3" href="#">Appointments</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3" href="doc_bd_request.jsp">Blood Donation Request</a>
      </li>
    </ul>
      <ul class="navbar-nav mr-4">
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle logout_btn" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <%=uname%>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         
          <a class="dropdown-item" href="logout">Log out</a>
        </div>
      </li>  
      </ul>
      
  </div>
</nav>
  </div>
      <!-- navigation bar End-->
      
      <!--photo start--->
      <div class="container-fluid">
          <div class="row">
              <div class="firstimage">
                  <img class="img-fluid" src="images/first.png">
                  <div class="textonimage">
                      <h1 class="hf1">United<span style="color:yellow"> People</span> </h1><br>
                          <h2 class="hf2">Healthy People</h2>
                  </div>
              </div>
       
          </div>
          
      <!--photo End--->
      
      <!--card start-->
      <div class="mt-3">
          <div class="card-deck">
  <div class="card">
       <!--<img src="" class="card-img-top" alt="..."> -->
       <span class="mx-auto pt-2">
           <i class="fas fa-laptop-medical fa-5x"></i>
       </span>
    <div class="card-body">
      <h5 class="card-title cardtitle">E-Health</h5>
      <p class="card-text">Now on busy life schedule our health service will be help full to save the time and provide the best services in your selected region. </p>
    </div>
  </div>
  <div class="card">
       <!--<img src="" class="card-img-top" alt="..."> -->
       <span class="mx-auto pt-2">
           <i class="fas fa-user-md fa-5x"></i>
       </span>
    <div class="card-body">
      <h5 class="card-title cardtitle">Care</h5>
      <p class="card-text">Our doctor team are specialized for helping out from your disease and provide the perfect resolution about it and they are armed with ultra modern technology.</p>
    </div>
  </div>
  <div class="card">
       <!--<img src="" class="card-img-top" alt="..."> -->
       <span class="mx-auto pt-2">
           <i class="fas fa-comment-medical fa-5x"></i>
       </span>
    <div class="card-body">
      <h5 class="card-title cardtitle">Chat with Doctor</h5>
      <p class="card-text">Provides communication with doctor which will be helpful to save time and expenses and also to make familiar environment .</p>
    </div>
  </div>
  
  <div class="card">
       <!--<img src="" class="card-img-top" alt="..."> -->
       <span class="mx-auto pt-2">
           <i class="fas fa-hand-holding-heart fa-5x"></i>
       </span>
    <div class="card-body">
      <h5 class="card-title cardtitle">Health Tips</h5>
      <p class="card-text">To maintain the daily hygiene and to avoid unwanted calories use healthy food and avoid the oily fast food.</p>
    </div>
  </div>
  
          
</div>
      </div>
      </div>   
      <!--card end-->
          <footer class="mt-3 ">
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