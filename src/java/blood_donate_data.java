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
@MultipartConfig(maxFileSize = 10177215)

public class blood_donate_data extends HttpServlet {
    
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
        String age_s=request.getParameter("age");
        int age=Integer.parseInt(age_s);
        
        String weight_s=request.getParameter("weight");
        int weight=Integer.parseInt(weight_s);
        
        String blood_group=request.getParameter("blood_group");
        String r_date=request.getParameter("receive_date");    
        String timeslot=request.getParameter("timeslot");
        String city=request.getParameter("city");
        String address=request.getParameter("address");
        String adhar_s=request.getParameter("adhar");
        Long adhar=Long.parseLong(adhar_s);
        
        Part adhar_photo=request.getPart("adhar_img");
         InputStream adhar_img=adhar_photo.getInputStream();
        
        String query="insert into blood_request (firstname,lastname,email,mobile,gender,age,blood_group,receive_date,timeslot,city,address,adhar,adhar_img,weight,rq_approve) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
        
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
            ps.setInt(6, age);
            ps.setString(7, blood_group);
            ps.setString(8, r_date);
            ps.setString(9,timeslot);
            ps.setString(10,city);
            ps.setString(11, address);
            ps.setLong(12, adhar);
            ps.setBlob(13, adhar_img);
            ps.setInt(14, weight);
            ps.setBoolean(15, false);
           //13 
            
            int rs=ps.executeUpdate();
            if(rs>0){
               // out.print("Sucess");
              response.sendRedirect("dblood_success.jsp");
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
