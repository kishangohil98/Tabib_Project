<%-- 
    Document   : donate_request
    Created on : Feb 21, 2020, 3:06:25 PM
    Author     : KISHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<!DOCTYPE html>
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
    <title>Donate Blood</title>
    <script>
        function goBack()
        {
            window.history.back();
        }
    </script>
 </head>
  <body>
      <!-- navigation bar start-->
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
          <a class="nav-link mx-3" href="book_appointment_redirect">Book Appointment</a>
      </li>
      <li class="nav-item">
          <a class="nav-link mx-3 active" href="donateblood.jsp">Donate Blood</a>
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
     

      <div class="">
          <img src="images/blood_request_bg.jpg"  class=" dnt_rqs_bg"/>
          
          
           <div>
               <br/>
                <form class="register-box2" method="post" enctype="multipart/form-data" action="blood_donate_data">
                    <div class="col">
                        <div class="row">
                            <div><button class="profile_back" onclick="goBack()"><i class="far fa-arrow-alt-circle-left"></i> Go back</button></div>
                            <img  class="register-logo mx-auto mt-2" src="images/logo7.png">
                        </div>
                        <div class="text-center mb-2 registerhere">Blood Donor Registeration</div>
                    
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
    <label for="age" class="col-sm-3 col-form-label">Age</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="age" placeholder="Enter your Age" name="age" required>
    </div>
  </div>
                        
  <div class="form-group row">
    <label for="weight" class="col-sm-3 col-form-label">Current Weight</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="weight" placeholder="Enter your Real time weight" name="weight" required>
    </div>
  </div>          
                        
   <div class="form-group row">
    <label for="bloodgroup" class="col-sm-3 col-form-label">Blood Group</label>
    <div class="col-sm-9">
       <select class="form-control"  name="blood_group" id="bloodgroup">
      <option value="NA">--select--</option>
           
      <option value="A+">A RhD Positive (A+)</option>
      <option value="A-">A RhD Negative (A-)</option> 
      <option value="B+">B RhD Positive (B+)</option>
      <option value="B-">B RhD Negative (B-)</option>
      <option value="O+">O RhD Positive (O+)</option>
      <option value="O-">O RhD Negative (O-)</option>
      <option value="AB+">AB RhD Positive (AB+)</option>
      <option value="AB-">AB RhD Negative (AB-)</option>
    </select>
    </div>
  </div>
                        
                        <div class="form-group row">
                            <label for="receivedate"class="col-sm-3 col-form-label">Receive Date</label>
                            <div class="col-sm-9">
                                <input type="date" id="receivedate" name="receive_date">
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
                        
                        
    
<div class="form-group row">
    <label for="city" class="col-sm-3 col-form-label">City</label>
    <div class="col-sm-9">
       <select class="form-control"  name="city" id="city">
      <option value="Vadodara" <%=request.getAttribute("city").equals("Vadodara")?"selected='selected'":"" %>>Vadodara</option>
      <option value="Ahmedabad" <%=request.getAttribute("city").equals("Ahmedabad")?"selected='selected'":"" %>>Ahmedabad</option>
      <option value="Surat" <%=request.getAttribute("city").equals("Surat")?"selected='selected'":"" %>>Surat</option>
      <option value="Gandhinagar" <%=request.getAttribute("city").equals("Gandhinagar")?"selected='selected'":"" %>>Gandhinagar</option>
      <option value="Rajkot" <%=request.getAttribute("city").equals("Rajkot")?"selected='selected'":"" %>>Rajkot</option>
    </select>
    </div>
  </div>
  <div class=" form-group row">
    <label for="validationTextarea" class="col-sm-3 col-form-label">Address</label>
    <div class="col-sm-9">
        <textarea class="form-control" maxlength="130" id="validationTextarea" name="address" placeholder="Enter your corresponding address" required></textarea>
    </div>
  </div>
    <div class="form-group row">
    <label for="adhar" class="col-sm-3 col-form-label">Adhara No</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="adhar" placeholder="Enter Adhar No" name="adhar" required>
    </div>
  </div>
    <div class="form-group row">
    <label for="adharphoto" class="col-sm-3 col-form-label">Adhar Photo</label>
    <div class="col-sm-9">
      <input id="adharphoto" type="file" name="adhar_img" class="form-control-file" id="exampleFormControlFile1" accept="image/x-png,image/gif,image/jpeg/jfif"/>
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
