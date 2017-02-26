<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Qjob</title>
<link rel="stylesheet" href="styles/common.css" />
<style type="text/css">
</style>
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
//ajax异步校验
		// 验证输入不为空的脚本代码
	// 验证输入不为空的脚本代码
		function checkForm() {
		if(formRegister.username.value == "") {
		alert("用户名不能为空!");
		formRegister.username.focus();
		return false;
		}
		if(formRegister.password.value == "") {
		alert("密码不能为空!");
		formRegister.password.focus();
		return false;
		}
		if(formRegister.confirm.value == "") {
			alert("密码不能为空!");
			formRegister.confirm.focus();
			return false;
		}
		return true;
		}
		
	    function checkUser(){
          var username=$("#username").val();         
          $.ajax({
             url:"queryByUser.action",
             type:"post",
             data:{"username":username},
             dataType:"json",
             async : true,            
            success:function(data,ajax){            	 
				if (data==0 ) {
				    $("#userSpan").text("对不起，该用户名已注册！").css("color","red");
				    $("#username").val('');  
				}else if(data==1 ){
					$("#userSpan").text("用户名可用").css("color","green");
				}
				if(username==""){
					$("#userSpan").text("用户名不能为空").css("color","red");
				}
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
            	//$("#userSpan").text("用户名可用").css("color","green");      	 
       	   },                         
          });
      }
	    //用户名不能为空
	function check() {
		if (formRegister.password.value!=formRegister.confirm.value) {
			confirminfo.innerHTML = "<font color=red>两次输入的密码不相符</font>";
		}else{
			confirminfo.innerHTML="<font color=green>两次输入的密码相符</font>";
		}
	}
	
	//页面加载完成后隐藏 companytable
	$(document).ready(function(){
	$("#companytable").hide();
	});
	//点击role1，触发隐藏companytable
	$(document).ready(function(){
	$("#role1").click(function(){
		$("#companytable").hide();
	});});
	//点击role2,触发显示companytable
	$(document).ready(function(){
		$("#role2").click(function(){
			$("#companytable").show();
		});});
	
	
</script>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>

<body>
	<div class="page-header">
		<div class="header-banner">
			<img src="images/logo.jpg" alt="qjob" />
		</div>
		<div class="header-title">欢迎访问Qjob</div>
	</div>
	<div class="page-content">
		<div class="content-nav">注册 > 注册新用户</div>
		<form id="formRegister" action="register.action" method="post"  onsubmit="return checkForm(this);">
			<fieldset>
				<legend>用户信息</legend>
                   <div  style="float:left; width: 300px" >
                                 
				<table class="formtable" >
					<tr>
						<td>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
						<td><input type="text" id="username" name="username" maxlength="20" onblur="checkUser()" placeholder="请输入4-16位用户名"/><div id="userSpan"></div></td>
					</tr>
					
					<tr>
						<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
						<td><input type="password" id="password" name="password" maxlength="20"
							placeholder="请输入6位以上的密码" /></td>
					</tr>
					<tr>
						<td>确认密码：</td>
						<td><input type="password" id="confirm"  maxlength="20" onchange="check()"/>
						<div id="confirminfo"></div></td>
					</tr>
					<tr>
						<td>联系电话：</td>
						<td><input type="text" id="phone" name="userphone" maxlength="20" /></td>
					</tr>
					<tr>
					<td>电子邮箱：</td>
						<td><input type="text" id="email" name="useremail" maxlength="20" /></td>
					</tr>
					<tr>
					<td>选择你的角色：</td>
						<td><input type="radio" id="role1" name="role" value="1" checked="checked">求职者
						<input type="radio" id="role2" name="role" value="2">供职者
						</td>
						
					</tr>
					<tr>
						<td colspan="6" class="command">
						<input type="submit" class="clickbutton" value="注册" /> 
						
						<input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/></td>
					</tr>
				</table>
				</div>
				<div id="companytable" style="float:left; width: 300px;margin-left: 100px">
				<table class="formtable" >
				<tr>
				<td colspan="2" align="center"><h2>公司信息</h2></td>
				</tr>
				
				<tr>
						<td>公司名称：</td>
						<td><input type="text" id="comname" name="comname" maxlength="20"/></td>
					</tr>
					<tr>
						<td>地址：</td>
						<td><input type="text" id="comlocation" name="comlocation" maxlength="20"/></td>
					</tr>
					<tr>
						<td>公司描述：</td>
						<td><input type="text" id="comdescription" name="comdescription" maxlength="20"/></td>
					</tr>
					<tr>
						<td>公司种类：</td>
						<td><select name="comtype">
							<option value="IT">IT</option>
							<option value="互联网">互联网</option>
							<option value="物流">物流</option>
							<option value="农业">农业</option>
							<option value="商业服务">商业服务</option>
							<option value="房地产">房地产</option>
							<option value="机械">机械</option>
							<option value="政府">政府</option>
							
						
						</select></td>
					</tr>
					
				</table>
				</div>
			</fieldset>
		</form>
	</div>
	
	<div class="page-footer">
		<hr />
		更多问题，欢迎联系<a href="mailto:webmaster@eeg.com">管理员</a> <img
			src="images/user.jpg" alt="CoolMeeting" />
	</div>
</body>
</html>