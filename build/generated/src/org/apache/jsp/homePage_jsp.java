package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pojo.*;

public final class homePage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      DAO.userDAO uobj = null;
      synchronized (_jspx_page_context) {
        uobj = (DAO.userDAO) _jspx_page_context.getAttribute("uobj", PageContext.PAGE_SCOPE);
        if (uobj == null){
          uobj = new DAO.userDAO();
          _jspx_page_context.setAttribute("uobj", uobj, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Home Page</title>\n");
      out.write("        <style>\n");
      out.write("            .head{\n");
      out.write("                background-color: midnightblue;\n");
      out.write("                position: fixed;\n");
      out.write("                top: 0;\n");
      out.write("                left:0;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 150px;\n");
      out.write("                z-index: 1;\n");
      out.write("            }\n");
      out.write("            .topmost{\n");
      out.write("                position:relative;\n");
      out.write("                display: inline-block;\n");
      out.write("                float: right;\n");
      out.write("                padding-bottom: 100px\n");
      out.write("            } \n");
      out.write("            .logo img {\n");
      out.write("                float: left;\n");
      out.write("                width: 120px;\n");
      out.write("                height: 120px;\n");
      out.write("                padding-left: 500px;\n");
      out.write("                padding-bottom: 50px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .logo h1 {\n");
      out.write("                position: relative;\n");
      out.write("                top: 60px;\n");
      out.write("                left: 10px;\n");
      out.write("            }\n");
      out.write("            .im \n");
      out.write("            {\n");
      out.write("                float: right;\n");
      out.write("                padding-right: 60px;\n");
      out.write("                top:0;\n");
      out.write("            }\n");
      out.write("            .im img\n");
      out.write("            {\n");
      out.write("                cursor: pointer;\n");
      out.write("                border-radius: 50%;\n");
      out.write("                border:2px solid black;\n");
      out.write("            }\n");
      out.write("            .option\n");
      out.write("            {  \n");
      out.write("                width:20px;\n");
      out.write("                background-color:black;\n");
      out.write("                border:1px solid white;\n");
      out.write("                border-radius:10px;\n");
      out.write("                width:130px;\n");
      out.write("                display: none;\n");
      out.write("                position: absolute;\n");
      out.write("                z-index: 1;\n");
      out.write("            }\n");
      out.write("            .option a{\n");
      out.write("                text-align:center;\n");
      out.write("                color: white;\n");
      out.write("                padding:12px 12px;\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            .option a:hover\n");
      out.write("            {\n");
      out.write("                background-color: blue;\n");
      out.write("            }\n");
      out.write("            .topmost:hover .option\n");
      out.write("            {\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            .side-content\n");
      out.write("            {\n");
      out.write("                height: 100%;\n");
      out.write("                width: 220px;\n");
      out.write("                position: fixed;\n");
      out.write("                z-index: 1;\n");
      out.write("                top:0;\n");
      out.write("                left: 0;\n");
      out.write("                background-color: steelblue;\n");
      out.write("                overflow-x: hidden;\n");
      out.write("                padding-top: 180px;\n");
      out.write("                opacity:.9;\n");
      out.write("            }\n");
      out.write("            .side-content a{\n");
      out.write("                margin: 16px;\n");
      out.write("                padding: 6px 8px 6px 16px;\n");
      out.write("                font-size: 25px;\n");
      out.write("                color:wheat;\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            .side-content a:hover\n");
      out.write("            {\n");
      out.write("                background-color: black;\n");
      out.write("            }\n");
      out.write("            .inside-content\n");
      out.write("            {\n");
      out.write("                padding-left: 35%;\n");
      out.write("                padding-top: 5%;\n");
      out.write("            }\n");
      out.write("            .inside-content\n");
      out.write("            {\n");
      out.write("                overflow: auto;\n");
      out.write("                padding-top: 15%\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body style=\"background-color:#f3eed6\">\n");
      out.write("        ");

            if (session.getAttribute("userStatus") != null) {
                if (session.getAttribute("userStatus") == "1") {
                    session.setAttribute("userid",session.getAttribute("userid"));

        
      out.write("\n");
      out.write("        <div class=\"head\">\n");
      out.write("            <div class=\"logo\">\n");
      out.write("                <img src=\"helping hand.jpg\" width=\"100\" height=\"100\" name=\"logo\"><h1>HELPING HAND</h1>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"topmost\">\n");
      out.write("                <div class=\"im\">\n");
      out.write("                    <img src=\"Screenshot_2018-12-25-00-31-22-882_com.tencent.ig.png\" width=\"60\" height=\"60\"><h2 style=\"float:left\">");
      out.print(uobj.getName(Integer.parseInt(session.getAttribute("userid").toString())));
      out.write(" &nbsp;</h2>\n");
      out.write("                    <div class=\"option\">\n");
      out.write("                        <a href=\"profile.jsp\">Profile</a>\n");
      out.write("                        <a href=\"feedback.jsp\">Feedback</a>\n");
      out.write("                        <a href=\"Controller.jsp?page=logout\">Log Out</a>\n");
      out.write("\n");
      out.write("                    </div></div>\n");
      out.write("            </div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"side-content\">\n");
      out.write("            <a href=\"homePage.jsp\">Home</a>\n");
      out.write("            <a href=\"donatefood.jsp\">Donate Food</a>\n");
      out.write("            <a href=\"donateEWaste.jsp\">Donate E-Waste</a>\n");
      out.write("            <a href=\"donateHouseholds.jsp\">Donate Households</a>\n");
      out.write("            <a href =\"Educate.html\">Learn About Waste Management</a>\n");
      out.write("        </div> \n");
      out.write("\n");
      out.write("        <div class=\"inside-content\">\n");
      out.write("            <div class=\"inside\">\n");
      out.write("                <h3 style=\"display: inline-block \">This web site is for helping poor peoples and also for saving environment<br>&nbsp;&nbsp;&nbsp;&nbsp; from e-waste by donating thing which you don't want any<br> more\n");
      out.write("                    give it to other who wants that.Be part of this startup and help other.</h3><br><br>\n");
      out.write("                <h3 style=\"display: inline-block;padding-left: 10% \"> \" By Donating, you will also be supporting <br>&nbsp;&nbsp;&nbsp;your own community and literally saving<br>&nbsp;&nbsp;&nbsp;&nbsp;lives with every pint donate. \"<br>\n");
      out.write("                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by- Pam Henry\n");
      out.write("                </h3>\n");
      out.write("                <br>\n");
      out.write("                <br><br></div>\n");
      out.write("            <div class=\"inside-img\">\n");
      out.write("                <img src=\"23.jpg\" width=\"200\" height=\"200\">\n");
      out.write("                <img src=\"14.jpg\" width=\"200\" height=\"200\">\n");
      out.write("                <img src=\"13.jpg\" width=\"200\" height=\"200\">\n");
      out.write("                <img src=\"12.jpg\" width=\"200\" height=\"200\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
            } else {
                    response.sendRedirect("login.jsp");
                }
            } else {
                response.sendRedirect("login.jsp");
            }
        
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
