<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title></title>
    <meta name="keywords" content="">
    <meta name="description" content=" ">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <script type="text/javascript" src="js/jQuery.js"></script>
    <script src="js/bootstrap.min.js"></script>
            <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
     <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<c:forEach items="${detOne}" var="detone" >
<br>
<div class="container">
  <div>
    <h3 class="text-center"><strong>${detone.title }</strong></h3>
  </div>
  <div>
    <h5 class="text-center">作者: ${detone.author }</h5>
  </div>
  <div>
    <span id="content"><h4> ${detone.article }</h4></span>
  </div>
</div>
</c:forEach>
<jsp:include page="end.jsp"></jsp:include>
<!-- 把文章按照句号分割开 -->
<script type="text/javascript">
var div=document.getElementById("content");
var content=div.innerHTML;
div.innerHTML=content.replace(/。/g,"。<br><br>"); //replace替换标签
</script>
</body>
</html>