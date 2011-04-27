<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>发表文章</title>
</head>
<body>
<form name=frmtopic method="POST" action="insertmysql.jsp">
<p>文章ID：<input type="text" name="id" size="50"></p>
<p>文章标题：<input type="text" name="title" size="50"></p>
<p>文章内容：<textarea rows="5" name="content" cols="48"></textarea></p>
<p>文章作者：<input type="text" name="author" size="50"></p>
<p>文章发表时间：<input type="text" name="time" size="50"></p>
<p>文章关键字<input type="text" name="keyword" size="50"></p>
<p>文章类型<input type="text" name="keyword" size="50"></p>
<p>      
    
<input type="submit" value="提 交" name="sub"><input type="reset" value="全部重写" name="reset"></p>
</form>
</body>
</html>