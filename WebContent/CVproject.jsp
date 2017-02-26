<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="utf-8" %>
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
		<div class="content-nav">个人中心 >我的简历>项目经验</div>
		<form action="insertCpe.action">
			<fieldset>
				<legend>教育经历</legend>
                   <font color="red"><b>${requestScope.msg }</b></font>               
				<table class="formtable" style="width:50%">
					<tr>
						<td>姓名：</td>
						<td>${username }<div id="validateMessage"></div>
					</tr>	
					<tr>
						<td>项目名称：</td>
						<td>
						<input type="text" name="porname" id="porname" placeholder="请输项目名称"/>
						</td>
					</tr>
					<tr>
						<td>负责内容：</td>
						<td>
						<input type="text"  name="duty" id="duty" placeholder="请输入您负责的内容"/>
						</td>
					<tr>
					<tr>
						<td>开始日期：</td>
						<td>
						<input type="date" name="starttime" id="starttime" >
						</td>
					</tr>
					<tr>
						<td>结束日期：</td>
						<td>
						<input type="date" name="endtime" id="endtime" >
						</td>
					</tr>
					<tr>
						<td>项目描述：</td>
						<td>
						<input type="text"  name="prodescription" id="prodescription" placeholder="请描述您的项目"/>
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