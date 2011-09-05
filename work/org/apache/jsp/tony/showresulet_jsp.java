package org.apache.jsp.tony;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.mysql.jdbc.Driver;
import java.sql.*;

public final class showresulet_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table   border= \"1 \"   width= \"100% \"   cellspacing= \"0 \"   cellpadding= \"0 \"   align= \"center \"   bordercolorlight= \"#ccccff \"   bordercolordark= \"#fffcccc \">\r\n");
      out.write("<tr   bgcolor= \"#ffffff \">\r\n");
      out.write("<td   width= \"15 \"   height= \"25 \"   align= \"center \"> <i> 用户ID </i> </td>\r\n");
      out.write("<td   width= \"18 \"   height= \"25 \"   align= \"center \"> <i> 帐房类型 </i> </td>\r\n");
      out.write("<td   width= \"20 \"   height= \"25 \"   align= \"center \"> <i> 登录名 </i> </td>\r\n");
      out.write("<td   width= \"20 \"   height= \"25 \"   align= \"center \"> <i> 密码 </i> </td>\r\n");
      out.write("\r\n");

String id = request.getParameter("userid");
String driverName = "com.mysql.jdbc.Driver";
String userName = "root";
String userPasswd = "111111";
String dbName = "zhazh";
String tableName = "m_user_account";
String url = "jdbc:mysql://localhost/" + dbName + "?user="
		+ userName + "&password=" + userPasswd;
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = DriverManager.getConnection(url);
Statement statement = connection.createStatement();
String sql = "select id,accountType,loginname,password from m_user_account where userId= "
			+id ;
ResultSet rs = statement.executeQuery(sql);

while (rs.next()) {

		
      out.write("\r\n");
      out.write("\t\t\t <tr> <td   width=\"15\"> ");
out.println(rs.getInt( "id")); 
      out.write("</td>\r\n");
      out.write("\t\t\t <td   width=\"15\"> ");
out.println(rs.getString( "accountType")); 
      out.write("</td>\r\n");
      out.write("\t\t\t <td   width=\"15\"> ");
out.println(rs.getString( "loginname")); 
      out.write("</td>\r\n");
      out.write("\t\t\t <td   width=\"15\"> ");
out.println(rs.getString( "password")); 
      out.write("</td></tr>\r\n");

	}
		
      out.write("<br>");


	rs.close();

	statement.close();

	connection.close();

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
