<%@ page language="java" import="java.util.*,qjob.model.User,qjob.model.Company" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title></title>

<link rel="stylesheet" href="styles/style_hr1.css" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
		
	
	});
</script>
</head>

<body style="width: 50%; 
	margin-left:150px;
	padding-left:150px;
	padding-right:70px; 
	">	
	<div >招聘 >发布信息>&nbsp;<strong>${msg }</strong>&nbsp;<input  type="button" value="返回" onclick="window.history.back();"/><br></div>
		
	<div class="page-center">						
                   	<c:forEach items="${requestScope.list }" var="e">
                   	<c:if test="${e.status==0 }">	</c:if>
                   	<form action="revokePosition.action?posid=${e.posid}" method="post">			
					<fieldset class="list" >	
				<legend>&nbsp;&nbsp;基本信息
				<a href="positionInfo.action?posid=${e.posid}" target="main" >&nbsp;&nbsp;&nbsp;&nbsp;预览&nbsp;&nbsp;</a>
				</legend>
				
				<table  style="float: left;">
				<tr>
					<td >职位：</td><td>${e.posname}</td>
					<td >工资：</td><td>${e.salary}</td>
					<td >学历：</td><td>${e.education}</td>				
				</tr>
				</table>
				<input type="button" style="float: right;" value="详情" onclick="window.location.href='viewCv.action?posid=${e.posid}';">							
				<input style="float: right;" type="submit" value="撤销">
					</fieldset>				
				<br><br>
				</form>
					</c:forEach>
                   
	</div>
	
</body>
</html>