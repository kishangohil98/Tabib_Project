/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KISHAN
 */
public class validateuser_1 extends HttpServlet{
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        PrintWriter out=response.getWriter();
        response.setContentType("text/plain");
       try{
          
           
         String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String email=request.getParameter("email");
        String mobile=request.getParameter("mobileno");
        Long mobileno=Long.parseLong(mobile);
        String gender=request.getParameter("gender");
        
        String birthdate=request.getParameter("birthdate");
        String city=request.getParameter("city");
        
        String password=request.getParameter("password1");
        String password2=request.getParameter("password2");
        if(password.equals(password2))
        {
            
        
         String query="insert into patients(firstname,lastname,email,mobileno,gender,birthdate,city,password) values (?,?,?,?,?,?,?,?)";
         try{
              Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/tabib","root","tigor");
            PreparedStatement ps=con.prepareStatement(query);
            
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, email);
            ps.setLong(4,mobileno);
            ps.setString(5,gender );
            ps.setString(6,birthdate);
            ps.setString(7, city);
            ps.setString(8, password);
            
            int i=ps.executeUpdate();
           
           if(i==1){
                HttpSession session=request.getSession();  
                session.setAttribute("uname",email);
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
        else{
            out.print("Check your Password!!");
            
        }
       }
       catch(Exception e)
       {
           out.println("error_in_vali_1_outer:"+e);
       }
    }   
}
