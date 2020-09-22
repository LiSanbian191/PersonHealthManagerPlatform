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
<div class=" container">
      <div class="row">
        <div class="col-md-10">
          <img src="img/yetou.png">
        </div>
        <div class="col-md-2">
          <div class="">
            <br>
            <a href="${pageContext.request.contextPath}/userLoginOrRegist.do" class="btn btn-success">注册/登录</a>
          </div>
        </div>
      </div>      
    </div>

<nav class="navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">首页</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">健康报告 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li role="separator" class="divider"></li>
            <li><a href="#">心理测评分析</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">国民体质检测</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">中医体质辨识</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">生理风险评估</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">基因检测报告</a></li>
          </ul>
        </li>
            <li><a href="#">健康检测</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">健康日志 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li role="separator" class="divider"></li>
            <li><a href="#">膳食日志</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">运动日志</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">健康行动 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li role="separator" class="divider"></li>
            <li><a href="#">健康管理目标</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">健康管理任务</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">健康工具 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li role="separator" class="divider"></li>
            <li><a href="#">BMI计算器</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">每日能量需求</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">理想体重计算器</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">减掉一公斤</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">营养计算器</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">运动能耗计算器</a></li>
          </ul>
        </li>
        <li><a href="">健康百科</a></li>
        
      </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container -->

</nav>
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
  <!--健康评估问卷部分-->
<div class="container ">
  <div class="row ">
  <div class="col-md-4 btn btn-default">
   <div>
     <img class="img-responsive img-thumbnail " src="img/shenglifengxian.png" alt="">
          <h3>生理风险评估</h3>
         <a href="" class="btn btn-success btn-group btn-group-justified">立即评测</a>
         <h4 class="lead ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[生理风险评估]根据您填写的健康问<br>卷和体检信息可以进行健康风险评估，<br>以了解您当前的健康风险</h4>
       </div>
  </div>
  <div class="col-md-4 btn btn-default">
       <div>
     <img class="img-responsive img-thumbnail " src="img/xinliceping.png" alt="">
       <h3>心理测评分析</h3>
       <a href="" class="btn btn-success btn-group btn-group-justified">立即评测</a>
       <h4 class="lead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;心理测评分析，可以有效的帮助我<br>们认清自己的心理问题和压力程度，更<br>好的控制自己的情绪，从而有...</h4>
   </div>
  </div>
  <div class="col-md-4 btn btn-default">
       <div>
     <img class="img-responsive img-thumbnail " src="img/zhongyitizhi.png" alt="">
       <h3>中医体质辨识</h3>
       <a href="" class="btn btn-success btn-group btn-group-justified">立即评测</a>
       <h4 class="lead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中医体质辨识是依据中华中医药学<br>会《中医体质分类与判定》标准，在中<br>医体质理论指导下，根据量表设计...
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
        <img src="img/jiankangrizhi.png" alt="">
      </div>
      <div class="col-md-6">
        <div>
          <h3 class="text-center">「健康日志」</h3>
          <h4 class="lead"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;膳食是健康管理的基本量化指标之一，良好的膳食记录，为精准的标准化健康管理提供依据。 运动是健康管理的基本量化指标之一，良好的运动记录，为精准的标准化健康管理提供依据。</h4>
          <a href="" class="btn btn-success " >去填写日志</a>
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
          <h3 class="text-center">「健康行动计划」</h3>
          <h4 class="lead"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据您的健康风险评估结果，专家为您制定了合理的健康改善目标，只要认真配合健康管理师的指导， 您一定可以达到设定的目标。执行目标前请咨询医生或健康管理师。</h4>
          <a href="" class="btn btn-success text-center " >查看我的计划</a>
        </div>
      </div>
      <div class="col-md-6">
<%--        <img src="img/jiankangxingdong.png">--%>
        <img src="img/h_log2.jpg" alt="">
      </div>
    </div>
  </div>
  <!--健康行动计划结束-->
  <jsp:include page="WEB-INF/views/end.jsp" />
</body>
</html>