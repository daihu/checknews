<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ page import = "java.sql.*" %>
<!-- �����ӦJavaBean�Ķ��� -->
<jsp:useBean id="conn" scope="page" class="news.conn"/>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>������ϸ����</title>
<style>
<!--
A:link {
	COLOR: #993399
}
.s {
	FONT-SIZE: 13px; LINE-HEIGHT: 170%; FONT-FAMILY: "����"
}
.title {
	FONT-WEIGHT: bold; FONT-SIZE: 18px; COLOR: #000000; FONT-FAMILY: "Verdana", "Arial"
}
.title {
	FONT-WEIGHT: bold; FONT-SIZE: 18px; COLOR: #000000; FONT-FAMILY: "Verdana", "Arial"
}
A {
	COLOR: #333333; TEXT-DECORATION: none
}
A {
	COLOR: #333333; TEXT-DECORATION: none
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
    <div class="title" align="center" style="width: 603; height: 36">
    <%
    	String id = "";
		String keyword = "";
		String rplContent ="";
		ResultSet rs;
        String strSql=null;
        id = request.getParameter("newsId");//get��ʽ�õ�ҳ�洫�ݵĲ���
		
        strSql = "select * from news where id=" + id ;	 //��ȡָ��id�����ż�¼
		rs = conn.executeQuery(strSql);
		    
		if   (rs.next()){
			keyword=rs.getString("keyword");
	%>  
    		<%=rs.getString("Title")%>
    </div>
    <%	
			rplContent = rs.getString("content").replaceAll("\n","<br>");	//�����з�����
	%>    
    <hr align="center" width="490" noShade SIZE="1">
    <p><br>				<!-- ��ʾ�������� -->
    &nbsp;&nbsp;&nbsp; &nbsp;<span style="font-size: 9pt"><%=rplContent%><p>��</td>
  </tr>
  <tr>
    <td width="13%">��</td>
    <td width="87%">
		<!-- ��ʾ������� -->
    <span style="font-size: 9pt">������ţ�</span><p><span class="s">
    
	<%
	strSql = "select * from news where id<>" + id +" and title like '%" 
			+ keyword + "%' order by time desc";		  //��ѯ�������
	rs = conn.executeQuery(strSql);

	while  (rs.next()){
    %>    
    
	<A href="newsContent.jsp?newsId=<%=rs.getInt("id")%>"><%=rs.getString("Title")%></A>     
		<%=rs.getDate("time")%> <br>
    
 	<%
		} 
	}
	%>    
    </span></td>
  </tr>
</table>
<p align="center">Study Online��Ȩ����</p>
<p align="center">��</p>

</body>
</html>