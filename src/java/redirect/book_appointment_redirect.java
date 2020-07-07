/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package redirect;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KISHAN
 */
public class book_appointment_redirect extends HttpServlet {

     
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String destination="book_appointment";
        request.setAttribute("profile_update", destination);
        
        RequestDispatcher rd=request.getRequestDispatcher("profile_redirect");
        rd.forward(request, response);
    }
        
    }
