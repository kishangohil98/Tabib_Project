<%
    String with=request.getParameter("with");
   String doctor_name=request.getParameter("doctor_name");
    session.setAttribute("with", with);
    session.setAttribute("doctor_name", doctor_name);
    response.sendRedirect("chat.jsp");
    System.out.println("log called");
  
 
%>