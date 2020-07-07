package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class donate_005frequest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

if(session.getAttribute("uname")==null || session.getAttribute("uname")=="")
{
    response.sendRedirect("login.html");
}
else{
    String uname=(String)session.getAttribute("uname");
     String gender=(String)request.getAttribute("gender");
    boolean ismale=false;
    if(gender.equalsIgnoreCase("male"))
    {
        ismale=true;
    }
    boolean isfemale=false;
    if(gender.equalsIgnoreCase("female"))
    {
        isfemale=true;
    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
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
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style-register.css\"/>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome-free-5.10.2-web/css/all.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome-free-5.10.2-web/css/all.min.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome-free-5.10.2-web/css/solid.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome-free-5.10.2-web/css/solid.min.css\" />\n");
      out.write("     <script defer src=\"/your-path-to-fontawesome/js/all.js\"></script> <!--load all styles -->\n");
      out.write("    \n");
      out.write("     <script src=\"https://kit.fontawesome.com/9945596943.js\"></script>\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Righteous&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <title>Donate Blood</title>\n");
      out.write(" </head>\n");
      out.write("  <body>\n");
      out.write("      <!-- navigation bar start-->\n");
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
      out.write("          <a class=\"nav-link mx-3\" href=\"index.jsp\">Home</a>\n");
      out.write("          </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link mx-3\" href=\"aboutus.html\">About Us</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link mx-3\" href=\"#\">Communicate</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link mx-3\" href=\"#\">Book Appointment</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link mx-3 active\" href=\"#\">Donate Blood</a>\n");
      out.write("      </li>\n");
      out.write("     \n");
      out.write("    </ul>\n");
      out.write("      <ul class=\"navbar-nav mr-4\">\n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle logout_btn\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("            ");
      out.print(uname);
      out.write("\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"profiledata\">My Profile</a>\n");
      out.write("            <a class=\"dropdown-item\" href=\"logout\">Log out</a>\n");
      out.write("        </div>\n");
      out.write("      </li>  \n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("  </div>\n");
      out.write("      <!-- navigation bar End-->\n");
      out.write("      <!--content start -->\n");
      out.write("     \n");
      out.write("\n");
      out.write("      <div class=\"\">\n");
      out.write("          <img src=\"images/blood_request_bg.jpg\"  class=\" dnt_rqs_bg\"/>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("           <div>\n");
      out.write("               <br/>\n");
      out.write("                <form class=\"register-box2\" method=\"post\" enctype=\"multipart/form-data\" action=\"blood_donate_data\">\n");
      out.write("                    <div class=\"col\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <img  class=\"register-logo mx-auto mt-2\" src=\"images/logo7.png\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"text-center mb-2 registerhere\">Blood Donor Registeration</div>\n");
      out.write("                    \n");
      out.write("  <div class=\"form-group row\">\n");
      out.write("    <label for=\"firstname\" class=\"col-sm-3 col-form-label\">First Name</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("        <input type=\"text\" class=\"form-control\" id=\"firstname\" placeholder=\"first name\" value=\"");
      out.print(request.getAttribute("fname"));
      out.write("\" name=\"firstname\" required>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("    <div class=\"form-group row\">\n");
      out.write("    <label for=\"lastname\" class=\"col-sm-3 col-form-label\">Last Name</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("      <input type=\"text\" class=\"form-control\" id=\"lastname\" placeholder=\"last name\" name=\"lastname\" value=\"");
      out.print(request.getAttribute("lname"));
      out.write("\" required>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("                         <div class=\"form-group row\">\n");
      out.write("    <label for=\"inputEmail3\" class=\"col-sm-3 col-form-label\">Email</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("        <input type=\"email\" class=\"form-control\" id=\"inputEmail3\" placeholder=\"Email\" name=\"email\" value=\"");
      out.print(uname);
      out.write("\" required>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("    <div class=\"form-group row\">\n");
      out.write("    <label for=\"mobileno\" class=\"col-sm-3 col-form-label\">Mobile No</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("      <input type=\"tel\"  required class=\"form-control\" id=\"mobileno\" name=\"mobileno\" placeholder=\"mobile no\"  value=\"");
      out.print(request.getAttribute("mobileno"));
      out.write("\" >\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <fieldset class=\"form-group\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <legend class=\"col-form-label col-sm-3 pt-0\">Gender</legend>\n");
      out.write("      <div class=\"col-sm-9 pr-2\">\n");
      out.write("        <div class=\"form-check\">\n");
      out.write("          <input class=\"form-check-input\" type=\"radio\" name=\"gender\" id=\"gridRadios1\" value=\"Male\" ");
      out.print((ismale)?"checked":"");
      out.write(">\n");
      out.write("          <label class=\"form-check-label\" for=\"gridRadios1\">\n");
      out.write("            Male\n");
      out.write("          </label>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-check\">\n");
      out.write("          <input class=\"form-check-input\" type=\"radio\" name=\"gender\" id=\"gridRadios2\" value=\"Female\" ");
      out.print((isfemale)?"checked":"");
      out.write(">\n");
      out.write("          <label class=\"form-check-label\" for=\"gridRadios2\">\n");
      out.write("            Female\n");
      out.write("          </label>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </fieldset>\n");
      out.write("  \n");
      out.write("   <div class=\"form-group row\">\n");
      out.write("    <label for=\"age\" class=\"col-sm-3 col-form-label\">Age</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("      <input type=\"text\" class=\"form-control\" id=\"age\" placeholder=\"Enter your Age\" name=\"age\" required>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("                        \n");
      out.write("  <div class=\"form-group row\">\n");
      out.write("    <label for=\"weight\" class=\"col-sm-3 col-form-label\">Current Weight</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("      <input type=\"text\" class=\"form-control\" id=\"weight\" placeholder=\"Enter your Real time weight\" name=\"weight\" required>\n");
      out.write("    </div>\n");
      out.write("  </div>          \n");
      out.write("                        \n");
      out.write("   <div class=\"form-group row\">\n");
      out.write("    <label for=\"bloodgroup\" class=\"col-sm-3 col-form-label\">Blood Group</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("       <select class=\"form-control\"  name=\"blood_group\" id=\"bloodgroup\">\n");
      out.write("      <option value=\"NA\">--select--</option>\n");
      out.write("           \n");
      out.write("      <option value=\"A+\">A RhD Positive (A+)</option>\n");
      out.write("      <option value=\"A-\">A RhD Negative (A-)</option> \n");
      out.write("      <option value=\"B+\">B RhD Positive (B+)</option>\n");
      out.write("      <option value=\"B-\">B RhD Negative (B-)</option>\n");
      out.write("      <option value=\"O+\">O RhD Positive (O+)</option>\n");
      out.write("      <option value=\"O-\">O RhD Negative (O-)</option>\n");
      out.write("      <option value=\"AB+\">AB RhD Positive (AB+)</option>\n");
      out.write("      <option value=\"AB-\">AB RhD Negative (AB-)</option>\n");
      out.write("    </select>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"receivedate\"class=\"col-sm-3 col-form-label\">Receive Date</label>\n");
      out.write("                            <div class=\"col-sm-9\">\n");
      out.write("                                <input type=\"date\" id=\"receivedate\" name=\"receive_date\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>                      \n");
      out.write("              \n");
      out.write("                         <div class=\"form-group row\">\n");
      out.write("    <label for=\"timeslot\" class=\"col-sm-3 col-form-label\">Time Slot</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("       <select class=\"form-control\"  name=\"timeslot\" id=\"timeslot\">\n");
      out.write("      <option value=\"NA\">--select--</option>\n");
      out.write("      <option value=\"10 AM to 11 AM \">10:00AM to 11:00AM</option>\n");
      out.write("      <option value=\"NA\">11:00AM to 12:00AM</option>\n");
      out.write("      <option value=\"NA\">12:00PM to 1:00PM</option>\n");
      out.write("      <option value=\"NA\">1:00PM to 2:00PM</option>\n");
      out.write("      <option value=\"NA\">2:00PM to 3:00PM</option>\n");
      out.write("      <option value=\"NA\">3:00PM to 4:00PM</option>\n");
      out.write("      <option value=\"NA\">4:00PM to 5:00PM</option>\n");
      out.write("      <option value=\"NA\">5:00PM to 6:00PM</option>\n");
      out.write("      <option value=\"NA\">6:00PM to 7:00PM</option>\n");
      out.write("      <option value=\"NA\">7:00PM to 8:00PM</option>\n");
      out.write("      \n");
      out.write("    </select>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("    \n");
      out.write("<div class=\"form-group row\">\n");
      out.write("    <label for=\"city\" class=\"col-sm-3 col-form-label\">City</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("       <select class=\"form-control\"  name=\"city\" id=\"city\">\n");
      out.write("      <option value=\"Vadodara\" ");
      out.print(request.getAttribute("city").equals("Vadodara")?"selected='selected'":"" );
      out.write(">Vadodara</option>\n");
      out.write("      <option value=\"Ahmedabad\" ");
      out.print(request.getAttribute("city").equals("Ahmedabad")?"selected='selected'":"" );
      out.write(">Ahmedabad</option>\n");
      out.write("      <option value=\"Surat\" ");
      out.print(request.getAttribute("city").equals("Surat")?"selected='selected'":"" );
      out.write(">Surat</option>\n");
      out.write("      <option value=\"Gandhinagar\" ");
      out.print(request.getAttribute("city").equals("Gandhinagar")?"selected='selected'":"" );
      out.write(">Gandhinagar</option>\n");
      out.write("      <option value=\"Rajkot\" ");
      out.print(request.getAttribute("city").equals("Rajkot")?"selected='selected'":"" );
      out.write(">Rajkot</option>\n");
      out.write("    </select>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\" form-group row\">\n");
      out.write("    <label for=\"validationTextarea\" class=\"col-sm-3 col-form-label\">Address</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("        <textarea class=\"form-control\" maxlength=\"130\" id=\"validationTextarea\" name=\"address\" placeholder=\"Enter your corresponding address\" required></textarea>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("    <div class=\"form-group row\">\n");
      out.write("    <label for=\"adhar\" class=\"col-sm-3 col-form-label\">Adhara No</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("      <input type=\"text\" class=\"form-control\" id=\"adhar\" placeholder=\"Enter Adhar No\" name=\"adhar\" required>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("    <div class=\"form-group row\">\n");
      out.write("    <label for=\"adharphoto\" class=\"col-sm-3 col-form-label\">Adhar Photo</label>\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("      <input id=\"adharphoto\" type=\"file\" name=\"adhar_img\" class=\"form-control-file\" id=\"exampleFormControlFile1\" accept=\"image/x-png,image/gif,image/jpeg/jfif\"/>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("  </div>\n");
      out.write("  <div class=\"form-group row\">\n");
      out.write("      <div class=\"col-sm-12\">\n");
      out.write("          <button type=\"submit\" class=\"mx-auto register-button\">Register</button>\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <br/>\n");
      out.write("            </form> \n");
      out.write("                    </div>\n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("            \n");
      out.write("     \n");
      out.write("    <!-- Optional JavaScript -->\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" ></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" ></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");

    }
    
      out.write('\n');
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
