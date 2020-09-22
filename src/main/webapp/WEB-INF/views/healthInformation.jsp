<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>健康百科</title>
<meta name="keywords" content="">
<meta name="description" content=" ">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script type="text/javascript" src="js/jQuery.js"></script>
<script src="js/bootstrap.min.js"></script>
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<%
	  String name = (String) session.getAttribute("loginName");
	  if (name != null) {
	  } else {
	  }
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<table class="table table-bordered table-hover success">
					<tr>
						<td class="active success"><h4>百科类别</h4></td>
					</tr>
					<tr>
						<td class="active"><a href="${pageContext.request.contextPath}/healthInformation.do" style="color: black">健康百科</a></td>
					</tr>
					<tr>
						<td class="active">肠道消息</td>
					</tr>
					<tr>
						<td class="active">膳食</td>
					</tr>
					<tr>
						<td class="active">骨关节</td>
					</tr>
					<tr>
						<td class="active">骨质疏松</td>
					</tr>
					<tr>
						<td class="active">COPD</td>
					</tr>
					<tr>
						<td class="active">冠心病</td>
					</tr>
					<tr>
						<td class="active">糖尿病</td>
					</tr>
					<tr>
						<td class="active">高血压</td>
					</tr>
					<tr>
						<td class="active">肿瘤</td>
					</tr>

				</table>
			</div>
			<div class="col-md-10">
				<c:forEach items="${infor }" var="infor">
					<!--one-->
					<div>
						<div class="row">
							<div class="col-md-4">
								<img src="${infor.pic }" class="img-thumbnail">
							</div>
							<div class="col-md-8">
								<h4>
									<a
										href="${pageContext.request.contextPath}/healInfoDetOne.do?title=${infor.title }"
										style='color: black'><strong>${infor.title }</strong></a>
								</h4>
								<h5>
									<a
										href="${pageContext.request.contextPath}/healInfoDetOne.do?title=${infor.title }"
										style='color: black'>${infor.content }</a>
								</h5>
								<h6>作者：${infor.author }</h6>
							</div>
						</div>
					</div>
					<!--oneOver-->
				</c:forEach>
				<!--oneOver-->
			</div>
		</div>
	</div>
</body>
</html>