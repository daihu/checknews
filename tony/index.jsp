<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>

<jsp:useBean id="conn" scope="page" class="news.conn" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>查用户ID</title>
</head>
<body>
	<center>
		<h2>查询ID</h2>
		<form action="showresulet.jsp" method="post">
			<Input type="text" name="uid" maxlength=8 style="width: 150">

			<br> <Input type="submit" value="登陆">
		</form>


	</center>
</body>
</html>