<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>CoolMeeting会议管理系统</title>
<link rel="stylesheet" href="styles/common.css" />

<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
	$("#industry").change(function(){
		$("#position option:gt(0)").remove();	
		var industry = $("#industry option:selected").text();
		var sendData ={"industry":industry};
		var url="${pageContext.request.contextPath}/positionList.action";
		$.post(url,sendData,function(backData,status,ajax){
			$(backData).each(function(){
				var option = $("<option>"+this+"</option>");
				
				$("#position").append(option);
			});
		});
		
	});

});
	$(document).ready(function(){
		$("#province").change(function(){
			$("#city option:gt(0)").remove();	
			var province = $("#province option:selected").text();
			var sendData ={"province":province};
			var url="${pageContext.request.contextPath}/cityList.action";
			$.post(url,sendData,function(backData,status,ajax){
				$(backData).each(function(){
					var option = $("<option>"+this+"</option>");
					
					$("#city").append(option);
				});
			});
			
		});

	});

</script>
</head>
<body>	
	<div class="page-content">
		<div class="content-nav">求职 >搜索职位</div>
		</div>
                	<form action="" method="post">
                    	<fieldset>
                        	<legend>搜索职位</legend>
                        	<table class="formtable">
                            	<tr >                                	
                            		<td>公司名称：<input type="text" name="posname" > </td>
                                	<td>
                                 	  行业：<select id="industry">
									<option style="color: #b0b0b0">请选择行业</option>
									<option>IT</option>
									<option>网络</option>
									<option>动漫/游戏</option>
									</select>
									职位：<select id="position" name="position">
									<option style="color: #b0b0b0">请选择职位</option>
									</select>
                                	</td>                         
                                	<td>省：<select id="province">
									<option style="color: #b0b0b0">请选择省份</option>
									<option>辽宁</option>
									<option>吉林</option>
									<option>黑龙江</option>
									</select>
									市：<select id="city" name="ctiy">
									<option style="color: #b0b0b0">请选择城市</option>
									</select>
								</td>
								<td>
									类别：<select id="postype" name="postype">
									<option value="全职">全职</option>
									<option value="实习">实习</option>
									</select>
								</td>
								<td><input type="submit" value="查找" class="clickbutton" ></td>                                
                            	</tr>                        
                                	</table>
                                	</fieldset>
                              	</form>  	                             
		<div>
		<br>
                    <h3 style="text-align:center;color:black">查询结果</h3>
                    <br>
                    <div class="pager-header">
                        <div class="header-info">
                            共<span class="info-number">${page.totalCount }</span>条结果，
                            分成<span class="info-number">${page.pageCount }</span>页显示，
                            当前第<span class="info-number">${page.pageNumber }</span>页
                        </div>
                        <div class="header-nav">
                            <input type="button" class="clickbutton" value="首页" onclick="window.location.href='selectPos.action?pageNumber=${page.pageNumber}';"  />
                            <input type="button" class="clickbutton" value="上页" onclick="window.location.href='selectPos.action?pageNumber=${page.pageNumber-1}';" />
                            <input type="button" class="clickbutton" value="下页" onclick="window.location.href='selectPos.action?pageNumber=${page.pageNumber+1}';" />
                            <input type="button" class="clickbutton" value="末页" onclick="window.location.href='selectPos.action?pageNumber=${page.pageCount}';" />
   跳到第<select>
<c:forEach begin="1" end="${page.pageCount }" step="1" var="i">
<option>${i }</option>
</c:forEach>
   </select> 页
                            <input type="button" class="clickbutton" value="跳转"/>
                        </div>
                    </div>
                </div>	
                
                    <table class="listtable">
                    <tr class="listheader">
                        <th>公司名称</th>
                        <th>职位</th>
                        <th>薪资</th>
                        <th>工作地点</th>
                        <th>学历要求</th>
                        <th>工作经验</th>
                        <th>发布者</th>
                        <th>操作</th>
                    </tr>
                    <c:forEach items="${list }" var="e">	
                    <tr class="listbody">
<th><a href="searchJobInfo.action?username=${e.username}" target="main" >${e.company.comname }</a></th>
                        <th>${e.posname }</th>
                        <th>${e.salary }</th>
                        <th>${e.company.comlocation }</th>
                        <th>${e.education }</th>
                        <th>${e.times }</th>
                        <th><a href="searchJobInfo.action?username=${e.username}" target="main" >${e.username}</a></th>
                        <th><a href="searchJobInfo.action?posid=${e.posid}" target="main" >查看</a></th>
                    </tr>
                    </c:forEach>	
                    </table>               				
			
				
                        <input type="button" value="返回" class="clickbutton" onclick="window.history.back();"/>
                    
	
	
</body>
</html>