<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ page import = "java.sql.*" %>
<!-- �����ӦJavaBean�Ķ��� -->
<jsp:useBean id="conn" scope="page" class="news.conn"/>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>������ҳ</title>
<style>
<!--
A:link {
	COLOR: #993399
}
.s {
	FONT-SIZE: 13px; LINE-HEIGHT: 170%; FONT-FAMILY: "����"
}
-->
</style>
</head>

<body>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="100%">
    <img border="0" src="images/ruanjian.jpg" width="770" height="154"></td>
  </tr>
  <tr>
    <td width="100%">��</td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber2">
  <tr>
    <td width="13%">��</td>
    <td width="87%">
    <img border="0" src="images/mid-rdxw2.gif" width="101" height="18"><p>

    <%//����������ݿ⣬�õ����ǣ�hot news���������ݣ��������type��ȡֵΪ1��
		ResultSet rs;
        String strSql=null;
		
        strSql = "select * from news where type=1 order by time desc";	//��ȡ����type��ȡֵΪ1��������Ϣ
		rs = conn.executeQuery(strSql);
		    
		while  (rs.next()){//��ʾ����hot news       
    %>
            <span class="s">&nbsp;<a href="newsContent.jsp?newsId=<%=rs.getInt("id")%>"><%=rs.getString("Title")%></a><br>
    <%
        }
    %>
      

    <p>
    <img border="0" src="images/mid-hyxw2.gif" width="94" height="19"></p>    
    <%		
        strSql = "select * from news where type=2 order by time desc";	 //��ȡ����type��ȡֵΪ2��������Ϣ
		rs = conn.executeQuery(strSql);		    
		while  (rs.next()){       
    %>  
    		<span class="s">&nbsp;<a href="newsContent.jsp?newsId=<%=rs.getInt("id")%>"><%=rs.getString("Title")%></a><br>
    <%
       	}
    %>
    <p>��
    </td>
  </tr>
</table>

<p align="center">Study Online��Ȩ����</p>
<p align="center">��</p>

</body>

</html>
