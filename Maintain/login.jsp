<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="java.sql.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>验证页面</title>
</head>
<body>
<%
String username = request.getParameter("uid");
String password = request.getParameter("upwd");
if(username != null && !username.equals("")){
  try{
	/*
	 * 连接数据库
	 */
	Class.forName("org.gjt.mm.mysql.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/test","root","111111");		    
	Statement stmt=conn.createStatement();
	String sql = "select * from users where username='" + username + "'";//注意此处的转义字符
    sql += " and password='" + password + "'";  //准备查询语句
    ResultSet rs=stmt.executeQuery( sql );
    if( rs.next() ){//如果库中存在对应的用户名和密码，则跳转到main.jsp 
    	session.setAttribute("uname",username);
%>  
		<jsp:forward page="main.jsp"/> 
<%
    }else
 		out.println("错误的用户名和密码");  //验证未通过，显示错误信息
    	out.println("<a href=index.html>返回</a>"); 
	}
  catch(Exception ee){
	    ee.printStackTrace();
  } 
}
else{
	out.println("请先登录！");  //验证未通过，显示错误信息
	out.println("<a href=index.html>返回</a>"); 
}
%>
</body>
</html>
