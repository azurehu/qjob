<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="styles/common02.css"/>
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body style="background-color:#fbfbea">
            <div class="page-sidebar">
                <div class="sidebar-menugroup">
                	<div class="head" ><img alt="" src="images/usernull.jpg" height="16px"></div>
                	<div class="headchange"><a href="headImgChange.jsp" target="main">更换头像  </a></div>
                    <div class="sidebar-grouptitle">个人中心</div>
                    <ul class="sidebar-menu">
                        
                        <li class="sidebar-menuitem active"><a href="01.html" target="main">我的收藏</a></li>
						<li class="sidebar-menuitem"><a href="personInfo.jsp" target="main" >我的账号</a></li>
                    </ul>
                </div>
              
                <div class="sidebar-menugroup">
                    <div class="sidebar-grouptitle">招聘</div>
                    <ul class="sidebar-menu">
                     	<li class="sidebar-menuitem"><a  id="pubInfo" href="viewPosAllPr.action" target="main">发布信息</a></li>
                        <li class="sidebar-menuitem"><a href="viewPosAllPub.action"  target="main">发布状态</a></li>
                        <li class="sidebar-menuitem"><a href="viewCv.action" target="main">消息</a></li>                       
                    </ul>
                </div>              
                <div class="sidebar-menugroup">
                    <div class="sidebar-grouptitle">关于Qjob</div>
                    <ul class="sidebar-menu">
                        <li class="sidebar-menuitem"><a href="01.html" target="main">版本信息</a></li>
                        <li class="sidebar-menuitem"><a href="01.html"target="main">意见反馈</a></li>
                        
                       
                    </ul>
                </div>
            </div>
</body>
</html>
