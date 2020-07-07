/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package redirect;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author KISHAN
 */
public class profiledata extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String destination="profileupdate";
        request.setAttribute("profile_update", destination);
        
        RequestDispatcher rd=request.getRequestDispatcher("profile_redirect");
        rd.forward(request, response);
        
    }
       
}
