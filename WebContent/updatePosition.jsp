<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="styles/style_hr1.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="page_center" >
	<div  >发布信息 >编辑</div>	
	<fieldset style="border-color: #727b7f;border-width: 2px">
				<legend >&nbsp;&nbsp;职位信息</legend>
				<table  style="width:50%">
					<tr>
						<td>职位：</td><td><input type="text" name="posname" value="${pos.posname }" > </td>
					</tr>
					<tr>
						<td>薪资：</td><td><input type="text" name="salary" value="${pos.salary }"></td>
					</tr>
					<tr>
						<td>类别：</td><td><input type="radio" id="postype" name="postype" value="全职">全职 <input type="radio" id="postype" name="postype" value="实习">实习</td>
					</tr>
					<tr>
						<td>学历：</td>
						<td>
						<c:if test=""></c:if>
							<select >
							<option>大专</option>
							<option>本科</option>
							<option>硕士</option>
							<option>博士</option> 
							<option>其他</option>
							</select> 
						</td>
					</tr>
					<tr>
						<td style="">职位描述：</td><td><textarea rows="5" cols="20" style="resize:none;width:165px;" >${pos.posdescription }</textarea> </td>
					</tr>
					
				</table>
	</fieldset>
	<input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>
	</div>
</body>
</html>