<%-- 
    Document   : about_us
    Created on : Mar 1, 2020, 3:38:30 PM
    Author     : KISHAN
--%>
<!doctype html>
<html lang="en">
 
 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
        <meta name="author" content="">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/style1.css"/>
    <link rel="stylesheet" type="text/css" href="css/style-about.css"/>
    <link rel="stylesheet" type="text/css" href="css/style1.css"/>
    
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
        <link href="http://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
        
    
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.min.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.min.css" />
     <script defer src="/your-path-to-fontawesome/js/all.js"></script> <!--load all styles -->
    
     <script src="https://kit.fontawesome.com/9945596943.js"></script>
<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
    <title>Project</title>
   
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
          <a class="nav-link mx-3" href="<%if(session.getAttribute("uname")==null || session.getAttribute("uname")=="")
{
    %>index.html<%
}else{
%>
index.jsp
    <%
}
          %>" >Home</a>
      <li class="nav-item">
          <a class="nav-link mx-3 active" href="about_us.jsp">About Us</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3" href="communicate.jsp">Communicate</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3" href="book_appointment_redirect">Book Appointment</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3" href="donateblood.jsp">Donate Blood</a>
      </li>
      
      
     
    </ul>
      
  </div>
</nav>
          
      </div>
    <!-- Main Container -->

    <div class="row container-kamn">
        <img src="images/abtimg.jpg" class="abtimg1" alt="Feature-img" align="right" > 
    </div>

    <div id="banners"></div>
    <div class="container mt-5">   
        <div class="row">
            <div class="side-left col-sm-4 col-md-4">

                <h3 class="lead ml-3">   Founders : </h3><hr>
                <ul>
                    <li><h6>Akshay Parmar</h6></li>
                    <li><h6>Bhadresh Babaria</h6></li>
                    <li><h6>Kishan Gohel</h6></li>
                    <li><h6>Manan Mandaliya</h6></li>
                </ul>
                <p>We are Engineers which are wants to help on web based platform.</p>
                
                <br>
                <h4>2019 - ESTD :</h4><hr>
               A littel contribution from Vadodara
            </div>
            <div class="col-sm-8 col-md-8">
                <h3 class="lead" id="anchor1">What We Do </h3><hr>
                <p>
                    <b>Tabib</b> connects them with everything they need to take good care of themselves and their family - assessing health issues, finding the right doctor, booking diagnostic tests, obtaining prescription, storing health records or learning new ways to live healthier.
                </p>
                <p>
                    We are associated with high ranked Laboratories and Doctors to provide health service on our web platform. 
                </p>

                <h4>Services of Tabib</h4>
                <p><b>W</b>e created help for those who are want to save the time and expances through web based health services.</p>
                 <ul>
                    <li>Set Appointment to Doctor</li>
                    <li>Chat with Doctor</li>
                    <li>Online Laboratory Reports</li>
                    <li>Donate blood at your specified location</li>
                </ul>
               
                <h4>2007 - VIVAMUS HENDERIT</h4>
                <p>Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitor. Ut in nulla enim. Phasellus molestie magna.</p>

                <h4>2008 - PRAESENT ID METUS</h4>
                <p>
                    Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitor. Ut in nulla enim. Phasellus molestie magna non est bibendum non venenatis nisl tempor. Suspendisse dictum feugiat nisl ut dapibus. Mauris iaculis porttitor posuere. Praesent id metus massa, ut blandit odio. Proin quis tortor orci. Etiam at risus et justo dignissim congue. Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci. Quisque eget odio.
                </p>
                <h3 class="lead" id="anchor2">Our Philosophy:</h3>
                <p>
                    Suspendisse dictum feugiat nisl ut dapibus. Mauris iaculis porttitor posuere. Praesent id metus massa, ut blandit odio. Proin quis tortor orci. Etiam at risus et justo dignissim congue. Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit.
                    Curabitur vulputate, ligula lacinia scelerisque tempor, lacus lacus ornare ante, ac egestas est urna sit amet arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie augue sit amet leo consequat posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta.
                    Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo in libero. Vestibulum mollis mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor lobortis. Pellentesque eu est a nulla placerat dignissim. Morbi a enim in magna semper bibendum. Etiam scelerisque, nunc. <br>
                </p>

                
            </div>  
        </div>    
    </div>  

    <!--End Main Container -->
    <!--footer start-->
    
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
    <!--footer end-->
  
      </div>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
  </body>
</html>