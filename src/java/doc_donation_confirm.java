/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author KISHAN
 */
public class doc_donation_confirm extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        
        String donor_email=request.getParameter("donor");
        String query="select * from blood_request where email='"+donor_email+"' AND rq_approve=false";
        try{
             Class.forName("com.mysql.jdbc.Driver");
                                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/tabib","root","tigor");
                                   Statement st=con.createStatement();
                                   ResultSet rs=st.executeQuery(query);
                                   if(rs.next())
                                   {
                                       request.setAttribute("firstname", rs.getString("firstname"));
                                       request.setAttribute("lastname", rs.getString("lastname"));
                                       request.setAttribute("email", rs.getString("email"));
                                       request.setAttribute("mobile", rs.getLong("mobile"));
                                       request.setAttribute("gender", rs.getString("gender"));
                                       request.setAttribute("age", rs.getInt("age"));
                                       request.setAttribute("blood_group", rs.getString("blood_group"));
                                       request.setAttribute("receive_date", rs.getString("receive_date"));
                                       request.setAttribute("timeslot", rs.getString("timeslot"));
                                       request.setAttribute("city", rs.getString("city"));
                                       request.setAttribute("address", rs.getString("address"));
                                       request.setAttribute("adhar", rs.getString("adhar"));
                                       //request.setAttribute("adhar_img", rs.getString(""));
                                       request.setAttribute("weight", rs.getInt("weight"));
                                       
                                       RequestDispatcher rd=request.getRequestDispatcher("doc_confirm_donation.jsp");
                                       rd.forward(request, response);
                                       
                                   }
                                   else
                                   {
                                       out.print("No data from doc_donation_confirm");
                                   }
            
        }
        catch(Exception e)
        {
            out.print("Error:"+e);
        }
        
        
        }

}
