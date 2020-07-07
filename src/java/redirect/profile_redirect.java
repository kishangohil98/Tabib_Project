package redirect;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KISHAN
 */
public class profile_redirect extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession session=request.getSession();
        String uname=(String)session.getAttribute("uname");
        String destination=(String) request.getAttribute("profile_update");

        String query="select * from patients where email='"+uname+"'";
        try{  
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/tabib","root","tigor");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(query);
            String fname;
            String lname;
            String mobileno;
            String birthdate;
            String city;
            String password;
            String gender;
            
            String photo_string;
            boolean photo_available=true;
            
            while(rs.next())
            {
               fname=rs.getString(2);
               lname=rs.getString(3);
               mobileno=rs.getString(5);
               gender=rs.getString(6);
               birthdate=rs.getString(7);
               city=rs.getString(8);
               password=rs.getString(9);
               
               photo_string=rs.getString(10);
               if(photo_string=="null" || photo_string=="NULL")
               {
                   photo_available=false;
               }
               
               request.setAttribute("fname", fname);
               request.setAttribute("lname", lname);
               request.setAttribute("mobileno", mobileno);
               request.setAttribute("birthdate", birthdate);
               request.setAttribute("gender", gender);
               request.setAttribute("city", city);
               request.setAttribute("password", password);
               request.setAttribute("photo_available",photo_available);
               
            }
            if(destination.equals("profileupdate"))
            {
                getServletConfig().getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
            }
            else if(destination.equals("blood_donation"))
            {
                 getServletConfig().getServletContext().getRequestDispatcher("/donate_request.jsp").forward(request, response);
            }
            else if(destination.equals("book_appointment"))
            {
                 getServletConfig().getServletContext().getRequestDispatcher("/bookappointment.jsp").forward(request, response);
            }
        } 
            
        catch(Exception e)
        {
            out.print("Error in getting data:"+e);
        }
    }
    
  
}
