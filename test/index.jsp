<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>loginWindow</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><%@ include file="index.html" %>
  <a href="two.jsp">goto two--></a><br>
  this example show include works
  <jsp:include page="two.jsp" flush=true>
  <jsp:param name="a1" value=<%=request.getParameter("username") %>"/>
  <jsp:param name="a2" value=<%=request.getParameter("password") %>"/>
  </jsp:include>
   
  </body>
</html>