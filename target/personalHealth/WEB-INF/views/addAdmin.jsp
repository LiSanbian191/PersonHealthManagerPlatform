<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	<!--注册用户名重复错误提示-->
<%
	String errorRegist = (String)request.getAttribute("registError");         // 获取错误属性

	if(errorRegist != null) {
%>
	<script type="text/javascript" language="javascript">
		alert("<%=errorRegist%>");                                            // 弹出错误信息

		window.location='addAdmin.do' ;                           // 跳转到登录界面
	</script>	
<%
	}
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
							<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/addAdmin.do">
							  <div class="form-group">
							    <label for="firstname" class="col-sm-2 control-label">用户名</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" name="username"id="firstname" placeholder="请输入用户名">
							    </div>
							  </div>
							  <div class="form-group">
							    <label for="lastname" class="col-sm-2 control-label">密码</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" name="password" id="lastname" placeholder="请输入密码">
							    </div>
							  </div>
							    <div class="form-group">
							    <label for="lastname" class="col-sm-2 control-label">电话</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" name="phone" id="lastname" placeholder="请输入电话">
							    </div>
							  </div>
							    <div class="form-group">
							    <label for="lastname" class="col-sm-2 control-label">邮箱</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" name="email" id="lastname" placeholder="请输入邮箱">
							    </div>
							  </div>
							  <div class="form-group">
							    <div class="col-sm-offset-2 col-sm-10">
							      <button type="submit" class="btn btn-default">新增</button>
							    </div>
							  </div>
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