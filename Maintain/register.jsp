<%@ page language="java" import="java.util.*" pageEncoding="GB2312" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<html>
  <head>
    
    <title>зЂВс</title>

  </head>
  
  <body>
  <% 
    String DBDRIVER = "com.mysql.jdbc.Driver" ; 
    String DBURL = "jdbc:mysql://localhost:3306/test"; 
    ResultSet rs = null ; 
    //String username=null;
    //String password=null;
    String username = request.getParameter("uname");
    String accounttype = request.getParameter("uaccount");
    String password = request.getParameter("upassword");
    String userName="root";
    String userpasswd="111111";
    String dbName="test";
    String
        url="jdbc:mysql://localhost:3306/"+dbName+"?user="+userName+"&password="+userpasswd+"&useUnicode=true&characterEncoding=GB2312";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn =DriverManager.getConnection(url) ; 
        String sql = "insert into users  (username,accounttype,password) values (?,?,?)";
        PreparedStatement stat=conn.prepareStatement(sql);
    Statement st=null;
   
     
  %>
  </body>
</html>
