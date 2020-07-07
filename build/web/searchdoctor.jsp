<%-- 
    Document   : searchdoctor
    Created on : Oct 5, 2019, 6:36:43 PM
    Author     : KISHAN
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String searchname=request.getParameter("val");
System.out.println("search doctor called");
if(searchname==null || searchname.trim().equals(""))
{
    out.print("No data");
}
else{
    try{ 
        //String query="select * from doctors where name like '"+searchname+"%'";
        String query="select * from doctors where firstname='Bhoomi'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tabib/doctors","root","tigor");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(query);
     
        if(!rs.isBeforeFirst()) 
        {
            System.out.println("query Not executed");
            out.print("No Doctors found!! Try different key words");
        }
        else
        {
            System.out.println("query executed");
            while(rs.next())
            {
                
                out.print("<tr>");
                out.print("<td><input type='hidden' name='chatname' value="+rs.getString(4)+"</td>");
                
                out.print("<td>Dr."+rs.getString(2)+rs.getString(3)+"</td>");
                
                out.print("<td>"+rs.getString(7)+"</td>");
                
                out.print("<td>"+rs.getString(6)+"</td>");
                
                out.print("<td>"+rs.getString(8)+"</td>");                           
                out.print("<td><a href='chat.jsp?chatwithemail="+rs.getString(4)+"&chatwithname=Dr."+rs.getString(2)+rs.getString(3)+">Click to Chat</a></td>");                           
                out.print("</tr>");                                 
               }
             } 
    }
    catch(Exception e)
    {
        out.print(e);
    }
}
%>