<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>��������</title>
</head>
<body>
<form name=frmtopic method="POST" action="insertmysql.jsp">
<p>����ID��<input type="text" name="id" size="50"></p>
<p>���±��⣺<input type="text" name="title" size="50"></p>
<p>�������ݣ�<textarea rows="5" name="content" cols="48"></textarea></p>
<p>�������ߣ�<input type="text" name="author" size="50"></p>
<p>���·���ʱ�䣺<input type="text" name="time" size="50"></p>
<p>���¹ؼ���<input type="text" name="keyword" size="50"></p>
<p>��������<input type="text" name="keyword" size="50"></p>
<p>      
    
<input type="submit" value="�� ��" name="sub"><input type="reset" value="ȫ����д" name="reset"></p>
</form>
</body>
</html>