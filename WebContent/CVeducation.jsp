<%@ page language="java" import="java.util.*,qjob.model.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%request.setCharacterEncoding("utf-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>教育经历编辑页面</title>
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
</style>

<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
	<div class="page-content">
		<div class="content-nav">个人中心 >我的简历>教育经历</div>
		<form action="studyExperience.action" method="post">
			<fieldset>
				<legend>教育经历</legend>
                   <font color="red"><b>${requestScope.msg }</b></font>               
				<table class="formtable" style="width:50%">
					<tr>
						<td>姓名：</td>
						<td>${username }<div id="validateMessage"></div></td>
					</tr>	
					<tr>
						<td>毕业院校：</td>
						<td>
						<input type="text" name="school" id="school" placeholder="请输入毕业院校名称"/>
						</td>
					</tr>
					<tr>
						<td>所学专业：</td>
						<td>
						<input type="text"  name="major" id="major" placeholder="请输入所学专业"/>
						</td>
					<tr>
					<tr>
						<td>毕业日期：</td>
						<!-- <td>
						<input type="text" name="graduate" id="graduate" placeholder="格式例如：2017-01-16">
						</td> -->
						<td>
						<input type="date" name="graduate" id="graduate" >
						</td>
					</tr>
					<tr>
						<td>学历：</td>
						<td><select name="education">
								<option>高中</option>
								<option>大专</option>
								<option>本科</option>
								<option>研究生</option>
								<option>博士</option>
							</select>
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