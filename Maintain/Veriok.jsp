<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
  <base href="<%=basePath%>">

  <title>My JSP 'register.jsp' starting page</title>

  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <!--
 <link rel="stylesheet" type="text/css" href="styles.css">
 -->

 </head>
 <body>
  <form action="UserRegister" name="form" mothod="post"
   onsubmit="return checkForm(this)">
   <table width="60%" border="1">
    <tr>
     <td>
      <div align="center">
       <font>用户登陆</font>
      </div>
     </td>
    </tr>
    <tr align="left">
     <td>
      用户帐号：
      <input type="text" name="userid">
     </td>
    </tr>
    <tr align="left">
     <td>
      密&nbsp;&nbsp;码：
      <input type="password" name="userpassword">
     </td>
    </tr>
    <tr align="left">
     <td>
      密码验证：
      <input type="password" name="reuserpassword">
     </td>
    </tr>
    <tr align="left">
     <td>
      性&nbsp;&nbsp;别：
      <input type="radio" name="unit" checked="true" value="M">
      男
      <input type="radio" name="unit" value="FM">
      女
     </td>
    </tr>
    <tr align="left">
     <td>
      姓名：
      <input type="text" name="username">
     </td>
    </tr>
    <tr align="left">
     <td>
      出生年月:
      <input type="text" name="userbirthday"
       onchange="return checkdate()">
      (格式：年-月-日)
     </td>
    </tr>
    <tr align="left">
     <td>
      找回密码：
      <input type="password" name="userfindpassword">
     </td>
    </tr>
    <tr></tr>
    <tr align="left">
     <td>
      邮箱:
      <input type="text" name="usermail">
     </td>
    </tr>
    <tr align="center">
     <td>
      <input type="submit" value="注册" onclick="false">
     </td>
    </tr>
   </table>
  </form>
  
<script type="text/javascript">
     
      function checkForm(form){
          if(form.userid.value==""){
             alert("用户名不能为空！");
             return false;
          }
          else if(form.userpassword.value==""){
             alert("密码不能为空！");
             return false;
          }
          else if(form.userpassword.value!=form.reuserpassword.value){
             alert("密码输入不一致！");
             return false;
          }
          else if(form.username.value=="" || form.userbirthday.value=="" ||
                  form.userfindpassword.value=="" || form.usermail.value==""){
             alert("有属性为空，请填写完整！");
             return false;
          }
      }
     
      function   checkdate(){  
       var sYMD = document.form.userbirthday.value.split("-");  
       var sDate = new Date(parseInt(sYMD[0],10),parseInt(sYMD[1],10)-1,parseInt(sYMD[2],10));  
       if (!(document.form.userbirthday.value == sDate.getFullYear() + "-"
              + (sDate.getMonth()+1) + "-" + sDate.getDate())){  
            alert("发文时间必须是合法日期!");  
            document.form.userbirthday.focus();  
            return  false;  
       }  
       else{
             return true;
       }
      }  
      </script>
 </body>
</html>