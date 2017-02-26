<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>CoolMeeting会议管理系统</title>
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
</style>

<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
	
	<div class="page-content">
		<div class="content-nav">求职 >简历状态</div>		
      				<c:forEach items="${list }" var="c">
					<fieldset>				
				<legend>&nbsp;&nbsp;已发送简历</legend>				
				<table class="formtable" style="width:50%">			
				<tr>				
					<td class="tdstyle">${c.position.posname }</td>
					<td class="tdstyle">工资 ：${c.position.salary }</td>
					 									
				</tr>
				<c:if test="${c.status==1 }"><strong style="color: red;float: right;">hr已查看</strong></c:if>
														<c:if test="${c.status==0 }"><strong style="float: right;">hr未查看</strong></c:if>
														<c:if test="${c.status==2 }"><strong style="float: right;">被标记为不合格</strong></c:if>
				</table>			
					</fieldset>
					</c:forEach>				
                        	<input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>
                    
	</div>
	
</body>
</html>