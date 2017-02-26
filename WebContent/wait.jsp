<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
</style>
<title>等待页面</title>
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
		
	
	});
</script>
</head>
<body>
	<div class="page-content">
		<div class="content-nav">个人中心 >我的简历>等待页面</div>
		<form action="cvInsert.action" method="post">
			<fieldset>
				<legend>等待页面</legend>
                   <font color="red"><b>${requestScope.msg }</b></font>
                   <a href="selectCvBasic.action">点击立即查看</a>
			</fieldset>
		</form>
	</div>
</body>
</html>