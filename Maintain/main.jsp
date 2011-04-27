<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>主页面</title>
</head>
<body>
		欢迎进入本页面，您已经通过验证，你的用户名是<%=session.getAttribute("uname")%><p>
		<A HREF="ItemAdding.jsp">发表物品</A>
		<A HREF="Item.jsp">查看物品</A>
		<A HREF="/upload/upload.htm">上传物品</A>		
</body>
</html>