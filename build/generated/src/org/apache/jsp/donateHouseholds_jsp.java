package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class donateHouseholds_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      DAO.HouseHoldDAO hobj = null;
      synchronized (_jspx_page_context) {
        hobj = (DAO.HouseHoldDAO) _jspx_page_context.getAttribute("hobj", PageContext.PAGE_SCOPE);
        if (hobj == null){
          hobj = new DAO.HouseHoldDAO();
          _jspx_page_context.setAttribute("hobj", hobj, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if (session.getAttribute("userid") != null) {
        
      out.write("\n");
      out.write("        <form action=\"Controller.jsp\" method=\"get\" enctype=\"multipart/form-data\">\n");
      out.write("            Item House-waste:-  <input type=\"text\" name=\"itemname\"><br>\n");
      out.write("            Item Description:-<input type=\"text\" name=\"description\" ><br>\n");
      out.write("            Select Type <br><select name=\"type\">\n");
      out.write("                <option value=\"furniture\">Furniture</option>\n");
      out.write("                <option value=\"utensils\">Any Kitchen items</option>\n");
      out.write("                <option value=\"cloaths\">Cloaths</option>\n");
      out.write("                <option value=\"toys\">Toyes</option>\n");
      out.write("                <option value=\"others\">Any other HouseHolds</option>\n");
      out.write("            </select>\n");
      out.write("            <input type=\"hidden\" value=\"");
      out.print(session.getAttribute("userid"));
      out.write("\" name=\"userid\">\n");
      out.write("            <input type=\"hidden\" value=\"houseWaste\" name=\"page\">\n");
      out.write("            <input type=\"submit\" value=\"Donate\">\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("            <div>\n");
      out.write("                <form action=\"Controller.jsp\" method=\"get\">\n");
      out.write("                    Select Type <br><select name=\"type\">\n");
      out.write("                <option value=\"furniture\">Furniture</option>\n");
      out.write("                <option value=\"utensils\">Any Kitchen items</option>\n");
      out.write("                <option value=\"cloaths\">Cloths</option>\n");
      out.write("                <option value=\"toys\">Toys</option>\n");
      out.write("                <option value=\"others\">Any other HouseHolds</option>\n");
      out.write("                    </select><br>\n");
      out.write("                    <label>Select your area</label><br>\n");
      out.write("                    <select name=\"area\">\n");
      out.write("                       ");

                ArrayList<String> areaList=hobj.getAllLocality();
                for(int i=0;i<areaList.size();i++)
                {
                    
      out.write("\n");
      out.write("                    <option value=\"");
      out.print(areaList.get(i));
      out.write('"');
      out.write('>');
      out.print(areaList.get(i));
      out.write("</option>\n");
      out.write("                    ");

                }

      out.write(" \n");
      out.write("                    </select>\n");
      out.write("                    <input type=\"submit\" value=\"submit\">\n");
      out.write("                    <input type=\"hidden\" value=\"houseRetrive\"\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        ");

            } else {
                response.sendRedirect("login.jsp");
            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
