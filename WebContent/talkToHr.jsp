<%@ page language="java" import="java.util.*,qjob.model.User,qjob.model.Company" pageEncoding="utf-8" %>
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
			<fieldset>
				<legend>&nbsp;&nbsp;与${hr.username }对话中 &nbsp;&nbsp;<input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/></legend>
				<div style="float:right; width: 120px;height: 120px;" >
					<table style="float: right">
						<tr>
							<th><img style="width: 100px;height:100px " alt="" src="images/user_hr.jpg"></th>
						</tr>
						<tr>
						<th align="center"><a >${com.comname}</a></th>
						</tr>
						<tr>
						<th align="center"><a >${hr.username}</a></th>
						</tr>
					</table>
				<br>			
				</div>
				<br>
				<div id="message" style="width: 540px;height: 360px;margin-left: 150px;margin-bottom: 50px">				
					<table class="formtable" style="width:50%">				
						<tr>
							<td colspan="2" align="center"></td>						
						</tr>
					</table>
				</div>
				
				<div style="text-align: left">
				<form action="talking.action" method="post" >
				请输入文字：<input style="width: 200px" type="text" id="talk" name="message"> &nbsp;&nbsp;<input type="submit" value="发送" class="clickbutton"> 
				</form>
				</div>					
			</fieldset>				
	</div>	
</body>
</html>