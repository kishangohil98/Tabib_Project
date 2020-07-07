/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author KISHAN
 */

public class book_appointment_data extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        PrintWriter out=response.getWriter();
        
        response.setContentType("text/html;charset=UTF-8");
       
        try{
        String f_name=request.getParameter("firstname");
        String l_name=request.getParameter("lastname");
        String email=request.getParameter("email");
        
        String mobile_s=request.getParameter("mobileno");
        Long mobile=Long.parseLong(mobile_s);
        
        String gender=request.getParameter("gender");
        
        String ap_doctor=request.getParameter("ap_doctor");
        
        String ap_date=request.getParameter("ap_date");    
        String timeslot=request.getParameter("timeslot");
        
        String query="insert into book_appointment (firstname,lastname,email,mobile,gender,ap_doctor,ap_date,timeslot, ap_approve) values(?,?,?,?,?,?,?,?,?)";
        
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tabib","root","tigor");
            
           // con.setAutoCommit(false);
            
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1, f_name);
            ps.setString(2, l_name);
            ps.setString(3, email);
            ps.setLong(4, mobile);
            ps.setString(5, gender);
            ps.setString(6, ap_doctor);
            ps.setString(7, ap_date);
            ps.setString(8, timeslot);
            ps.setBoolean(9, false);
        
            
            int rs=ps.executeUpdate();
            if(rs>0){
                //out.print("Sucess");
              response.sendRedirect("bap_success.jsp");
            }
            else{
                out.print("Error:");
            }
            con.close();
            
        }
        catch(Exception e )
        {
            out.print("Error:"+e);
        }
        }
        catch(Exception e)
        {
            out.print("Error in out:"+e);
        }
      
    }

    
}
