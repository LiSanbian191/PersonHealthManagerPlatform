<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false" %>
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
							<c:forEach items="${darticle }" var="a">
								标题：<textarea class="form-control" placeholder="${a.title }"
									rows="1" name=title></textarea>
								<br>
								导语：
								<textarea class="form-control" placeholder="${a.content }"
									rows="1" name=content></textarea>
								<br>
								文章：
								<textarea class="form-control" placeholder="${a.article }"
									style="height: 400px" rows="3" name=article></textarea>
								<br>
								<br>
								作者：
								<textarea class="form-control" placeholder="${a.author }"
									rows="1" name=author></textarea>
								<br>

								<br>

							</c:forEach>
						</div>
						<div class="col-md-2">
							<div class="row">
								<div class="col-md-6">
									<a class="btn btn-success" href="findAllContent.do">返回</a>
								</div>
								<div class="col-md-6">
									<a class="btn btn-success"
										href="${pageContext.request.contextPath}/deleteArticle.do?title=${a.title}"
										onclick="deleteTrue()">删除</a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
<script type="text/javascript">
	function deleteTrue() {
		alert("确定要删除本文章！！！")
	}
</script>
</html>