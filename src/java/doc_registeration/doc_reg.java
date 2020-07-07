/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package doc_registeration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KISHAN
 */
public class doc_reg extends HttpServlet {

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        try{
               String firstname=request.getParameter("firstname");
                String lastname=request.getParameter("lastname");
        String email=request.getParameter("email");
        String mobile=request.getParameter("mobileno");
        Long mobileno=Long.parseLong(mobile);
        String gender=request.getParameter("gender");
        String specialistin=request.getParameter("specialistin");
       
        String city=request.getParameter("city");
        String address=request.getParameter("address");
        
        String password=request.getParameter("password1");
        String password2=request.getParameter("password2");
        
        if(password.equals(password2))
        {
            String query="insert into doctors(firstname,lastname,email,mobileno,gender,specialistin,city,address,password) values (?,?,?,?,?,?,?,?,?)";
            try{
                  Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/tabib","root","tigor");
            PreparedStatement ps=con.prepareStatement(query);
            
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, email);
            ps.setLong(4,mobileno);
            ps.setString(5,gender );
            ps.setString(6,specialistin);
            ps.setString(7, city);
            ps.setString(8, address);
            ps.setString(9, password);
            
            int i=ps.executeUpdate();
           
           if(i==1){
               response.sendRedirect("index.html");
           }
           else{
               out.println("Query is NOT Executed");
           }
            con.close();
            }
            catch(Exception e)
            {
                out.print("Error Inner:"+e);
            }
        }
        else{
            out.print("Check your password!!");
        }
        
        }
        catch(Exception e){
            out.print("Error:"+e);
        }
      
    }

   
}
