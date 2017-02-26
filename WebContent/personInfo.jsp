<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Qjob/我的账号</title>
<link rel="stylesheet" href="styles/common.css" />


<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>	
	<div class="page-content">
		<div class="content-nav">个人中心 >帐号信息</div>		
                              				
					<fieldset>
				<legend>&nbsp;&nbsp;账号信息<a href="personInfoChange.action" target="main" >&nbsp;&nbsp;&nbsp;&nbsp;编辑&nbsp;&nbsp;</a></legend>
				
				<table class="formtable" style="width:50%">
				<tr>
					<td class="tdstyle">用户名：</td><td>${user.username }</td>
				</tr>
				<tr>
					<td class="tdstyle">电话：</td><td>${user.userphone }</td>
				</tr>
				<tr>
					<td class="tdstyle">邮箱：</td><td>${user.useremail }</td>
				</tr>
				<tr>
						<td colspan="2" align="center"> 
                        <input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>
                        </td>
						
					</tr>
				</table>
					</fieldset>				
	</div>
	
</body>
</html>