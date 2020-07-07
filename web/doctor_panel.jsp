  <%-- 
    Document   : doctor_panel
    Created on : Oct 15, 2019, 11:10:29 PM
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
    String doc_name=(String)session.getAttribute("doc_name");
    
    response.setHeader("Cache-Control", "no-cahe,no-store,must-revalidate");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/style1.css"/>
    
        <title>Doctor Panel</title>
    </head>
    <body>
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
          <a class="nav-link mx-3 active" href="doctor_panel.jsp">Communicate</a>
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
        <!-- navigation end -->
        
        <div class="contact_background container-fluid">
            <div class="row">
                <div class="mx-auto h5 py-2">Welcome <%=doc_name%></div>
          </div>
           <div class="row mt-2">
            <h6 class="h6 text-muted m-auto pb-3">Here is Your communication channel with your patients, Guide them to Diagnose it!!</h6>
        </div>
        </div>
         
              
                        <table>
                             <table align='center' border="1" cellpadding="10">
                              <tr>
                                  <td></td>
                                  <td>Patient Name</td>
                                  <td>Gender</td>
                                  <td>City</td>
                                  <td>Chat</td>
                              </tr>
                              <%
                                  String query2="select * from patients";
                              try{
                                  Class.forName("com.mysql.jdbc.Driver");
                                  Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/tabib","root","tigor");
                                  Statement st2=con2.createStatement();
                                  ResultSet rs2=st2.executeQuery(query2);
                                  while(rs2.next())
                                  {
                                  %>
                                  <tr>
                                  <form action="log.jsp" >
                                  <td><input type="hidden" name="with" value="<%=rs2.getString("email")%>"/><input type="hidden" name="doctor_name" value='<%=rs2.getString("firstname")+" "+rs2.getString("lastname")%>'/></td>
                                  <td><%=rs2.getString(2)+" "+rs2.getString(3)%></td>
                                  <td><%=rs2.getString(6)%></td>
                                  <td><%=rs2.getString(8)%></td>
                                  <td><input type="submit" value="Click to Chat"></td>
                                  </form>
                                  </tr>
                                  <%
                                  }
                              }
                              catch(Exception e)
                              {
                                  out.print("Error in fetching patient:"+e);
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
