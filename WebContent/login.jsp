<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
        <title>Qjob</title>
        <link rel="stylesheet" href="styles/common.css"/>
        <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#div2").hide();
	$("#button1").click(function(){
		$("#div1").hide();
		$("#div2").show();
	});
	$("#button2").click(function(){
		$("#div2").hide();
		$("#div1").show();
	});
});

</script>
    </head>
    <body>                          
                <form action="login.action" method="post" style="padding-left: 240px" >
	<div style="position:relative">
	<div id="div2" style="position:absolute;z-index: 2;width: 383px;height: 187;">
                    		<fieldset style="width: 360px" >
                    		<legend>登录信息</legend>
                    		<table class="formtable"  >
                    			<tr align="center">
                    			<td>请扫描二维码登录</td>
                    			</tr>
                    			<tr>
                    				<td><div align="center"><img alt="" src="images/2code.png" width="160px" height="160px" > </div></td>
                    			</tr>
                    			<tr align="center">
                    				<td><input type="button" id="button2" class="clickbutton" value="账号密码登陆" ></td>
                    			</tr>
                    		</table>	
                    		</fieldset>
                    	</div>
		<div id="div1" style="position:absolute;z-index: 1; " >                    
                    	<fieldset style="width: 360px" >
                        	<legend>登录信息</legend>                  
                        	<table class="formtable"   >
                        
                            	<tr>
                                	<td>账号名:</td>
                                	<td>
                                    	<input id="accountname" name="username1"type="text" />
                                	</td>
                            	</tr>
                            	<tr>
                                	<td>密码:</td>
                                	<td>
                                    	<input id="new" name="password" type="password" />
                                	</td>
                            	</tr>
                            	<tr>
                                	<td>有效时间:</td>
                                	<td>
                                    	<select name="maxAge">
                                     	<option value="0">不保存</option>
                                    	<option value="1">一分钟</option>
                                    	<option value="5">五分钟</option>
                                    	<option value="60">一小时</option>
                                    	</select>
                                	</td>
                            	</tr>
                                                    
                            	<font color="red"><b>${requestScope.msg }</b></font>                           
                            	<tr>
                                	<td colspan="2" class="command">
                                    	<input type="submit" value="登录" class="clickbutton" />
                                    	<!--  <input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>-->
                                    	<input type="button" value="注册" class="clickbutton" onclick="window.location.href='register.jsp';"/>
                                    	<input type="button" id="button1" class="clickbutton" value="二维码登陆">
                                	</td>
                            	</tr>
                        	</table>
                    	</fieldset>
                    	</div>
                    	
                       	</div>                   
                </form>
                <br><br><br><br><br>
                <div style="height: 200px"></div>
                 <div style="padding-left: 320px">
                    <img alt="" src="images/logo2.jpg" >                   
                </div>
                <br>
<div style="padding-left: 320px">                                  
                                  <p >版权所有:Qjob for feng by 2017</p><br>    
 </div>           
   <div style="padding-left: 260px">            <p>All rights reserved.(Violators will be prosecuted.)</p></div>     
    </body>
</html>