<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>个人健康管理平台</title>
    <meta name="keywords" content="">
    <meta name="description" content=" ">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
            <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
     <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div>
	<img src="img/tou.png" class="img-responsive" alt="Responsive image">
</div>
  <!--栅格系统-->
  <div class="row">
    <div class="col-md-6 col-md-offset-5">
      <h1>「健康评估问卷」</h1>
    </div>
    <div class="col-md-6"> 
    </div>
  </div>
  <c:forEach items="${first}" var="first"></c:forEach>
<!--健康评估问卷部分-->
<div class="container ">
  <div class="row ">
  <div class="col-md-4 btn btn-default">
   <div>
     <img class="img-responsive img-thumbnail " src="${first[0].pic }">
          <h3>${first[0].title }</h3>
         <a href="#" class="btn btn-success btn-group btn-group-justified">立即评测</a>
         <h4 class="lead ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${first[0].content }</h4>
       </div>
  </div>
  <div class="col-md-4 btn btn-default">
       <div>
     <img class="img-responsive img-thumbnail " src="${first[1].pic }">
       <h3>${first[1].title }</h3>
       <a href="#" class="btn btn-success btn-group btn-group-justified">立即评测</a>
       <h4 class="lead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${first[1].content }</h4>
   </div>
  </div>
  <div class="col-md-4 btn btn-default">
       <div>
     <img class="img-responsive img-thumbnail " src="img/zhongyitizhi.png">
       <h3>${first[2].title }</h3>
       <a href="#" class="btn btn-success btn-group btn-group-justified">立即评测</a>
       <h4 class="lead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${first[2].content }
       </h4>
   </div>
  </div>
  </div>
</div>
  <!--健康评估问卷部分结束-->
  <!--健康日志开始-->
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <img src="${first[3].pic }">
      </div>
      <div class="col-md-6">
        <div>
          <h3 class="text-center">${first[3].title }</h3>
          <h4 class="lead"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${first[3].content }</h4>
          <a href="#" class="btn btn-success " >去填写日志</a>
        </div>
      </div>
    </div>
  </div>
  <!--健康日志结束-->

  <!--健康行动计划开始-->
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div>
          <h3 class="text-center">${first[4].title }</h3>
          <h4 class="lead"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${first[4].content }</h4>
          <a href="#" class="btn btn-success text-center " >查看我的计划</a>
        </div>
      </div>
      <div class="col-md-6">
        <img src="${first[4].pic }">
      </div>
    </div>
  </div>
  <jsp:include page="end.jsp"></jsp:include>
</body>
</html>