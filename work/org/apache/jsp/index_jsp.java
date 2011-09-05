package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=GBK");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- 构造对应JavaBean的对象 -->\r\n");
      news.conn conn = null;
      conn = (news.conn) _jspx_page_context.getAttribute("conn", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (conn == null){
        conn = new news.conn();
        _jspx_page_context.setAttribute("conn", conn, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("<title>新闻首页</title>\r\n");
      out.write("<style>\r\n");
      out.write("<!--\r\n");
      out.write("A:link {\r\n");
      out.write("\tCOLOR: #993399\r\n");
      out.write("}\r\n");
      out.write(".s {\r\n");
      out.write("\tFONT-SIZE: 13px; LINE-HEIGHT: 170%; FONT-FAMILY: \"宋体\"\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse\" bordercolor=\"#111111\" width=\"100%\" id=\"AutoNumber1\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"100%\">\r\n");
      out.write("    <img border=\"0\" src=\"images/ruanjian.jpg\" width=\"770\" height=\"154\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"100%\">　</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse\" bordercolor=\"#111111\" width=\"100%\" id=\"AutoNumber2\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"13%\">　</td>\r\n");
      out.write("    <td width=\"87%\">\r\n");
      out.write("    <img border=\"0\" src=\"images/mid-rdxw2.gif\" width=\"101\" height=\"18\"><p>\r\n");
      out.write("\r\n");
      out.write("    ");
//下面访问数据库，得到的是：hot news的所有内容（表的类型type的取值为1）
		ResultSet rs;
        String strSql=null;
		
        strSql = "select * from news where type=1 order by time desc";	//获取类型type的取值为1的新闻信息
		rs = conn.executeQuery(strSql);
		    
		while  (rs.next()){//显示所有hot news       
    
      out.write("\r\n");
      out.write("            <span class=\"s\">&nbsp;<a href=\"newsContent.jsp?newsId=");
      out.print(rs.getInt("id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("Title"));
      out.write("</a><br>\r\n");
      out.write("    ");

        }
    
      out.write("\r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("    <p>\r\n");
      out.write("    <img border=\"0\" src=\"images/mid-hyxw2.gif\" width=\"94\" height=\"19\"></p>    \r\n");
      out.write("    ");
		
        strSql = "select * from news where type=2 order by time desc";	 //获取类型type的取值为2的新闻信息
		rs = conn.executeQuery(strSql);		    
		while  (rs.next()){       
    
      out.write("  \r\n");
      out.write("    \t\t<span class=\"s\">&nbsp;<a href=\"newsContent.jsp?newsId=");
      out.print(rs.getInt("id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("Title"));
      out.write("</a><br>\r\n");
      out.write("    ");

       	}
    
      out.write("\r\n");
      out.write("    <p>　\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<p align=\"center\">Study Online版权所有</p>\r\n");
      out.write("<p align=\"center\">　</p>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
