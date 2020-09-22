<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script type="text/javascript" src="js/jQuery.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>个人健康管理平台后台</title>
</head>
<body>
	<%
	  String username = (String) session.getAttribute("admin");
	%>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<img src="img/yetou.png">
			</div>
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
			<div class="col-md-3">
				<h3 style="text-align: right;">
					欢迎：<%=username%></h3>

			</div>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1">
				<jsp:include page="adminNavBar.jsp"></jsp:include>
			</div>
			<div class="col-md-11">
				<div class="container">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-9">
							<h3 style="text-align: center;">编辑文章</h3>
							<form method="post"
								action="${pageContext.request.contextPath}/insertArticle.do">
								<textarea class="form-control" placeholder="请输入标题" rows="1"
									name=title></textarea>
								<br>
								<textarea class="form-control" placeholder="请输入导语" rows="1"
									name=content></textarea>
								<br>
								<textarea class="form-control" placeholder="请输入文章内容"
									style="height: 400px" rows="3" name=article></textarea>
								<br> <br>
								<textarea class="form-control" placeholder="请输入作者" rows="1"
									name=author></textarea>
								<br>
								<textarea class="form-control" placeholder="图片" rows="1"
									name=pic></textarea>
								<br>
								<button type="submit"
									class="btn btn-success btn-group btn-group-justified">点击提交</button>
							</form>
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>