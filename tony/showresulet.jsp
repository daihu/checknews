<%@ page contentType="text/html; charset=gb2312" %>

<%@ page language="java" %>

<%@ page import="com.mysql.jdbc.Driver" %>

<%@ page import="java.sql.*" %>

<%
	//����������

	String driverName = "com.mysql.jdbc.Driver";

	//���ݿ��û���

	String userName = "root";

	//����

	String userPasswd = "111111";

	//���ݿ���

	String dbName = "zhazh";

	//����

	String tableName = "m_user_account";

	//�����ַ���

	String url = "jdbc:mysql://localhost/" + dbName + "?user="
			+ userName + "&password=" + userPasswd;

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	Connection connection = DriverManager.getConnection(url);

	Statement statement = connection.createStatement();

	String sql = "SELECT id,accountType,loginname,password,userId FROM "
			+ tableName;

	ResultSet rs = statement.executeQuery(sql);

	//������ݽ������

	ResultSetMetaData rmeta = rs.getMetaData();

	//ȷ�����ݼ������������ֶ���

	int numColumns = rmeta.getColumnCount();

	// ���ÿһ������ֵ

	out.print("id");

	out.print("|");

	out.print("num");

	out.print("<br>");

	while (rs.next()) {

		out.print(rs.getString(1) + " ");

		out.print("|");

		out.print(rs.getString(2));

		out.print("<br>");

	}

	out.print("<br>");

	rs.close();

	statement.close();

	connection.close();
%>