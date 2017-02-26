<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles/common.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/ajaxfileupload.js"></script>
<link rel="stylesheet" href="css/jquery.Jcrop.css" type="text/css" />
<title>CoolMeeting会议管理系统</title>

<script type="text/javascript">


function setImagePreview() { 
   var docObj=document.getElementById("file"); 
   var imgObjPreview=document.getElementById("img"); 
 if(docObj.files && docObj.files[0]){ 
   //火狐下，直接设img属性 
   imgObjPreview.style.display = 'block'; 
   imgObjPreview.style.width = '300px'; 
   imgObjPreview.style.height = '120px'; 
   //imgObjPreview.src = docObj.files[0].getAsDataURL(); 
   //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式 
   imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]); 
 }else{ 
   //IE下，使用滤镜 
   docObj.select(); 
   var imgSrc = document.selection.createRange().text; 
   var localImagId = document.getElementById("localImag"); 
   //必须设置初始大小 
   localImagId.style.width = "250px"; 
   localImagId.style.height = "200px"; 
   //图片异常的捕捉，防止用户修改后缀来伪造图片 
   try{ 
     localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
     localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc; 
   }catch(e){ 
     alert("您上传的图片格式不正确，请重新选择!"); 
     return false; 
   } 
   imgObjPreview.style.display = 'none'; 
   document.selection.empty(); 
 } 
 return true; 
} 
</script> 

<!-- 什么东西
<input type=file name="doc" id="doc" onchange="javascript:setImagePreview();">
 -->

 
<p><div id="localImag"><img id="preview" width=-1 height=-1 style="diplay:none" /></div></p>


</head>
<body>
        <div class="page-content">

                <div class="content-nav">
                    个人中心 > 更换头像
                </div>
                <fieldset>
				<legend>上传头像</legend>
                 <form action="headImgChange.action" enctype="multipart/form-data" method="post">
                 
                 
				<table>
				
				<tr>
				<td><input type="file" name="file" id="file" onchange="javascript:setImagePreview();"/></td>
				<td><input type="submit" value="上传图片" class="clickbutton"> ${msg} </td>
				</tr>			
				</table>
				               
				</form>
				</fieldset>
        	</div>	
        
    </body>
</html>
<!-- 
<html>
<head>


<title>My JSP 'index.jsp' starting page</title>

<script type="text/javascript">
function showPicture(){
var path=document.form1.picturePath.value;
document.getElementById("img").src=path;
}
</script>
</head>

<body>
<form name="form1" action="PicturServlet" method="post">
<table>
<tr>

<td><img src="" name="img" id="img" height="200px"/></td>

</tr>
<tr>
<td><input type="file" name="picturePath" onchange="showPicture()"/></td>
<td><input type="submit" value="上传图片"></td>
</tr>

</table>
</form>
</body>
</html> -->
