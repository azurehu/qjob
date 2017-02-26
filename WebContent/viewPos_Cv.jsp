<%@ page language="java" import="java.util.*,qjob.model.User,qjob.model.Company" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<div >招聘 >收到简历> &nbsp;&nbsp;<input  type="button" value="返回" onclick="window.history.back();"/><br>	</div>				
	<div class="page-center">						
                   	<c:forEach items="${list}" var="e">
                   				
					<fieldset class="list" >	
				<legend>&nbsp;&nbsp;基本信息			
				</legend>				
				<table  style="float: left;">
				<tr>
					<td >用户：</td><td>${e.username}</td>
					<td >时间：</td><td><f:formatDate value="${e.time}" pattern="MM/dd hh:mm"/>
					</td>
					<td><a id="view" href="CvLook.action?username=${e.username}&&poscvid=${e.poscvid}" target="main" >&nbsp;&nbsp;&nbsp;&nbsp;查看简历&nbsp;&nbsp;</a></td>								
				</tr>
					<input  style="float: right;" type="button" value="合格" onclick="window.location.href='deletePosition.action?id=${e.poscvid}';" >
					<input style="float: right;" type="button" value="不合格" onclick="window.location.href='Pos_cvPass.action?d=${e.poscvid}';" >
				</table>			
					</fieldset>				
				<br><br>
					</c:forEach>
                   
	</div>
	
</body>
</html>