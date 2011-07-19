<%@ page contentType="text/html; charset=gb2312" %>
<%@ page language="java" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<table   border= "1 "   width= "100% "   cellspacing= "0 "   cellpadding= "0 "   align= "center "   bordercolorlight= "#ccccff "   bordercolordark= "#fffcccc ">
<tr   bgcolor= "#ffffff ">
<td   width= "15 "   height= "25 "   align= "center "> <i> 用户ID </i> </td>
<td   width= "18 "   height= "25 "   align= "center "> <i> 帐房类型 </i> </td>
<td   width= "20 "   height= "25 "   align= "center "> <i> 登录名 </i> </td>
<td   width= "20 "   height= "25 "   align= "center "> <i> 密码 </i> </td>

<%
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

		%>
			 <tr> <td   width="15"> <%out.println(rs.getInt( "id")); %></td>
			 <td   width="15"> <%out.println(rs.getString( "accountType")); %></td>
			 <td   width="15"> <%out.println(rs.getString( "loginname")); %></td>
			 <td   width="15"> <%out.println(rs.getString( "password")); %></td></tr>
<%
	}
		%><br><%

	rs.close();

	statement.close();

	connection.close();
%>