<%@ page language="java" import="java.util.*,qjob.model.User" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="styles/common.css"/>
</head>

<body style="background-color:#fbfbea">
  <div class="page-header" style="background-color: #FFFFCC">
            <div class="header-banner">
                <img src="images/logo_hr.jpg" alt=""/>
            </div>		
            <div class="header-title">
                欢迎访问Qjob Enterprise Edition1.0Beta
            </div>
            <div class="header-quicklink">            
                欢迎您，<strong>${user.username }  </strong>  
                 
              
            </div>
        </div>
</body>
</html>