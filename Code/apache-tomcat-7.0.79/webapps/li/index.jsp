<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
﻿<!DOCTYPE html> 
<html> 
<body> 
<form class="btn btn-primary btn-upload"  action="load" method="post" enctype="multipart/form-data" target="nm_iframe" /> 
       <input type="file" name="file1" id="file1"> 
       <input type="submit" name="Submit" value="upload" onclick="myFunction()"> 
	</form>
<a class="btn btn-primary btn-upload">
    <span>上传</span>
    <input type="file">
</a>

<style>
.btn-upload {
    position: relative;
    overflow: hidden;
}
 
.btn-upload input {
    position: absolute;
    top: 0;
    right: 0;
    margin: 0;
    padding: 0;
    font-size: 20px;
    cursor: pointer;
    opacity: 0;
    filter: alpha(opacity=0);
}</style>


</body> 
</html>