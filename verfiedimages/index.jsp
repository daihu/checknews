<%@ page contentType="text/html;charset=gb2312" %>
<!DOCTYPE HTML PUBLIC "-//W 3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��֤������ҳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
</head>
<body>
<form method=post action="check.jsp">
<table>
<tr>
<td align=left>ϵͳ��������֤�룺</td>
<td><img border=0 src="/GetValitdateImage" id="code"  onclick="$('#code').attr('src','/GetValitdateImage?k='+(icode++))"  width="68" height="31" /></td>
</tr>
<tr>
<td align=left>�����������֤�룺</td>
<td><input type=text name=rand maxlength=4 value=""></td>
</tr>
<tr>
<td colspan=2 align=center><input type=submit value="�ύ���"></td>
</tr>
</form>
</body>
</html>