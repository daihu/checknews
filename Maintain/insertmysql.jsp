<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>
<%
String driverName="com.mysql.jdbc.Driver";//����������
String userName="root";//���ݿ��û���
String userPasswd="111111";//����
String dbName="test";//���ݿ���
String tableName="news";//����
String url="jdbc:mysql://localhost:3306/"+dbName+"?user="+userName+"&password="+userPasswd;//�����ַ���
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection(url,"root","111111t");
Statement stmt=conn.createStatement();
//String name=request.getParameter("name");
//name=new String(name.getBytes("gbk"));
//String publisher=request.getParameter("publihser");
//publisher=new String(publisher.getBytes("gbk"));
//String price=request.getParameter("price");
//price=new String(price.getBytes("gbk"));
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String author = request.getParameter("author");
    String keyword = request.getParameter("keyword");
    String type = request.getParameter("type");

//if(name.equals("") || publisher.equals("")|| price.equals(""))
//{response.sendRedirect("MySQLInsert.jsp");}
//else{
String sql="insert into news  (title,content,author,time,keyword,type) values ('"+title+"','"+content+"','"+author+"',now(),'"+keyword+"',"+type+")";
stmt.executeUpdate(sql);
out.print("������ӳɹ�");
//}
stmt.close();
conn.close();//�ر����ӡ��ͷ���Դ
%>
</body>
</html>
</body>
</html>