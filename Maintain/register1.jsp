<%@ page language="java" import="java.util.*" pageEncoding="GB2312" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<html>
  <head>
    
    <title>ע��</title>

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
    boolean flag=true;
     try
    {
    Class.forName(DBDRIVER) ; 
    conn = DriverManager.getConnection(DBURL,"root","111111") ; 
    st=conn.createStatement();
    rs = st.executeQuery("select * from users") ; 
    while(rs.next()) 
    {
    if(username.equals(rs.getString(1))){
    out.println("<br><br><center><B>������ע��</B></center>");
    out.println("<script>alert('�Բ���,�û���"+username+"�Ѵ���');location.replace('zhuce.jsp');</script>");
    flag=false; 
    break;
    }
    }
    if (flag){
    stat=conn.prepareStatement("insert into users values(?,?,?)");
    stat.setString(1,username);
    stat.setString(2,accounttype);
    stat.setString(3,password);    
    stat.executeUpdate();
    out.println("<br><br><center><B>ע��ɹ�</B></center>");
    out.println("<br><br><center>�����û�����:"+username+"</center>");
    out.println("<br><center>����������: "+password+"</center>");
    stat.close();
    String name_reged=null;
    session.putValue("name_reged",username);
    out.println("<script>alert('ллע�ᣬ���½');location.replace('include.jsp')</script>");

    }
    rs.close() ;
    conn.close() ; 
    }
    catch(Exception e)
    {
        out.println(e);
    }
  %>
  </body>
</html>
