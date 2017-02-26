<%@ page language="java" import="java.util.*,qjob.model.User,qjob.model.Company" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title></title>

<style type="text/css">
</style>
<link rel="stylesheet" href="styles/style_hr1.css" />
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#postable").hide();
	$("#create").click(function(){
		$("#postable").show();
	});
});

</script>
</head>
<body style="width: 50%; 
	margin-left:150px;
	padding-left:150px;
	padding-right:70px; 
	">
	<table>
		<tr>
			<td style="color: red">${msg}</td><td><input type="button" id="create"  value="新建" /></td>
			<td>&nbsp;&nbsp;<input  type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>${msg1 }</td>
		</tr>
	</table>
	<div id="postable">
		<form action="createPosition.action" method="post">
			<fieldset style="border-color: #727b7f;border-width: 2px">
				<legend >&nbsp;&nbsp;职位信息</legend>
				<table  style="width:50%">
					<tr>
						<td>职位：</td><td><input type="text" name="posname"  > </td>
					</tr>
					<tr>
						<td>薪资：</td><td><input type="text" name="salary" ></td>
					</tr>
					<tr>
						<td>类别：</td><td><input type="radio" id="postype" name="postype" value="全职">全职 <input type="radio" id="postype" name="postype" value="实习">实习</td>
					</tr>
					<tr>
						<td>学历：</td>
						<td>
						
							<select name="education">
							<option  value="大专">大专</option>
							<option value="本科">本科</option>
							<option value="硕士">硕士</option>
							<option value="博士">博士</option> 
							<option value="其他">其他</option>
							</select> 
						</td>
					</tr>
					<tr>
						<td>经验</td><td><input type="text" name="times" ></td>
					</tr>
					<tr>
						<td style="">职位描述：</td><td><textarea name="posdescription" rows="5" cols="20" style="resize:none;width:165px;" ></textarea> </td>
					</tr>
					
					<tr>
					<td colspan="2" align="center"><input type="submit" value="保存" > </td>
					</tr>
				</table>
	</fieldset>
	 
		</form>
	</div>
</body>
</html>