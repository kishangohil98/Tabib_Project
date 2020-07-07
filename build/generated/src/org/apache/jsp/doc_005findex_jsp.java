package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class doc_005findex_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

if(session.getAttribute("uname")==null || session.getAttribute("uname")=="")
{
    response.sendRedirect("login.html");
}
else{
    String uname=(String)session.getAttribute("uname");
    String doc_name=(String)session.getAttribute("doc_name");
    response.setHeader("Cache-Control", "no-cahe,no-store,must-revalidate");

      out.write("\n");
      out.write("    <!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write(" <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style1.css\"/>\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome-free-5.10.2-web/css/all.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome-free-5.10.2-web/css/all.min.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome-free-5.10.2-web/css/solid.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome-free-5.10.2-web/css/solid.min.css\" />\n");
      out.write("     <script defer src=\"/your-path-to-fontawesome/js/all.js\"></script> <!--load all styles -->\n");
      out.write("    \n");
      out.write("     <script src=\"https://kit.fontawesome.com/9945596943.js\"></script>\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Righteous&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <title>Profile</title>\n");
      out.write("   \n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("      <!-- navigation bar start-->\n");
      out.write("      <div class=\"\">\n");
      out.write("          <div class=\"sticky-top\">\n");
      out.write("          <nav class=\"navbar navbar-expand-lg navbar-light bg-white\">\n");
      out.write("              <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                  <img class=\"logo\" src=\"images/logo7.png\" alt=\"logo\">\n");
      out.write("              </a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link mx-3 active\" href=\"#\">Home</a>\n");
      out.write("          </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link mx-3\" href=\"about_us.jsp\">About Us</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link mx-3\" href=\"doctor_panel.jsp\">Communicate</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link mx-3\" href=\"#\">Appointments</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link mx-3\" href=\"doc_bd_request.jsp\">Blood Donation Request</a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("      <ul class=\"navbar-nav mr-4\">\n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle logout_btn\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("            ");
      out.print(uname);
      out.write("\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("         \n");
      out.write("          <a class=\"dropdown-item\" href=\"logout\">Log out</a>\n");
      out.write("        </div>\n");
      out.write("      </li>  \n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("  </div>\n");
      out.write("      <!-- navigation bar End-->\n");
      out.write("      \n");
      out.write("      <!--photo start--->\n");
      out.write("      <div class=\"container-fluid\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("              <div class=\"firstimage\">\n");
      out.write("                  <img class=\"img-fluid\" src=\"images/first.png\">\n");
      out.write("                  <div class=\"textonimage\">\n");
      out.write("                      <h1 class=\"hf1\">United<span style=\"color:yellow\"> People</span> </h1><br>\n");
      out.write("                          <h2 class=\"hf2\">Healthy People</h2>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("       \n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("      <!--photo End--->\n");
      out.write("      \n");
      out.write("      <!--card start-->\n");
      out.write("      <div class=\"mt-3\">\n");
      out.write("          <div class=\"card-deck\">\n");
      out.write("  <div class=\"card\">\n");
      out.write("       <!--<img src=\"\" class=\"card-img-top\" alt=\"...\"> -->\n");
      out.write("       <span class=\"mx-auto pt-2\">\n");
      out.write("           <i class=\"fas fa-laptop-medical fa-5x\"></i>\n");
      out.write("       </span>\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <h5 class=\"card-title cardtitle\">E-Health</h5>\n");
      out.write("      <p class=\"card-text\">Now on busy life schedule our health service will be help full to save the time and provide the best services in your selected region. </p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"card\">\n");
      out.write("       <!--<img src=\"\" class=\"card-img-top\" alt=\"...\"> -->\n");
      out.write("       <span class=\"mx-auto pt-2\">\n");
      out.write("           <i class=\"fas fa-user-md fa-5x\"></i>\n");
      out.write("       </span>\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <h5 class=\"card-title cardtitle\">Care</h5>\n");
      out.write("      <p class=\"card-text\">Our doctor team are specialized for helping out from your disease and provide the perfect resolution about it and they are armed with ultra modern technology.</p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"card\">\n");
      out.write("       <!--<img src=\"\" class=\"card-img-top\" alt=\"...\"> -->\n");
      out.write("       <span class=\"mx-auto pt-2\">\n");
      out.write("           <i class=\"fas fa-comment-medical fa-5x\"></i>\n");
      out.write("       </span>\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <h5 class=\"card-title cardtitle\">Chat with Doctor</h5>\n");
      out.write("      <p class=\"card-text\">Provides communication with doctor which will be helpful to save time and expenses and also to make familiar environment .</p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"card\">\n");
      out.write("       <!--<img src=\"\" class=\"card-img-top\" alt=\"...\"> -->\n");
      out.write("       <span class=\"mx-auto pt-2\">\n");
      out.write("           <i class=\"fas fa-hand-holding-heart fa-5x\"></i>\n");
      out.write("       </span>\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <h5 class=\"card-title cardtitle\">Health Tips</h5>\n");
      out.write("      <p class=\"card-text\">To maintain the daily hygiene and to avoid unwanted calories use healthy food and avoid the oily fast food.</p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("          \n");
      out.write("</div>\n");
      out.write("      </div>\n");
      out.write("      </div>   \n");
      out.write("      <!--card end-->\n");
      out.write("          <footer class=\"mt-3 \">\n");
      out.write("              <div class=\"row\">\n");
      out.write("                  <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                      <ul class=\"mt-4\">\n");
      out.write("                          <li><h5><u class=\"ud\">Tabib</u></h5></li>\n");
      out.write("                          <li><a href=\"#\" >Home</a></li>\n");
      out.write("                          <li><a href=\"#\">About Us</a></li>\n");
      out.write("                          <li><a href=\"#\">Health Care</a></li>\n");
      out.write("                          <li><a href=\"#\">Services</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                      <ul class=\"mt-4\">\n");
      out.write("                          <li><h5><u class=\"ud\">For Patients</u></h5></li>\n");
      out.write("                          <li><a href=\"#\">Search for Doctors</a></li>\n");
      out.write("                          <li><a href=\"#\">Search for Clinics</a></li>\n");
      out.write("                          <li><a href=\"#\">Search for Hospitals</a></li>\n");
      out.write("                          <li><a href=\"#\">Book Appointment</a></li>\n");
      out.write("                          \n");
      out.write("                      </ul>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                      <ul class=\"mt-4\">\n");
      out.write("                          <li><h5><u class=\"ud\">For Hospital</u></h5></li>\n");
      out.write("                          <li><a href=\"#\">Record</a></li>\n");
      out.write("                          <li><a href=\"#\">Doctor's Statement</a></li>\n");
      out.write("                          <li><a href=\"#\">Lab Reports</a></li>\n");
      out.write("                          <li><a href=\"#\">Payment History </a></li>\n");
      out.write("                      </ul>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                      <ul class=\"mt-4\">\n");
      out.write("                          <li><h5><u class=\"ud\">Contact Us</u></h5></li>\n");
      out.write("                          <li><a href=\"#\">Mail</a></li>\n");
      out.write("                          <li><a href=\"#\">Instagram</a></li>\n");
      out.write("                          <li><a href=\"#\">Facebook</a></li>\n");
      out.write("                          <li><a href=\"#\">LinkedIn</a></li>\n");
      out.write("                          <li><a href=\"#\">Feedback</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                  </div>\n");
      out.write("              </div><br>\n");
      out.write("              <div class=\"row\">\n");
      out.write("                  <p class=\"copyright\">Copyright &copy,Tabib .2019</p>\n");
      out.write("              </div>\n");
      out.write("          </footer>\n");
      out.write(" \n");
      out.write("      \n");
      out.write("     \n");
      out.write("      </div>\n");
      out.write("    <!-- Optional JavaScript -->\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" ></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" ></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");

}

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
