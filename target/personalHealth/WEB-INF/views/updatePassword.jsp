<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改密码</title>
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
	<!--栅格系统个人中心-->
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<table class="table table-bordered table-hover success">
					<%
					  String name = (String) session.getAttribute("loginName");
								if (name != null) {
								} else {
								}
					%>
					<tr>
						<td class="active success"><h2><a href="${pageContext.request.contextPath}/personal.do?username=<%=name %>" style="color:black">个人中心</a></h2></td>
					</tr>
					<tr>
						<td class="active"><a href="${pageContext.request.contextPath}/first.do?username=<%=name %>" style="color: black">网站首页</a></td>
					</tr>
					<tr>
						<td class="active"> <a href="${pageContext.request.contextPath}/updatePersonal.do?username=<%=name %>" style="color:black">资料修改</a></td>
					</tr>
					<tr>
						<td class="active"><a
							href="${pageContext.request.contextPath}/updatePassword.do?username=<%=name %>"
							style="color: black">修改密码</a></td>
					</tr>
					<tr>
						<td class="active"><a
							href="${pageContext.request.contextPath}/deleteUser.do?username=<%=name %>"
							style="color: black">注销用户</a></td>
					</tr>
					<tr>
						<td class="active"><a href="#" style="color: black">退出登陆</a></td>
					</tr>
				</table>
			</div>
			<div class="col-md-10">
				<!--旧密码错误提示-->
				<%
				  String errorOldPassword = (String) request.getAttribute("oldPasswordError");
							if (errorOldPassword != null) {
				%>
				<script type="text/javascript" language="javascript">
		alert("<%=errorOldPassword%>");                                            // 弹出错误信息
		 // 跳转到登录界面
	</script>
				<%
				  }
				%>

				<!--新密码修改成功提示-->
				<%
				  String successPassword = (String) request.getAttribute("successPassword");
							if (successPassword != null) {
				%>
				<script type="text/javascript" language="javascript">
		alert("<%=successPassword%>
					"); // 弹出错误信息
					// 跳转到登录界面
				</script>
				<%
				  }
				%>
				<form
					action="${pageContext.request.contextPath}/updAction.do?username=<%=name %>"
					method="post">
					<input type="password" name="oldpassword" class="form-control"
						placeholder="请输入旧密码"> <input type="password"
						name="password" class="form-control" placeholder="请输入新密码">
					<button type="submit"
						class="btn btn-success btn-group btn-group-justified">点击修改</button>
				</form>
			</div>

		</div>
		<div>
			<jsp:include page="end.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>