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
						<div class="col-md-0"></div>
						<div class="col-md-10">
							<table class="table table-hover">
								<caption>文章列表</caption>
								<thead>
									<tr>
										<th>文章标题</th>
										<th>文章导语</th>
										<th>文章作者</th>
										<th>操作</th>
									</tr>
								</thead>
								<c:forEach items="${article }" var="a">
									<tbody>
										<tr>
											<td width="10%">${a.title }</td>
											<td>${a.content }</td>
											<td width="10%">${a.author }</td>
											<td width="10%"><a
												href="${pageContext.request.contextPath}/lookArticle.do?title=${a.title}">查看</a>
												<br> <br> <a
												href="${pageContext.request.contextPath}/deleteArticle.do?title=${a.title}"
												onclick="deleteTure()">删除</a></td>
										</tr>

									</tbody>
								</c:forEach>
							</table>
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
<script>
	function deleteTure() {
		if (window.confirm("确定删除吗?")) {
			
			window.location.href= "${pageContext.request.contextPath}/deleteArticle.do?title=${a.title}";
			} else {
			window.location = "findAllContent.do" ;
			}
	}
</script>
</html>