<%@ page language="java" import="java.util.*,qjob.model.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title></title>
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
table{
	width: 800px;
	}
	table td{
			width:150px; 
			}
</style>

<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>

<body>
	
	<div class="page-content">
		<div class="content-nav">个人中心 >我的简历</div>		
                   			<input type="button" value="预览" onclick="window.location.href='CvLook.action';">
					<fieldset>
					
				<legend>&nbsp;&nbsp;基本信息<a href="CVbasic.jsp" target="main" >&nbsp;&nbsp;&nbsp;&nbsp;编辑&nbsp;&nbsp;</a></legend>
				<c:if test="${user.cv.sex!=null }">
				<table class="formtable" >
				<tr>					
						<td class="tdstyle">姓名：</td><td>${user.cv.personname}</td>										
						<td class="tdstyle">性别：</td><td>${user.cv.sex}</td>									
					<td></td>
					<td></td>				
				</tr>
				<tr>
					<td class="tdstyle">出生年月：</td><td>${user.cv.birth}</td>
					<td class="tdstyle">现住地：</td><td>${user.cv.location}</td>
					<td></td>
					<td></td>					
				</tr>
				<tr>
					<td class="tdstyle">最高学历：</td><td>${user.cv.education}</td>
					<td class="tdstyle">联系电话：</td><td>${user.cv.phone}</td>
					<td></td>
					<td></td>					
				</tr>
				<tr>
					<td class="tdstyle">邮箱：</td><td>${user.cv.email}</td>
					<td class="tdstyle">一句话描述：</td><td colspan="3">${user.cv.onedescription}</td>					
				</tr>				
				</table>
				</c:if>
				<c:if test="${user.cv.sex==null }"><strong  style="color: red ">您还未填写基本信息</strong></c:if>
					</fieldset>
					<br><br>
					<fieldset>
				<legend>&nbsp;&nbsp;教育经历<a href="CVeducation.jsp" target="main" >&nbsp;&nbsp;&nbsp;&nbsp;编辑&nbsp;&nbsp;</a></legend>				
				<c:forEach items="${study}" var="a">
				<table class="formtable" >
				
				<tr>
					<td class="tdstyle">学校：</td><td>${a.school }</td>
					<td class="tdstyle">专业：</td><td>${a.major }</td>
					<td></td>
					<td></td>	
				
				</tr>
				<tr>
					<td class="tdstyle">毕业时间：</td><td>${a.graduate }</td>
					<td class="tdstyle">类别：</td><td>${a.education}</td>
					<td></td>
					<td></td>	
				</tr>
				</table>
				</c:forEach>
				<c:if test="${user==null }"><strong  style="color: red ">您还未填写教育信息</strong></c:if>
					</fieldset>	
					<br><br>
					<fieldset>
				<legend>&nbsp;&nbsp;工作经历<a href="CVwork.jsp" target="main" >&nbsp;&nbsp;&nbsp;&nbsp;编辑&nbsp;&nbsp;</a></legend>
				<c:forEach items="${work}" var="b">
				<table class="formtable" >
				<tr>
					<td class="tdstyle">工作单位：</td><td>${b.excompany }</td>
					<td class="tdstyle">职位：</td><td>${b.exposition }</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td class="tdstyle">入职时间：</td><td>${b.jointime }</td>
					<td class="tdstyle">离职时间：</td><td>${b.leavetime }</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td class="tdstyle">工作内容：</td><td colspan="5">${b.workdescription}</td>
					
				</tr>
				</table>
				</c:forEach>
				<c:if test="${work}"><strong  style="color: red ">您还未填写教育信息</strong></c:if>
					</fieldset>
					<br><br>
					<fieldset>
				<legend>&nbsp;&nbsp;期望工作<a href="CVwant.jsp" target="main" >&nbsp;&nbsp;&nbsp;&nbsp;编辑&nbsp;&nbsp;</a></legend>
				
				<table class="formtable" >
				<tr>
					
					<td class="tdstyle">期望城市：</td><td></td>
					<td class="tdstyle">期望职位：</td><td></td>
					<td class="tdstyle">期望工资：</td><td></td>
					<td class="tdstyle">类型：</td><td></td>
					
				</tr>
				</table>
					</fieldset>
						<br><br>
					<fieldset>
				<legend>&nbsp;&nbsp;项目经验<a href="CVproject.jsp" target="main" >&nbsp;&nbsp;&nbsp;&nbsp;编辑&nbsp;&nbsp;</a></legend>
				
				<table class="formtable" >
				<tr>
					<td class="tdstyle">项目名称</td><td>${c}</td>
					<td class="tdstyle">开始时间</td><td>${c}</td>
					<td class="tdstyle">完成时间</td><td>${c}</td>
					<td></td>
				</tr>
				<tr>
					<td class="tdstyle">负责内容：</td><td colspan="5">${p}</td>			
				</tr>
				<tr>
					<td class="tdstyle">项目描述：</td><td colspan="5">${p}</td>				
				</tr>
				</table>
				
					</fieldset>
						<br><br>
					<fieldset>
				<legend>&nbsp;&nbsp;自我描述<a href="CVaboutmyself.jsp" target="main" >&nbsp;&nbsp;&nbsp;&nbsp;编辑&nbsp;&nbsp;</a></legend>
				
				<table class="formtable">
				<tr>
					<td colspan="6"></td>
				</tr>
				</table>
					</fieldset>
                        <input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>
                    
	</div>
	
</body>
</html>