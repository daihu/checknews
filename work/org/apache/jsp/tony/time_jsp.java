package org.apache.jsp.tony;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class time_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.List<java.lang.String> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.List<java.lang.String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=gb2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/jquery-1.6.2.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/jquery-ui-1.8.16.custom.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("\t$(function() {\r\n");
      out.write("\t\t$( \"#datepicker\" ).datepicker();\r\n");
      out.write("\t\t$( \"#format\" ).change(function() {\r\n");
      out.write("\t\t\t$( \"#datepicker\" ).datepicker( \"option\", \"dateFormat\", $( this ).val() );\r\n");
      out.write("\t\t});\r\n");
      out.write("\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<h5>查询ID</h5>\r\n");
      out.write("<Input type=\"text\" name=\"userid\" maxlength=8 style=\"width: 150\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"demo\">\r\n");
      out.write("\r\n");
      out.write("<p>Date: <input type=\"text\" id=\"datepicker\" size=\"30\"/></p>\r\n");
      out.write("\r\n");
      out.write("<p>Format options:<br />\r\n");
      out.write("\t<select id=\"format\">\r\n");
      out.write("\t\t<option value=\"mm/dd/yy\">Default - mm/dd/yy</option>\r\n");
      out.write("\t\t<option value=\"yy-mm-dd\">ISO 8601 - yy-mm-dd</option>\r\n");
      out.write("\t\t<option value=\"d M, y\">Short - d M, y</option>\r\n");
      out.write("\t\t<option value=\"d MM, y\">Medium - d MM, y</option>\r\n");
      out.write("\t\t<option value=\"DD, d MM, yy\">Full - DD, d MM, yy</option>\r\n");
      out.write("\t\t<option value=\"'day' d 'of' MM 'in the year' yy\">With text - 'day' d 'of' MM 'in the year' yy</option>\r\n");
      out.write("\t</select>\r\n");
      out.write("</p>\r\n");
      out.write("\r\n");
      out.write("</div><!-- End demo -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"demo-description\">\r\n");
      out.write("<p>Display date feedback in a variety of ways.  Choose a date format from the dropdown, then click on the input and select a date to see it in that format.</p>\r\n");
      out.write("</div><!-- End demo-description -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
