<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ page import="java.sql.*" %>
<!-- �����ӦJavaBean�Ķ��� -->
<jsp:useBean id="conn" scope="page" class="news.conn"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>

<% //����������ݿ⣬�õ����ǣ�hot news���������ݣ��������type��ȡֵΪ1��
		ResultSet rs;
        String strSql=null;
		
        strSql = "select * from news ";	//��ȡ����type��ȡֵΪ1��������Ϣ
		rs = conn.executeQuery(strSql);
		    
		while  (rs.next()){ //��ʾ����hot news       
    %>
    <span class="s">&nbsp;<a href="newsContent.jsp?newsId=<%=rs.getInt("id")%>"><%=rs.getString("title")%></a><br>
    <%
        }
    %>

</body>
</html>