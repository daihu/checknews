<%@ page language="java" pageEncoding="GBK"%>
<html>
	<head>
		<title>JSP for IssueTopicForm form</title>
		<link rel="stylesheet" type="text/css" href="../css/css1.css">
		<script type="text/javascript">
			function callback(msg,val)    
			{       
                      
				var path = "./upload/";
				var valpic = "<img alt='"+msg+"' src='"+path+val+"'/>";
                                //�����жϲ���val�Ƿ����error��������ھͲ���ͼƬ��ǩ

                                if(val=="error"){
                                     valpic = "";
                                }    
				document.getElementById("topicContent").value+=valpic+'</br>';
				
			    //document.getElementById("file").outerHTML = document.getElementById("file").outerHTML;    
			    alert(msg);
			    document.getElementById("msg").innerHTML = "<font color=red>"+msg+"</font>";
			    document.getElementById("file").value="";    
			}   
</script>
	</head>
	<body>
		<%
			int mod_id = Integer.parseInt(request.getParameter("mod_id"));
		%>
		<html:form action="/issueTopic">
			<table id="mytable" cellspacing="0">
				<tr>
					<td>
						���⣺
						<html:text property="topicTitle" styleClass="biaoti" />
						<input type="hidden" name="mod_id" value="<%=mod_id%>" />
					</td>
				</tr>
				<tr>
					<td>
						<html:textarea property="topicContent" styleClass="editTextarea" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="����" class="btn" />
					</td>
				</tr>
			</table>
		</html:form>

		<form action="../topic/upload.jsp" id="form1" name="form1"
			enctype="multipart/form-data" method="post" target="hidden_frame">
			<input type="file" name="file" id="file" style="width: 450"/>
			<INPUT type="submit" value="�ϴ��ļ�">
			<span id="msg"></span>
			<br />
			<font color="red">֧��gif,jpeg,png,bmpͼƬ���ϴ�</font>
			<iframe name='hidden_frame' id="hidden_frame"></iframe>
		</form>
	</body>
</html>

