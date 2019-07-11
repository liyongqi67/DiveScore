<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<HEAD> 
	<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
	<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
	<META HTTP-EQUIV="Expires" CONTENT="0"> 
</HEAD>
</head>
<body>
<div>
	<video id="video1" width="480" height="270" controls="controls">
  	<source id="mp4_src" src="./1/a.mp4" type="video/mp4"/>     
	你的浏览器不支持HTML5 video.
	</video>
</div>
  		  <form  action="load" class="btn btn-default" method="post" enctype="multipart/form-data" target="nm_iframe" /> 
       		  <input type="file" class="btn btn-default" name="file1" id="file1"> 
       		  <input type="submit" class="btn btn-default" name="Submit" value="上传视频" onclick="myFunction()"> 
       		  <input type="button" class="btn btn-default" onclick="myFunction()" value="开始处理">
			  </form>
			  <iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe> 
			  <button onclick="myFunction()">切换视频</button>
			  <script>
			  var vid = document.getElementById("video1");
   		      function myFunction()  {
    		  document.getElementById("mp4_src").src = "./1/a.mp4";
   			  document.getElementById("video1").load();
			  </script> 

<div>
	
	<form  action="load" method="post" enctype="multipart/form-data" target="nm_iframe" /> 
       <input type="file" name="file1" id="file1"> 
       <input type="submit" name="Submit" value="upload" onclick="myFunction()"> 
	</form>
	<iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe> 
</div>
<button onclick="myFunction()">切换视频</button>
<script>
var vid = document.getElementById("video1");
   function myFunction() 
  {
    document.getElementById("mp4_src").src = "./1/a.mp4";
    document.getElementById("video1").load();
	}
</script> 

</body>

</html>