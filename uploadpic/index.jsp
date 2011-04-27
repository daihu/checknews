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
                                //这里判断参数val是否等于error，如果等于就不添图片标签

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
						标题：
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
						<input type="submit" value="发表" class="btn" />
					</td>
				</tr>
			</table>
		</html:form>

		<form action="../topic/upload.jsp" id="form1" name="form1"
			enctype="multipart/form-data" method="post" target="hidden_frame">
			<input type="file" name="file" id="file" style="width: 450"/>
			<INPUT type="submit" value="上传文件">
			<span id="msg"></span>
			<br />
			<font color="red">支持gif,jpeg,png,bmp图片的上传</font>
			<iframe name='hidden_frame' id="hidden_frame"></iframe>
		</form>
	</body>
</html>

