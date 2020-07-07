<%-- 
    Document   : doc_bd_request
    Created on : Mar 5, 2020, 5:49:38 PM
    Author     : KISHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
            <a class="nav-link mx-3" href="doc_index.jsp">Home</a>
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
          <a class="nav-link mx-3 active" href="doc_bd_request.jsp">Blood Donation Request</a>
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
      
      <!--content start--->
      <div class="contact_background pt-3">
          <div class="row">
            <h4 class="m-auto h5">"If you’re a blood donor, you’re a hero to someone, somewhere, who received your gracious gift of life"</h4>
            
          </div>
          <div class="row mt-3">
              <h6 class="h6 text-muted m-auto pb-3">“Your blood is precious : Donate, save a life & make it Divine”</h6>
      
          </div>
          </div>
      <div class="container">
          <p class="h5 font-weight-normal pt-3 pb-2">Blood Donation Requests:</p>
      </div>
      
      <!-- table start-->
      <div class="container-fluid">
                  <span id="result_here"></span>
                  
                  <table align='center' id="full_table" class="table">
                      <thead class="thead-dark">
                              <tr>
                                  <th scope="col">Donor's Name</th>
                                  <th scope="col">Email</th>
                                  <th scope="col">Mobile No</th>
                                  <th scope="col">Gender</th>
                                  <th scope="col">Age</th>
                                  <th scope="col">Weight</th>
                                  <th scope="col">Blood Group</th>
                                  <th scope="col">City</th>
                                  <th scope="col">Receive Date</th>
                                  
                                  <th scope="col">Time Slot</th>
                                  <th scope="col">Donate</th>
                                </tr>
                              </thead>
                              
                              <%
                                  
                              try{
                                  String query="select * from blood_request where rq_approve=false";
                                   Class.forName("com.mysql.jdbc.Driver");
                                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/tabib","root","tigor");
                                   Statement st=con.createStatement();
                                   ResultSet rs=st.executeQuery(query);
                                   while(rs.next())
                                   {
                                       %>
                                       <tr>
                                       <form action="doc_donation_confirm" method="post">
                                           
                                           <td> <img src="https://img.icons8.com/metro/26/000000/user-male-circle.png">
                                               <input type="hidden" name="donor" value="<%=rs.getString("email")%>"/>
                                               
                                               <%=rs.getString("firstname")+" "+rs.getString("lastname")%>
                                           </td>
                                           <td><%=rs.getString("email")%></td>
                                           <td><%=rs.getLong("mobile")%></td>
                                           <td><%=rs.getString("gender")%></td>
                                           <td><%=rs.getInt("age")%></td>
                                           <td><%=rs.getInt("weight")%></td>
                                           <td><%=rs.getString("blood_group")%></td>
                                           <td><%=rs.getString("city")%></td>
                                           <td><%=rs.getString("receive_date")%></td>
                                           
                                           <td><%=rs.getString("timeslot")%></td>
                                           
                                           <td><input type="submit" value="View Details"></td>
                                           </form>
                                       </tr>
                                       <%
                                   }
                              }
                              catch(Exception e)
                              {
                                  out.print("Error:"+e);
                              }

                              %>
                              
                          </table>
                      
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

