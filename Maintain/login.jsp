<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="java.sql.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��֤ҳ��</title>
</head>
<body>
<%
String username = request.getParameter("uid");
String password = request.getParameter("upwd");
if(username != null && !username.equals("")){
  try{
	/*
	 * �������ݿ�
	 */
	Class.forName("org.gjt.mm.mysql.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/test","root","111111");		    
	Statement stmt=conn.createStatement();
	String sql = "select * from users where username='" + username + "'";//ע��˴���ת���ַ�
    sql += " and password='" + password + "'";  //׼����ѯ���
    ResultSet rs=stmt.executeQuery( sql );
    if( rs.next() ){//������д��ڶ�Ӧ���û��������룬����ת��main.jsp 
    	session.setAttribute("uname",username);
%>  
		<jsp:forward page="main.jsp"/> 
<%
    }else
 		out.println("������û���������");  //��֤δͨ������ʾ������Ϣ
    	out.println("<a href=index.html>����</a>"); 
	}
  catch(Exception ee){
	    ee.printStackTrace();
  } 
}
else{
	out.println("���ȵ�¼��");  //��֤δͨ������ʾ������Ϣ
	out.println("<a href=index.html>����</a>"); 
}
%>
</body>
</html>
