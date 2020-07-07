/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class search_doctor extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("servlet Called");
        String searchname=request.getParameter("val");
        if(searchname==null || searchname.trim().equals(""))
        {
        out.print("");
        }
else{
    try{ 
        //String query="select * from doctors where name like '"+searchname+"%'";
        String query="select * from doctors where firstname LIKE '%"+searchname+"%' OR lastname LIKE '%"+searchname+"%' OR specialistin LIKE '%"+searchname+"%'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tabib","root","tigor");
       PreparedStatement ps=con.prepareStatement(query);
        ResultSet rs=ps.executeQuery();
        if(!rs.isBeforeFirst()) 
        {
            System.out.println("query Not executed");
            out.print("<p class='text-center font-weight-bold'>No Doctors found!! Try different key words</p>");
        }
        else
        {
            System.out.println("Query executed");
                out.print("<table align='center' class='table'>");
                out.print("<thead class='thead-dark'>");
                out.print("<tr>");
                out.print("<th scope='col'>Doctor Name</th><th scope='col'>Specialist in</th><th scope='col'>Gender</th><th scope='col'>City</th><th scope='col'>Chat</th>");
                
           
            while(rs.next())
            {
                out.print("<tr><form action='log.jsp' method='post'><td> <img src='https://img.icons8.com/metro/26/000000/user-male-circle.png'>");
                out.print("<input type='hidden' name='with' value="+rs.getString(4)+"/>");
                
                  out.print("<input type='hidden' name='doctor_name' value=Dr."+rs.getString(2)+" "+rs.getString(3)+"/>");
                      out.print("Dr. "+rs.getString(2)+" "+rs.getString(3)+"</td>");
                      out.print("<td>"+rs.getString(7)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(8)+"</td>");
                      out.print(" <td><input type='submit' value='Click to Chat'></td>");
                      out.print("</form></tr>");                  
                
                
                
                
                /*  Below is the old code
                out.print("<th scope='col'>Doctor Name</th><th scope='col'>Specialist in</th><th scope='col'>Gender</th><th scope='col'>City</th><th scope='col'>Chat</th>");
                out.print("<thead>");
                out.print("<tr>");
                out.print("<td><input type='hidden' name='chatname' value="+rs.getString(4)+"</td>");
                out.print("<td>Dr."+rs.getString(2)+rs.getString(3)+"</td>");
                out.print("<td>"+rs.getString(7)+"</td>");
                out.print("<td>"+rs.getString(6)+"</td>");
                out.print("<td>"+rs.getString(8)+"</td>");                           
                out.print("<td><a href='chat.jsp?chatwithemail="+rs.getString(4)+"&chatwithname=Dr."+rs.getString(2)+rs.getString(3)+">Click to Chat</a></td>");                           
                out.print("</tr>");                                 
                
*/
                 System.out.println("query executed");
               }
          } 
        con.close();
    }
    catch(Exception e)
    {
        out.print(e);
    }
}
    }

}
