<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>用户注册</title>
</head>
<body>
<body>

<div align="center">
  <center>

<table border="1" cellspacing="1" width="760" height="146">
  <tr>
    <td width="140" height="69" background="images/pic2.gif">
      <p align="center"><font size="5" color="#FF0000"><b><i>Welcome to</i></b></font></p> 
    </td> 
    <td width="544" height="69" background="images/background2.gif"> 
      <p align="center"> <b><font face="华文隶书" size="6" color="#0000FF"> 会员信息登记表</font></b></p>
    </td>
  </tr>
  <tr>
    <td width="140" height="65" background="images/background3.gif" align="center">
      <p align="center">填写须知：</p>
      <p align="center">1：请如实填写会员表内的各项内容；</p>
      <p align="center">2：带有*号的内容必须填写；</p>
      <p align="center">3：密码填写长度最好在6-15位之间；</p>
      <p align="center">4：“个人爱好”可以选择多项内容；
    </td>
    <td width="544" height="65" background="images/background1.gif" align="center">
      <form method="POST" action="register1.jsp" name="register">
      <fieldset><legend> <b>注册用户信息</b></legend>
  </center>  
        <p align="left">*姓名：<input type="text" name="uname" size="12">&nbsp;</p>                                   
        <p align="left">&nbsp;帐号：<input type="text" name="uaccount" size="12">&nbsp;&nbsp;</p>                                   
        <p align="left">密码：
            <input type="password" name="upassword" size="25">
          </p>                                   
  <center>

          </fieldset>                               
      <p><input type="submit" value="开始注册" name="Submit1">                              
      <input type="reset" value="重新填写" name="Submit2"></p>                                   
     </form>                                   
    </td>                                   
  </tr>                                   
</table>                                   
  </center>  
</div>  
</body>                              
</body>
</html>