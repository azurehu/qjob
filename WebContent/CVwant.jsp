<%@ page language="java" import="java.util.*,qjob.model.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%request.setCharacterEncoding("utf-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>项目经验编辑页面</title>
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
</style>

<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
	<div class="page-content">
		<div class="content-nav">个人中心 >我的简历>期望工作</div>
		<form action="updateCVwant.action" method="post">
			<fieldset>
				<legend>期望工作</legend>
                   <font color="red"><b>${requestScope.msg }</b></font>               
				<table class="formtable" style="width:50%">
					<tr>
						<td>姓名：</td>
						<td>${username }<div id="validateMessage"></div>
					</tr>	
					<tr>
						<td>期望职位：</td>
						<td>
						<input type="text" name="wposition" id="wposition" placeholder="请输期望职位"/>
						</td>
					</tr>
					<tr>
						<td>工作类别(实习/全职)：</td>
						<td>
						<input type="text" name="worktype" id="worktype" placeholder="请输入实习/全职"/>
						</td>
					<tr>
					<tr>
						<td>目标地点：</td>
						<td>
						<input type="text" name="wlocation" id="wlocation" placeholder="请输入目标地点"/>
						</td>
					</tr>
					<tr>
						<td>期望工资：</td>
						<td>
						<input type="text" name="wsalary" id="wsalary" placeholder="请输入期望工资"/>
						</td>
					</tr>
					<tr>
						<td>附加说明：</td>
						<td>
						<textarea name="adddescription" id="adddescription" cols="30" rows="10" placeholder="请输入内容"></textarea>
						</td>
					<tr>
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