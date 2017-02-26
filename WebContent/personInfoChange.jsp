<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Qjob/我的账号/编辑</title>
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
</style>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#password").click(function(){
		 $("#password").attr("type", "text")
	});
		$("#password").blur(function(){
			 $("#password").attr("type", "password")
		});
	
	});
</script>
</head>
<body>	
	<div class="page-content">
		<div class="content-nav">个人中心 >帐号信息</div>		
                              				
					<fieldset>
				<legend>账号信息</legend>
				<form action="updateUser.action" method="post">
				<table class="formtable" style="width:50%">
					<tr>
					<font color="red"><b>${msg }</b></font>
					<td>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
						
						
						<td><input type="text" id="username" name="username" value="${u.username }" maxlength="20" disabled="true " /><div id="validateMessage"></div></td>
					</tr>
					
					<tr>
						<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
						<td><input type="password" id="password" name="password" maxlength="20" value="${u.password }"
							placeholder=""  /></td>
					</tr>
					
					<tr>
						<td>联系电话：</td>
						<td><input type="text" id="userphone" name="userphone" value="${u.userphone }"maxlength="20" /></td>
					</tr>
					<tr>
					<td>电子邮箱：</td>
						<td><input type="text" id="useremail" name="useremail" value="${u.useremail }" maxlength="20" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center"> 
						<input type="submit" value="提交" class="clickbutton" />
                        <input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>
                        </td>
						
					</tr>
				</table>
				</form>
					</fieldset>				
	</div>
	
</body>
</html>