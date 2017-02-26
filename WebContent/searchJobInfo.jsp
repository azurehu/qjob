<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title></title>
<link rel="stylesheet" href="styles/common.css" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<div class="page-content">
		<div class="content-nav">求职 >搜索职位</div>
		</div>               
       	<div >
       		<table class="jobinfo">
       			<tr  style="background-color:#209bb5;border:none ">
       				<td colspan="4" style="border: none">职位信息</td>
       			</tr>
       			<tr class="bodytr">
       				<td>公司：</td><td>${pos.company.comname }</td>
       				<td>类别：</td><td>${pos.company.comtype }</td>
       			</tr >
       			<tr class="bodytr">
       				<td>公司简介：</td><td  >${pos.company.comdescription}</td><td></td><td></td>
       			</tr>
       			<tr class="bodytr">
       				<td>职位：</td><td>${pos.posname }</td>
       				<td>类别：</td><td>${pos.postype }</td>
       			</tr>
       			<tr class="bodytr">
       				<td>薪资</td><td>${pos.salary }元</td>
       				<td>工作地点：</td><td>${pos.company.comlocation }</td>
       				
       			</tr>
       			<tr class="bodytr">
       				<td>学历：</td><td>${pos.education }</td>
       				<td>经验要求</td><td><c:choose><c:when test="${pos.times==null }">无要求 </c:when> <c:when test="${pos.times!=null }">${pos.times }</c:when></c:choose></td>
       			</tr>
       			<tr class="bodytr">
       				<td>发布者：</td><td>${pos.username}</td>
       				<td></td><td></td>
       			</tr>
       			<tr class="bodytr">
       			<td colspan="4"  style="border-bottom: none;text-align: left;padding-left: 70px">职位要求：</td>
       			</tr>
       			<tr class="bodytr">
       			<td colspan="4" style="border-top: none">&nbsp;&nbsp;${pos.posdescription }</td>
       			</tr>
       		</table>
       	</div>             	
       						<c:if test="${msg=='success' }"><strong>发送成功</strong></c:if>
       						<c:if test="${msg=='miss' }"><strong>发送失败</strong></c:if>
       						<br>
       						<input type="button" value="发送简历" class="clickbutton" onclick="window.location.href='sendCv.action?posid=${pos.posid}';"/>	
       						<input type="button" value="和TA聊聊" class="clickbutton" onclick="window.location.href='talkToHr.action?posuser=${pos.username}';" />			
                        	<input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>
                    
	
	
</body>
</html>