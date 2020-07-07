
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(session.getAttribute("uname")==null || session.getAttribute("uname")=="")
{
    response.sendRedirect("login.html");
}
else{
    String uname=(String)session.getAttribute("uname");
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
    <title>Donate Blood</title>
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
   
      <div class="contact_background pt-3">
          <div class="row">
            <h4 class="m-auto h5">"If you’re a blood donor, you’re a hero to someone, somewhere, who received your gracious gift of life"</h4>
            
          </div>
          <div class="row mt-3">
              <h6 class="h6 text-muted m-auto pb-3">“Your blood is precious : Donate, save a life & make it Divine”</h6>
      
          </div>
          </div>
      <div class="container">
          <div>
              <img src="images/bloodquote.jpg" class="img-fluid" alt="Responsive image">
          <p class="font-weight-normal h4 mt-3" >
              Blood donation is a wonderful way of giving back a life, but to ensure the safety of both donors and recipients there are few requirements you should keep in mind.
          </p>
          <p class="h5 font-weight-bold pt-3">Age:</p>
          <p>You are aged between 18 and 65.</p>
          <p>* In some countries national legislation permits 16–17 year-olds to donate provided that they fulfil the physical and hematological criteria required and that appropriate consent is obtained.</p>
          <p>* In some countries, regular donors over the age of 65 may be accepted at the discretion of the responsible physician. The upper age limit in some countries are 60.</p>
          
          
          <p class="h5 font-weight-bold pt-3">Weight:</p>
          <p>You weigh at least 50 kg.</p>
          <p>* In some countries, donors of whole blood donations should weigh at least 45 kg to donate 350 ml ± 10%.</p>
          
          <p class="h5 font-weight-bold pt-3">Health:</p>
          <p>You must be in good health at the time you donate.</p>
          <p>You cannot donate if you have a cold, flu, sore throat, cold sore, stomach bug or any other infection.</p>
          <p>If you have recently had a tattoo or body piercing you cannot donate for 6 months from the date of the procedure.  If the body piercing was performed by a registered health professional and any inflammation has settled completely, you can donate blood after 12 hours.</p>
          <p>If you have visited the dentist for a minor procedure you must wait 24 hours before donating; for major work wait a month.</p>
          <p>You must not donate blood If you do not meet the minimum haemoglobin level for blood donation.</p>
          <p>* A test will be administered at the donation site. In many countries, a haemoglobin level of not less than 12.0 g/dl for females and not less than 13.0 g/dl for males as the threshold.</p>
          
          <p class="h5 font-weight-bold pt-3">Travel:</p>
          <p>Travel to areas where mosquito-borne infections are endemic, e.g. malaria, dengue and Zika virus infections, may result in a temporary deferral .</p>
          <p>Many countries also implemented the policy to defer blood donors with a history of travel or residence for defined cumulative exposure periods in specified countries or areas, as a measure to reduce the risk of transmitting variant Creutzfeldt-Jakob Disease (vCJD) by blood transfusion.</p>
          
          <p class="h5 font-weight-bold pt-3">Behaviours:</p>
          <p>You must not give blood:</p>
          <p>If you engaged in “at risk” sexual activity in the past 12 months</p>
          <p>Individuals with behaviours below will be deferred permanently: </p>
          <p>Have ever had a positive test for HIV (AIDS virus)</p>
          <p>Have ever injected recreational drugs.</p>
          <p>* In the national blood donor selection guidelines, there are more behavior eligibility criteria. Criteria could be different in different countries.</p>
          
          <p class="h5 font-weight-bold pt-3">Pregnancy and breastfeeding:</p>
          <p>Following pregnancy, the deferral period should last as many months as the duration of the pregnancy.</p>
          <p>It is not advisable to donate blood while breast-feeding. Following childbirth, the deferral period is at least 9 months (as for pregnancy) and until 3 months after your baby is significantly weaned (i.e. getting most of his/her nutrition from solids or bottle feeding).</p>
          
          <p class="h5 font-weight-bold pt-3">More information on eligibility to donate:</p>
          <p>National  eligibility guidelines must be followed when people donate blood in the blood service in specific countries.  To find out whether any health conditions, medications, professions or travel history to could affect your ability to give blood, please search for detailed information in the national/local blood services.</p>
          
          <p class="h5 font-weight-bold pt-3">The following are some more detailed information on blood donor eligibility criteria:</p>
          <a href="https://www.who.int/bloodsafety/publications/bts_guideline_donor_suitability/en/" target="_blank">https://www.who.int/bloodsafety/publications/bts_guideline_donor_suitability/en/</a>
          </div>
      </div>
          <!-- eligibility criteria end -->
          <!-- check box start -->
          <script>

  function checkForm(form)
  {
    if(!form.chk.checked) {
      alert("Please indicate that you are Eligible to Donate Blood!!");
      form.chk.focus();
      return false;
    }
    return true;
  }

</script>
<div>
          <div>
              <form onsubmit="return checkForm(this)" method="get" action="blood_donate_redirect">
                  <div class="row">
                  <div class="form-check pt-3 mx-auto">
                      <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="chk" value="option1">
                        <label class="form-check-label font-weight-bold" for="inlineCheckbox1">I have read all above eligibility criteria and I am healthy enough to donate blood.</label>
                    </div>
                  </div>
                  <div class="row mt-3 mb-2">
                      <input class="mx-auto logbtn" value="Ready to Donate" type="submit"/>
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