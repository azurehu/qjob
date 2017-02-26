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
		<div class="content-nav">个人中心 >我的简历</div>
		<form action="cvInsert.action" method="post" name="fromcv1">
		<p style="color: red">${msg }</p>
			<fieldset>
				<legend>个人简历</legend>
                                
				<table class="formtable" style="width: 50%;">
					<tr>
						<td>姓名：</td>
						<td><input type="text" id="name" name="personname" value="${user.cv.personname}" maxlength="20" onblur=""/><div id="validateMessage"></div></td>
					</tr>	
					<tr>
						<td>性别：</td>
						<td >
						<c:if test="${user.cv.sex=='男'}"><input type="radio" name="sex" value="男" checked="checked">男 &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女">女</c:if>
						<c:if test="${user.cv.sex=='女'}"><input type="radio" name="sex" value="男" >男 &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女" checked="checked">女</c:if>
						<c:if test="${user.cv.sex==null}"><input type="radio" name="sex" value="男" >男 &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女" >女</c:if>
						</td>
					</tr>
					<tr>
						<td>出生年月：</td>
						<td><input type="date"  name="birth" id="birth" value="${user.cv.birth}" /></td>
					<tr>
					<tr>
						<td>学历：</td>
						<td>
						<c:if test="${user.cv.education=='大专'}">
						<select name="education"  >
								<option value="大专" selected="selected">大专</option>
								<option value="本科">本科</option>
								<option value="硕士">硕士</option>
								<option value="博士">博士</option>
								<option value="其他">其他</option>
							</select>
							</c:if>
							<c:if test="${user.cv.education=='本科'}">
						<select name="education"  >
								<option value="大专" >大专</option>
								<option value="本科" selected="selected">本科</option>
								<option value="硕士">硕士</option>
								<option value="博士">博士</option>
								<option value="其他">其他</option>
							</select>
							</c:if>
								<c:if test="${user.cv.education=='硕士'}">
						<select name="education"  >
								<option value="大专" >大专</option>
								<option value="本科" >本科</option>
								<option value="硕士" selected="selected">硕士</option>
								<option value="博士">博士</option>
								<option value="其他">其他</option>
							</select>
							</c:if>
									<c:if test="${user.cv.education=='博士'}">
						<select name="education"  >
								<option value="大专" >大专</option>
								<option value="本科" >本科</option>
								<option value="硕士" >硕士</option>
								<option value="博士" selected="selected">博士</option>
								<option value="其他">其他</option>
							</select>
							</c:if>
										<c:if test="${user.cv.education=='其他'}">
						<select name="education"  >
								<option value="大专" >大专</option>
								<option value="本科" >本科</option>
								<option value="硕士" >硕士</option>
								<option value="博士" >博士</option>
								<option value="其他" selected="selected">其他</option>
							</select>
							</c:if>
							<c:if test="${user.cv.education==null}">
						<select name="education"  >
								<option value="" ></option>
								<option value="大专" >大专</option>
								<option value="本科" >本科</option>
								<option value="硕士" >硕士</option>
								<option value="博士" >博士</option>
								<option value="其他" >其他</option>
							</select>
							</c:if>
						</td>
					<tr>
						<td>联系电话：</td>
						<td><input type="text" id="phone" name="phone" maxlength="20" value="${user.cv.phone}" /></td>
					</tr>
					<tr>
						<td>现住地：</td>
						<td><input type="text" id="location" name="location" maxlength="20" value="${user.cv.location}" /></td>
					</tr>
					<tr>
						<td>电子邮件：</td>
						<td><input type="text" id="email" name="email" maxlength="20" value="${user.cv.email}" /></td>
					</tr>
					<tr>
						<td>一句话描述：</td>
						<td>
						<input type="text" id="description" name="onedescription" maxlength="30" value="${user.cv.onedescription}" /></td>
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