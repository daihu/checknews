<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ page import="java.sql.*" %>
<!-- 构造对应JavaBean的对象 -->
<jsp:useBean id="conn" scope="page" class="news.conn"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>

<% //下面访问数据库，得到的是：hot news的所有内容（表的类型type的取值为1）
		ResultSet rs;
        String strSql=null;
		
        strSql = "select * from news ";	//获取类型type的取值为1的新闻信息
		rs = conn.executeQuery(strSql);
		    
		while  (rs.next()){ //显示所有hot news       
    %>
    <span class="s">&nbsp;<a href="newsContent.jsp?newsId=<%=rs.getInt("id")%>"><%=rs.getString("title")%></a><br>
    <%
        }
    %>

</body>
</html>