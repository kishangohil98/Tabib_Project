/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
public class Login_validation extends HttpServlet {

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
        String usertype=request.getParameter("usertype");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        if(usertype.equals("patient"))
        {
            String query="select * from patients where email=? and password=?";
            boolean validate=false;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tabib","root","tigor");
                PreparedStatement ps=con.prepareStatement(query);
                ps.setString(1, username);
                ps.setString(2, password);
                
                ResultSet rs=(ResultSet) ps.executeQuery();
                validate=rs.next();
                if(validate){
                     HttpSession session=request.getSession();  
                     session.setAttribute("uname",username);
                     response.sendRedirect("index.jsp");
                }
                else{
                     out.print("<script type=\"text/javascript\">alert('Sorry Username or Password is invalid!!');</script>");  
                    RequestDispatcher rd=request.getRequestDispatcher("login.html");  
                    rd.include(request,response);
                }
                
            }
            catch(Exception e)
            {
                out.print("Error:"+e);
            }
        }
        else if(usertype.equals("doctor"))
        {
            String query="select * from doctors where email=? and password=?";
            boolean validate=false;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tabib","root","tigor");
                PreparedStatement ps=con.prepareStatement(query);
                ps.setString(1, username);
                ps.setString(2, password);
                
                ResultSet rs=(ResultSet) ps.executeQuery();
                validate=rs.next();
                if(validate){
                    String doc_name="Dr."+rs.getString(2)+" "+rs.getString(3);
                     HttpSession session=request.getSession();  
                     session.setAttribute("uname",username);
                     session.setAttribute("doc_name",doc_name);
                     
                     response.sendRedirect("doc_index.jsp");             
                }
                else{
                     out.print("<script type=\"text/javascript\">alert('Sorry Username or Password is invalid!!');</script>");  
                    RequestDispatcher rd=request.getRequestDispatcher("login.html");  
                    rd.include(request,response);
                }
                
            }
            catch(Exception e)
            {
                out.print("Error:"+e);
            }
        }
        
    }
}

