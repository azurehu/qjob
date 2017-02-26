<%@ page language="java" import="java.util.*,qjob.model.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%request.setCharacterEncoding("utf-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>工作经历编辑页面</title>
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
</style>

<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
	<div class="page-content">
		<div class="content-nav">个人中心 >我的简历>工作经历</div>
		<form action="insertCvWork.action" method="post">
			<fieldset>
				<legend>工作经历</legend>
                   <font color="red"><b>${requestScope.msg }</b></font>               
				<table class="formtable" style="width:50%">
					<tr>
						<td>姓名：</td>
						<td>${username }<div id="validateMessage"></div>
					</tr>	
					<tr>
						<td>公司：</td>
						<td>
						<input type="text" name="excompany" id="excompany" placeholder="请输入公司名称"/>
						</td>
					</tr>
					<tr>
						<td>职位：</td>
						<td>
						<input type="text"  name="exposition" id="exposition" placeholder="请输入您的职位"/>
						</td>
					<tr>
					<tr>
						<td>入职日期：</td>
						<td>
						<input type="date" name="jointime" id="jointime" >
						</td>
					</tr>
					<tr>
						<td>离职日期：</td>
						<td>
						<input type="date" name="leavetime" id="leavetime" >
						</td>
					</tr>
					<!-- <tr>
						<td>入职日期：</td>
						<td>
						<input type="text" name="jointime" id="jointime" >
						</td>
					</tr>
					<tr>
						<td>离职日期：</td>
						<td>
						<input type="text" name="leavetime" id="leavetime" >
						</td>
					</tr> -->
					<tr>
						<td>工作描述：</td>
						<td>
						<input type="text"  name="workdescription" id="workdescription" placeholder="请描述您的工作"/>
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