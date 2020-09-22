<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>每日能量需求</title>
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
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<h5>请输入您的身高、体重、年龄：</h5>
				<br> <br> <br>
				<form method="post"
					action="${pageContext.request.contextPath}/CDEN.do">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="请输入您的身高"
							aria-describedby="basic-addon2" name="height"> <span
							class="input-group-addon" id="basic-addon2">CM</span>

					</div>
					<br> <br>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="请输入您的体重"
							aria-describedby="basic-addon2" name="weight"> <span
							class="input-group-addon" id="basic-addon2">KG</span>
					</div>
					<br> <br>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="请输入您的年龄"
							aria-describedby="basic-addon2" name="age"> <span
							class="input-group-addon" id="basic-addon2">年龄</span>
					</div>
					<br><br>
					<div class="radio " style="text-align:center">
						<label> <input type="radio" name="optionsRadios"
							id="optionsRadios1" value="0" checked> 男
						</label> <label> <input type="radio" name="optionsRadios"
							id="optionsRadios2" value="1"> 女
						</label> <br> <br> <br> <br> <br>
					</div>
						<div>
							<button type="submit"
								class="btn btn-success btn-group btn-group-justified">开始计算</button>
						</div>
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	<br>
	<br>

	<div class="container">
		<table class="table">
			<tr class="warning">
				<td><h4 class="text-center ">
						 想知道您一天究竟该摄入多少能量吗？根据您提供的个人信息，我们为您估算出每日所需要的最低能量，作为您合理安排膳食，运动的参考。</h4></td>
			</tr>

		</table>

		<table class="table">
			<tr class="success">
				<td><h4 class="text-center ">
						
						你每日所需能量：${result}&nbsp;Kcal<br><br>
						 需运动增加能量：    0    Kcal
					
					</h4></td>
			</tr>

		</table>

	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-3 ">
				
			</div>
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
		</div>
	</div>
	<div class="container ">
		<div class="row ">
			<div class="col-md-4"></div>
			<div class="col-md-4 ">
			<div class="">
					
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>

	<jsp:include page="end.jsp"></jsp:include>
</body>
</html>