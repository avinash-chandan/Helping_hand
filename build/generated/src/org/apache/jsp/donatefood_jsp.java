package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class donatefood_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      DAO.FoodDAO fobj = null;
      synchronized (_jspx_page_context) {
        fobj = (DAO.FoodDAO) _jspx_page_context.getAttribute("fobj", PageContext.PAGE_SCOPE);
        if (fobj == null){
          fobj = new DAO.FoodDAO();
          _jspx_page_context.setAttribute("fobj", fobj, PageContext.PAGE_SCOPE);
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
      out.write("             <div>\n");
      out.write("        <form action=\"Controller.jsp\" method=\"get\" enctype=\"multipart/form-data\">\n");
      out.write("            Food:- <br> <input type=\"text\" name=\"itemname\"><br>\n");
      out.write("            Item Description:-<br><input type=\"text\" name=\"description\" ><br>\n");
      out.write("            <input type=\"hidden\" value=\"");
      out.print(session.getAttribute("userid"));
      out.write("\" name=\"userid\">\n");
      out.write("            <input type=\"hidden\" value=\"ewaste\" name=\"page\">\n");
      out.write("            <br> <input type=\"submit\" value=\"Donate\">\n");
      out.write("            \n");
      out.write("        </form><br><br>\n");
      out.write("    </div>\n");
      out.write("        <div>\n");
      out.write("              <center>  <form action=\"Controller.jsp\" method=\"get\">\n");
      out.write("                    <label>Select your area</label><br>\n");
      out.write("                    <select name=\"area\">\n");
      out.write("                        ");

                ArrayList<String> areaList=fobj.getAllLocality();
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

      out.write("\n");
      out.write("                    </select><br><br>\n");
      out.write("                    <input type=\"submit\" value=\"Search\">\n");
      out.write("                </form></center>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
