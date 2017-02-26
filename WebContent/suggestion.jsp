<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Qjob</title>
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
</style>


<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>

<body>
	<div class="page-content">
		<div class="content-nav">反馈意见 > 提出反馈</div>
		<form action="suggestion.action" method="post" >
			<fieldset>
				<legend>反馈内容</legend>
				
                            
				<table class="formtable" style="width:50%">					
					
					<tr>
						<td>描&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;述：</td>
						<td><input type="text" style="width:165px;" id="description" name="description" maxlength="20"
							/></td>
					</tr>
					<tr>
						<td>具体内容：</td>
						<td><textarea rows="10" cols="" name="contents" style="resize:none;width:165px;" ></textarea><div id="confirminfo"></div></td>
					</tr>
										
					<tr>
						<td colspan="6" class="command">
						<input type="submit" class="clickbutton" value="提交" /> 
						
						<input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
	
</body>
</html>