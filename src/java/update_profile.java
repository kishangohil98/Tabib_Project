/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KISHAN
 */
public class update_profile extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
         try{
          
             HttpSession session=request.getSession();
             String uname=(String)session.getAttribute("uname");
         
         String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String mobile=request.getParameter("mobileno");
        Long mobileno=Long.parseLong(mobile);
        String gender=request.getParameter("gender"); 
        String birthdate=request.getParameter("birthdate");
        String city=request.getParameter("city");       
         String query="update patients set firstname=?,lastname=?,mobileno=?,gender=?,birthdate=?,city=? where email='"+uname+"'";
         
         try{
              Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/tabib","root","tigor");
            PreparedStatement ps=con.prepareStatement(query);
            
            ps.setString(1, firstname);
            ps.setString(2, lastname);
       
            ps.setLong(3,mobileno);
            ps.setString(4,gender );
            ps.setString(5,birthdate);
            ps.setString(6, city);
          
            
            int i=ps.executeUpdate();
           
           if(i==1){
               
               response.sendRedirect("index.jsp");
           }
           else{
               out.println("Query is NOT Executed");
           }
            con.close();
         }
         catch(Exception inner){
             out.print("Error in Inner:"+inner);
         }
      
       }
       catch(Exception e)
       {
           out.println("error_in_getting data:"+e);
    }
}
}