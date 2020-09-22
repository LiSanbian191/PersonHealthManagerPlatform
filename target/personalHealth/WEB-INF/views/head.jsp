<%@ page import="com.lisanbian.pojo.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title></title>
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
	<%
		  User user = (User) session.getAttribute("user");
	  if (user != null) {
	  } else {
	  }
	%>

	<!--页头-->
	<div class=" container">
		<div class="row">
			<div class="col-md-10">
				<a href="${pageContext.request.contextPath}/first?username=<%=user.getUsername() %>"><img src="img/yetou.png"></a>
			</div>
			<div class="col-md-2">
				<div class="">
					<br> <a href="#" class="dropdown-toggle btn btn-success"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="true"> <%=user.getUsername()%> <span class="caret "></span></a>
					<ul class="dropdown-menu">
						<li role="separator" class="divider"></li>
						<li><a
							href="${pageContext.request.contextPath}/personal.do?username=<%=user.getUsername()%>">个人中心</a></li>
						<li role="separator" class="divider"></li>

						<li><a href="index.jsp">退出</a></li>
					</ul>

				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-default">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/first">首页</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse "
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">健康报告 <span class="caret"></span></a>
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
					</ul></li>
				<li><a href="#">健康检测</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">健康日志 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li role="separator" class="divider"></li>
						<li><a href="#">膳食日志</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/sport.do?username=<%=user.getUsername() %>">运动日志</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">健康行动 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li role="separator" class="divider"></li>
						<li><a href="#">健康管理目标</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">健康管理任务</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">健康工具 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li role="separator" class="divider"></li>
						<li><a
							href="${pageContext.request.contextPath }/BMI.do">BMI计算器</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="${pageContext.request.contextPath }/DEN.do">每日能量需求</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="${pageContext.request.contextPath }/DBW.do">理想体重计算器</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="${pageContext.request.contextPath }/WHR.do">腰臀比计算器</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">减掉一公斤</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">营养计算器</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">运动能耗计算器</a></li>
					</ul></li>
				<li><a
					href="${pageContext.request.contextPath}/healthInformation.do">健康百科</a></li>
				<li>
					<form class="navbar-form navbar-left" role="search"
						action="${pageContext.request.contextPath}/searchTitle.do"
						method="post">
						<div class="form-group">
							<input type="text" name="title" class="form-control"
								placeholder="请输入想要搜索的文章">
						</div>
						<button type="submit" class="btn btn-default">搜索</button>
					</form>
				</li>
			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- 导航栏结束-->
</body>
</html>