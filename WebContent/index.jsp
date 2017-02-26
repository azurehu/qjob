<%@ page language="java" import="java.util.*,qjob.model.User" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Qjob</title>
</head>
	<frameset rows="150,*,93" cols="*" framespacing="0" frameborder="no" border="0">
 		<frame src="top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame"  marginwidth="0" marginheight="0"  frameborder="0" />
 			
 			<frameset cols="260,*" id="frame">
				<frame src="left.jsp" name="leftFrame" noresize="noresize" marginwidth="110px" marginheight="0" frameborder="0" scrolling="auto" target="main"  />
				<frame src="1111.html" name="main" marginwidth="50px" marginheight="40px" frameborder="0" scrolling="auto" target="_self"  />
    		</frameset>
		 <frame src="02.html" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" marginwidth="0" marginheight="0"/>
	</frameset>
	
	<noframes></noframes>
</html>