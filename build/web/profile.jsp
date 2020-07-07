<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
<html>
    <head>
        <title>My Profile</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/style-register.css" >
        <link rel="stylesheet" href="css/style1.css" >
        
        
         <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/all.min.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.css" />
    <link rel="stylesheet" href="fontawesome-free-5.10.2-web/css/solid.min.css" />
     <script defer src="/your-path-to-fontawesome/js/all.js"></script> <!--load all styles -->
    
     <script src="https://kit.fontawesome.com/9945596943.js"></script>
 
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    </head>
    <body class="bd">
        <script>
function goBack() {
  window.history.back();
}
</script>
        
        <div class="container">
            <div>
                <form class="register-box" method="post" action="update_profile">
                   
                    <div class="col">
                        <div class="row">
                            <div><button class="profile_back" onclick="goBack()"><i class="far fa-arrow-alt-circle-left"></i> Go back</button></div>
                            <img  class="register-logo mx-auto mt-2" src="images/logo7.png">
                        </div>
                        <div class="text-center mb-2 registerhere">Welcome to Your Profile, you can update your profile here!!
                           
                                
                                <div class="text-center">
                                     <img src="..." class="rounded" alt="Your Photo">
                                </div>
                               
                            <div class="profiletodisplay"><i class="fas fa-user"></i> <%=request.getAttribute("fname")%> <%=request.getAttribute("lname")%></div>
                        </div>
                    <div class="form-group row">
    <label for="inputEmail3" class="col-sm-3 col-form-label">Your Email</label>
    <div class="col-sm-9">
        <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email" value="<%=uname%>" disabled="true" required>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-3 col-form-label">Password</label>
    <div class="col-sm-9">
        <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password1" disabled="true" value="<%=request.getAttribute("password")%>" required>
    </div>
  </div>                      
  <div class="form-group row">
    <label for="firstname" class="col-sm-3 col-form-label">First Name</label>
    <div class="col-sm-9">
        <input type="text" class="form-control" id="firstname" placeholder="first name" name="firstname" value="<%=request.getAttribute("fname")%>" required>
    </div>
  </div>
    <div class="form-group row">
    <label for="lastname" class="col-sm-3 col-form-label">Last Name</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="lastname" placeholder="last name" name="lastname"  value="<%=request.getAttribute("lname")%>"  required>
    </div>
  </div>
                         
    <div class="form-group row">
    <label for="mobileno" class="col-sm-3 col-form-label">Mobile No</label>
    <div class="col-sm-9">
      <input type="tel"  required class="form-control" id="mobileno" name="mobileno"  value="<%=request.getAttribute("mobileno")%>" placeholder="mobile no">
    </div>
  </div>
  <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-3 pt-0">Gender</legend>
      <div class="col-sm-9 pr-2">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="male"  <%=(ismale)?"checked":""%> >
          <label class="form-check-label" for="gridRadios1">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="female" <%=(isfemale)?"checked":""%>>
          <label class="form-check-label" for="gridRadios2">
            Female
          </label>
        </div>
      </div>
    </div>
  </fieldset>
          
    <div class="form-group row">
    <label for="birthdate" class="col-sm-3 col-form-label">Birth Date</label>
    <div class="col-sm-9">
      <input type="date"  required class="form-control birthdate-input" id="birthdate"  value="<%=request.getAttribute("birthdate")%>"  name="birthdate">
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
  
  </div>
  <div class="form-group row">
      <div class="col-sm-12">
          <button type="submit" class="mx-auto register-button">Update Profile</button>
      </div> 
  </div>
                        <!--agadff-->
                    </div>
                        
            
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