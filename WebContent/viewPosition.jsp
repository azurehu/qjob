<%@ page language="java" import="java.util.*,qjob.model.User,qjob.model.Company,qjob.model.Position" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="styles/style_hr1.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="page_center" >
	<div  >发布信息 >预览</div>	
	<fieldset style="border-color: #727b7f;border-width: 2px">
				<legend >&nbsp;&nbsp;职位信息</legend>
				<table  style="padding: 0 auto;">
					<tr>
						<td>公司：</td><td>${com.comname} </td>
					</tr>
					<tr>
						<td>地址：</td><td>${com.comlocation} </td>
					</tr>
					<tr>
						<td>职位：</td><td>${pos.posname} </td>
					</tr>
					<tr>
						<td>薪资：</td><td>${pos.salary }</td>
					</tr>
					<tr>
						<td>类别：</td><td>${pos.postype }</td>
					</tr>
					<tr>
						<td>学历：</td>
						<td>
						 ${pos.education}
						</td>
					</tr>
					<tr>
						<td>经验：</td>
						<td>
						 ${pos.times}
						</td>
					</tr>
					<tr>
						<td >职位描述：</td><td >${pos.posdescription } </td>
					</tr>
					
				</table>
	</fieldset>
	<input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>
	</div>
</body>
</html>