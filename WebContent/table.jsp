<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>导出简历</title>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<link href="dist/css/tableexport.min.css" rel="stylesheet">
	<!--[if IE]>
		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
	<script src="http://libs.useso.com/js/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/xlsx.core.min.js"></script>
	<script src="js/blob.js"></script>
	<script src="js/FileSaver.min.js"></script>
	<script src="dist/js/tableexport.js"></script>
	<script type="text/javascript">
		$(function(){
			$("table").tableExport({formats:["xlsx","txt"]});
		})
	</script>
</head>
<c:if test="${msg==1 }"> <body  style="background-color:lightgray;"></c:if>
<c:if test="${msg==2 }"> <body  style="background-color:#fbfbea;"></c:if>
	<div class="htmleaf-container">
	
		<div class="container">
			<div class="row">
                    <div class="col-md-12">
                        <br>
                        <h4>${c.username }的简历</h4><input  type="button" value="返回" onclick="window.history.back();"/>
                        <div class="table-responsive">
                            <table id="Population-list-1" class="table table-striped table-bordered"
                                   data-name="cool-table" style="background-color: white;" >
                               <!--   <thead>
                                <tr>
                                    <th>Rank</th>
                                    <th>Country</th>
                                    <th>Population</th>
                                    <th>% of world population</th>
                                    <th>Date</th>
                                </tr>
                                </thead> -->
                                <tbody>
                                <tr>
                                    <td colspan="5" >个人简历</td>
                                    
                                </tr>
                                 <tr>
                                    <td colspan="5" >基本信息</td>
                                    
                                </tr>
                                <tr>
                                    <td>姓名：</td>
                                    <td>${c.personname }</td>
                                    <td>性别：</td>
                                    <td>${c.sex }</td>
                                    <td>个人照片</td>
                                </tr>
                                
                                <tr>
                                    <td>出生年月：</td>
                                    <td>${c.birth }</td>
                                    <td>现居住地：</td>
                                    <td>${c.location }</td>
                                    <td rowspan="5"><img alt="" src="${c.cvheadurl }" width="160px" height="160px"></td>
                                </tr>
                             
                                <tr>
                                    <td>学历：</td>
                                    <td>${c.education}</td>
                                    <td>毕业院校：</td>
                                    <td>辽宁工程技术大学</td>
                                    
                                </tr>
                              
                                <tr>
                                    <td>联系电话：</td>
                                    <td>${c.phone }</td>
                                    <td>邮箱：</td>
                                    <td>${c.email }</td>
                                    
                                </tr>
                                
                                <tr>
                                    <td>一句话评价：</td>
                                    <td colspan="3">${c.onedescription }</td>
                                    
                                </tr>
                                <tr>
                                    <td colspan="5" >教育经历：</td>
                                  
                                </tr>
                                
                                <tr>
                                    <td>毕业时间：</td>
                                    <td>2016.06</td>
                                    <td>学校：</td>
                                    <td>辽宁工程技术大学</td>
                                    <td></td>
                                </tr>
                               
                                <tr>
                                    <td colspan="5" >工作经历</td>
                                    
                                </tr>
                                <tr>
                                    <td>入职时间：</td>
                                    <td>2016.09</td>
                                   <td>离职时间：</td>
                                    <td>2017.02</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>工作内容：</td>
                                    <td colspan="4">老师</td>
                                    
                                </tr>
                                <tr>
                                    <td colspan="5" >项目经验</td>
                                    
                                </tr>
                                <tr>
                                    <td>项目名称：</td>
                                    <td colspan="4">qjob招聘网站</td>
                                   
                                </tr>
                                <tr>
                                    <td>项目开始时间：</td>
                                    <td>2016.12</td>
                                    <td>项目完成时间：</td>
                                    <td>2017.02</td>
                                    <td></td>
                                </tr>
                               
                                <tr>
                                    <td>我负责的内容：</td>
                                    <td colspan="4">需求分析,框架搭建</td>
                                    
                                </tr>
                                <tr>
                                    <td>项目描述：</td>
                                    <td colspan="4">ssm项目</td>
                                    
                                </tr>
                                <tr>
                                    <td colspan="5" align="center">期望工作</td>
                                    
                                </tr>
                                <tr>
                                    <td>期望城市：</td>
                                    <td colspan="4">大连</td>
                                  
                                </tr>
                                 <tr>
                                   
                                    <td>期望职位：</td>
                                    <td>java开发工程师</td>
                                    <td>期望工资：</td>
                                    <td>4000</td>
                                    <td></td>
                                </tr>
                            
                                <tr>
                                    <td colspan="5" align="center">自我评价</td>
                                    
                                </tr><tr>
                                    <td colspan="5">啦啦啦</td>
                                    
                                </tr>
   
                                <tbody>
                            </table>
                        </div>
                    </div>
                </div>
		</div>		
	</div>	
</body>
</html>