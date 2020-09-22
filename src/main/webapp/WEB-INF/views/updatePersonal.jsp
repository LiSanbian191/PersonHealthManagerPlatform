<%@ page import="com.lisanbian.pojo.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	  User user = (User) session.getAttribute("user");
	  if (user != null) {
	  } else {
	  }
	%>
	<!--栅格系统个人中心-->
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<table class="table table-bordered table-hover success">
					<tr>
						<td class="active success"><h2><a href="${pageContext.request.contextPath}/personal.do?username=<%=user.getUsername() %>" style="color:black">个人中心</a></h2></td>
					</tr>
					<tr>
						<td class="active"><a href="${pageContext.request.contextPath}/first.do?username=<%=user.getUsername() %>" style="color: black">网站首页</a></td>
					</tr>
					<tr>
						<td class="active"> <a href="${pageContext.request.contextPath}/updatePersonal.do?username=<%=user.getUsername() %>" style="color:black">资料修改</a></td>
					</tr>
					<tr>
						<td class="active"><a
							href="${pageContext.request.contextPath}/updatePassword.do?username=<%=user.getUsername() %>"
							style="color: black">修改密码</a></td>
					</tr>
					<tr>
						<td class="active"><a
							href="${pageContext.request.contextPath}/deleteUser.do?username=<%=user.getUsername() %>"
							style="color: black">注销用户</a></td>
					</tr>
					<tr>
						<td class="active"><a href="#" style="color: black">退出登陆</a></td>
					</tr>
				</table>
			</div>

			<div class="col-md-10">

				<table class="table table-bordered table-hover success">
					<form
						action="${pageContext.request.contextPath}/newPerInfor.do?username=<%=user.getUsername() %>"
						method="post">
						<c:forEach items="${oldPersonData}" var="data">

							<div class="alert alert-warning">
								<a href="#" class="close" data-dismiss="alert"> &times; </a> <strong>为了更好的为您提供服务，请您完善个人信息！</strong>
							</div>
							<tr>
								<td class="active success"><h4>个人资料</h4></td>
							</tr>
							<tr>
								<td class="active"><div class="input-group input-group">
										<span class="input-group-addon">用户名：</span> <input type="text"
											id="disabledTextInput" class="form-control"
											placeholder="${data.username } 不可修改 禁止输入" disabled>
									</div></td>
							</tr>
							<tr>
								<td class="active"><h6>头像:</h6></td>
							</tr>
							<tr>
								<td class="active"><div class="input-group input-group">
										<span class="input-group-addon">手机号：</span> <input type="text"
											class="form-control" value ="${data.phone }" placeholder="${data.phone }"
											name="phone">
									</div></td>
							</tr>
							<tr>
								<td class="active"><div class="input-group input-group">
										<span class="input-group-addon">邮箱：</span> <input type="text"
											class="form-control" value="${data.email }"placeholder="${data.email }"
											name="email">
									</div></td>
							</tr>
							<tr>
								<td class="active"><div class="input-group input-group">
										<span class="input-group-addon">身份证：</span> <input type="text"
											class="form-control" value="${data.idCard }"placeholder="${data.idCard }"
											name="idCard">
									</div></td>
							</tr>
							<tr>
								<td class="active"><div class="input-group input-group">
										<span class="input-group-addon">联系地址： </span> <input
											type="text" class="form-control" value="${data.address }"
											placeholder="${data.address }" name="address">
									</div></td>
							</tr>
							<tr>
								<td class="active"><button type="submit"
										class="btn btn-success btn-group btn-group-justified">点击修改</button></td>
							</tr>
						</c:forEach>
					</form>
				</table>

			</div>
		</div>
	</div>
	<jsp:include page="end.jsp"></jsp:include>
</body>
</html>