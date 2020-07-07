<%-- 
    Document   : communicate
    Created on : Oct 2, 2019, 12:28:15 PM
    Author     : KISHAN
--%>

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
    <title>Communication</title>
    <script lang="javascript">
            var request;
            function searchdoctor()
            {
                var search_box=document.getElementById("sb").value;
                var url="search_doctor?val="+search_box;
                if(window.XMLHttpRequest)
                {
                    request=new XMLHttpRequest();
                }
                else if(window.ActiceXObject)
                {
                    request=new ActiveXObject("Microsoft.XMLHttp");
                }
                try{
                    request.onreadystatechange=result;
                    request.open("GET",url,true);
                    request.send();
                }
                catch(e)
                {
                    alert("Error:"+e);
                }
            }
            function result()
            {
                if(request.readyState==4)
                {
                    var result_text=request.responseText;
                    document.getElementById("result_here").innerHTML=result_text;
                    if(result_text=="<p class='text-center'>No Doctors found!! Try different key words</p>" || result_text.length>1)
                    {
                        $("#full_table").hide();
                    }
                    else if(result_text=="")
                    {
                        $("#full_table").show();
                    }
                   
            }
        }
        </script>
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
      <!-- navigation bar End-->
      <!--content start -->
      <div class="contact_background container-fluid">
          <div class="row">
              <div class="mx-auto h5 py-2">Ask your Health questions to our Doctors</div>
          </div>
          <div>
              <form name="search_doctor">
                  <div class="container">
                      <div class="form-group row pb-3">
    <label for="sb" class="col-sm-3 col-form-label comm_label">Search by Category or Name:</label>
    <div class="col-sm-9">
        <input type="text" class="form-control commu_search" name="searchbox" id="sb" onkeyup="searchdoctor()" placeholder="Doctor's speciality or Name"/>
    </div>
  </div>
                  </div>
              </form>
              <span id=""></span>
          </div>
      </div> 
              <div class="container">
                  <span id="result_here"></span>
                  
                  <table align='center' id="full_table" class="table">
                      <thead class="thead-dark">
                              <tr>
                                  <th scope="col">Doctor Name</th><th scope="col">Specialist in</th><th scope="col">Gender</th><th scope="col">City</th><th scope="col">Chat</th>
                                  
                              </tr>
                              </thead>
                              
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
                                       <tr>
                                       <form action="log.jsp" method="post">
                                           
                                           <td> <img src="https://img.icons8.com/metro/26/000000/user-male-circle.png">
                                               <input type="hidden" name="with" value="<%=rs.getString("email")%>"/><input type="hidden" name="doctor_name" value='Dr.<%=rs.getString("firstname")+" "+rs.getString("lastname")%>'/>Dr. <%=rs.getString("firstname")+" "+rs.getString("lastname")%></td>
                                           <td><%=rs.getString("specialistin")%></td>
                                           <td><%=rs.getString("gender")%></td>
                                           <td><%=rs.getString("city")%></td>
                                           <td><input type="submit" value="Click to Chat"></td>
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