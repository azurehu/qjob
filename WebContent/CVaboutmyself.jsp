<%@ page language="java" import="java.util.*,qjob.model.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%request.setCharacterEncoding("utf-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>自我描述编辑页面</title>
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
</style>

<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
	<div class="page-content">
		<div class="content-nav">个人中心 >我的简历>自我描述</div>
		<form action="updatePerdescription.action" method="post">
			<fieldset>
				<legend>自我描述</legend>
                   <font color="red"><b>${requestScope.msg }</b></font>               
				<table class="formtable" style="width:50%">
					<tr>
						<td>姓名：</td>
						<td>${username }<div id="validateMessage"></div>
					</tr>	
					<tr>
						<td>自我描述：</td>
						<td>
						<textarea name="perdescription" id="perdescription" cols="30" rows="10" placeholder="请输入内容"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center"> 
						<input type="submit" value="提交" class="clickbutton" />
                        <input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>
                        </td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>