<%-- 
    Document   : newjsp
    Created on : Jun 27, 2020, 12:37:05 PM
    Author     : KISHAN
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
if(session.getAttribute("uname")==null || session.getAttribute("uname")=="")
{
    response.sendRedirect("login.html");
}
else{
    String uname=(String)session.getAttribute("uname");
     String gender=(String)request.getAttribute("gender");
    boolean ismale=false;
    if(gender.equalsIgnoreCase("male"))
    {
        ismale=true;
    }
    boolean isfemale=false;
    if(gender.equalsIgnoreCase("female"))
    {
        isfemale=true;
    }
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
     
      
       
      
      
       <div class="">
           <img src="images/bookappointment.jpg"  class=" dnt_rqs_bg"/>
          
          
           <div>
               
               
          <div class="contact_background pt-3">
          <div class="row">
            <h4 class="m-auto h5">Welcome to Book Appointment</h4>
            
          </div>
          <div class="row mt-3">
              <h6 class="h6 text-muted m-auto pb-3">You can book a medical appointment to Doctor by filling below details</h6>
      
          </div>
          </div>
               <br/>
                <form class="register-box2" method="post" action="book_appointment_data">
                    <div class=" pt-3">
          <div class="row">
            <h4 class="m-auto h5">Welcome to Book Appointment</h4>
            
          </div>
          <div class="row mt-3">
              <h6 class="h6 text-muted m-auto pb-3">You can book a medical appointment to Doctor by filling below details</h6>
      
          </div>
          </div>
                    
                    <div class="col">
                        
                        <div class="row">
                            
                            
                            <img  class="register-logo mx-auto mt-2" src="images/logo7.png">
                        </div>
                        <div class="text-center mb-2 registerhere">Blood Appointment Form</div>
                    
  <div class="form-group row">
    <label for="firstname" class="col-sm-3 col-form-label">First Name</label>
    <div class="col-sm-9">
        <input type="text" class="form-control" id="firstname" placeholder="first name" value="<%=request.getAttribute("fname")%>" name="firstname" required>
    </div>
  </div>
    <div class="form-group row">
    <label for="lastname" class="col-sm-3 col-form-label">Last Name</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="lastname" placeholder="last name" name="lastname" value="<%=request.getAttribute("lname")%>" required>
    </div>
  </div>
                         <div class="form-group row">
    <label for="inputEmail3" class="col-sm-3 col-form-label">Email</label>
    <div class="col-sm-9">
        <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email" value="<%=uname%>" required>
    </div>
  </div>
    <div class="form-group row">
    <label for="mobileno" class="col-sm-3 col-form-label">Mobile No</label>
    <div class="col-sm-9">
      <input type="tel"  required class="form-control" id="mobileno" name="mobileno" placeholder="mobile no"  value="<%=request.getAttribute("mobileno")%>" >
    </div>
  </div>
  <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-3 pt-0">Gender</legend>
      <div class="col-sm-9 pr-2">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="Male" <%=(ismale)?"checked":""%>>
          <label class="form-check-label" for="gridRadios1">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="Female" <%=(isfemale)?"checked":""%>>
          <label class="form-check-label" for="gridRadios2">
            Female
          </label>
        </div>
      </div>
    </div>
  </fieldset>
  
          <div class="form-group row">
    <label for="timeslot" class="col-sm-3 col-form-label">Select Doctor</label>
    <div class="col-sm-9">
       <select class="form-control"  name="ap_doctor" id="timeslot">
      <option value="NA">--select--</option>
      
       <%
                                  
                              try{
                                  String query="select * from doctors";
                                   Class.forName("com.mysql.jdbc.Driver");
                                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/tabib","root","tigor");
                                   Statement st=con.createStatement();
                                   ResultSet rs=st.executeQuery(query);
                                   while(rs.next())
                                   {
                                       %>
                                      <option value="<%=rs.getString("email")%>">
                                            <img src="https://img.icons8.com/metro/26/000000/user-male-circle.png">
                                            <p><bold>Dr. <%=rs.getString("firstname")+" "+rs.getString("lastname")%></bold></p>
                                            <P>(<%=rs.getString("specialistin")%>)</P>
                                      
       </option>
                                       <%
                                   }
                              }
                              catch(Exception e)
                              {
                                  out.print("Error:"+e);
                              }

                              %>
    </select>
    </div>
  </div>
                        
                        <div class="form-group row">
                            <label for="receivedate"class="col-sm-3 col-form-label">Receive Date</label>
                            <div class="col-sm-9">
                                <input type="date" id="receivedate" name="ap_date">
                            </div>
                        </div>                      
              
                         <div class="form-group row">
    <label for="timeslot" class="col-sm-3 col-form-label">Time Slot</label>
    <div class="col-sm-9">
       <select class="form-control"  name="timeslot" id="timeslot">
      <option value="NA">--select--</option>
      <option value="10 AM to 11 AM ">10:00AM to 11:00AM</option>
      <option value="11 AM to 12 AM">11:00AM to 12:00PM</option>
      <option value="12 PM to 1 PM">12:00PM to 1:00PM</option>
      <option value="1 PM to 2 PM">1:00PM to 2:00PM</option>
      <option value="2 PM to 3 PM">2:00PM to 3:00PM</option>
      <option value="3 PM to 4 PM">3:00PM to 4:00PM</option>
      <option value="4 PM to 5 PM">4:00PM to 5:00PM</option>
      <option value="5 PM to 6 PM">5:00PM to 6:00PM</option>
      <option value="6 PM to 7 PM">6:00PM to 7:00PM</option>
      <option value="7 PM to 8 PM">7:00PM to 8:00PM</option>
    </select>
    </div>
  </div>
                       
  </div>
  <div class="form-group row">
      <div class="col-sm-12">
          <button type="submit" class="mx-auto register-button">Register</button>
      </div>
  </div>
                    
                    
                    <br/>
            </form> 
                    </div>
          
      </div>
      
      
      
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