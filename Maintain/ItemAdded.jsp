<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>发表文章中.....</title>
</head>
<body>
<% 
    String DBDRIVER = "com.mysql.jdbc.Driver" ; 
    String DBURL = "jdbc:mysql://localhost:3306/test"; 
    //ResultSet rs = null ; 
    //String username=null;
    //String password=null;
    String id = request.getParameter("id");
    String tittle = request.getParameter("tittle");
    String content = request.getParameter("content");
    String author = request.getParameter("author");
    String time = request.getParameter("time");
    String keyword = request.getParameter("keyword");
    String type = request.getParameter("type");
    String userName="root";
    String userpasswd="111111";
    String dbName="test";
    String
        url="jdbc:mysql://localhost:3306/"+dbName+"?user="+userName+"&password="+userpasswd+"&useUnicode=true&characterEncoding=GB2312";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn =DriverManager.getConnection(url) ; 
        String sql = "insert into news  (id,tittle,content,author,time,keyword,type) values (?,?,?,?,?,?,?)";
        PreparedStatement stat=conn.prepareStatement(sql);
    Statement st=null;
    boolean flag=true;
         out.println("<script>alert('谢谢注册，请登陆');location.replace('include.jsp')</script>");

    rs.close() ;
    conn.close() ; 
    
    
  %>
</body>
</html>