<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" type="text/css" href="styles/common02.css"/>
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
			
	
		var sendData ={"1":"2"};
		var url="${pageContext.request.contextPath}/headImgChange.action";
		$.post(url,sendData,function(backData,status,ajax){
			
		});
		
	

});
</script>
</head>
<body>
            <div class="page-sidebar">
                <div class="sidebar-menugroup">
                	<img alt="" src="images/${sessionScope.imgname}" height="16px">
                	<div class="headchange"><a href="headImgChange.jsp" target="main">更换头像  </a></div>
                    <div class="sidebar-grouptitle">个人中心</div>
                    <ul class="sidebar-menu">
                        <li class="sidebar-menuitem"><a href="selectCvBasic.action" target="main">我的简历</a></li>
                        <li class="sidebar-menuitem active"><a href="01.html" target="main">我的收藏</a></li>
						<li class="sidebar-menuitem"><a href="personInfo.jsp" target="main" >我的账号</a></li>
                    </ul>
                </div>
              
                <div class="sidebar-menugroup">
                    <div class="sidebar-grouptitle">求职</div>
                    <ul class="sidebar-menu">
 <li class="sidebar-menuitem"><a href="selectPos.action"  target="main">搜索职位</a></li>
                        <li class="sidebar-menuitem"><a href="MySendCv.action"  target="main">简历状态</a></li>
                        <li class="sidebar-menuitem"><a href="viewemp.action" target="main">职位邀请</a></li>                       
                    </ul>
                </div>              
                <div class="sidebar-menugroup">
                    <div class="sidebar-grouptitle">关于Qjob</div>
                    <ul class="sidebar-menu">
                        <li class="sidebar-menuitem"><a href="01.html" target="main">版本信息</a></li>
                        <li class="sidebar-menuitem"><a href="suggestion.jsp"target="main">意见反馈</a></li>
                        
                       
                    </ul>
                </div>
            </div>
</body>
</html>
