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
<title>理想体重计算器</title>
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

	<jsp:include page="head.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<h5>请输入您的身高、体重：</h5>
				<br> <br> <br>
				<form method="post"
					action="${pageContext.request.contextPath}/CDBW.do">
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
					<br> <br> <br> <br> <br>
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
			<tr class="danger">
				<td><h4 class="text-center ">
						体重是身体健康状况的重要指标，体重过低或者超重、肥胖都会增加您的患病风险。理想体重指的是体重数值在正常范围内，体型构成比例合适。</h4></td>
			</tr>

		</table>
		<%
		  Integer panduan = (Integer) request.getAttribute("panduan");
		  if (panduan.intValue() == 1) {
		  } else {
		    Double re = (Double) request.getAttribute("result");
		    Double min=(Double) request.getAttribute("min");
		    Double max=(Double) request.getAttribute("max");
		    Double weight=(Double)request.getAttribute("uweight");
		    String state=(String)request.getAttribute("state");
		%>
		<table class="table">
			<tr class="success">
				<td><h4 class="text-center ">
						您的理想体重是：<%=re.doubleValue()%>&nbsp;kg
					</h4></td>
			</tr>

		</table>

	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-3 ">
				<span><h3>专家提醒您：</h3></span>
			</div>
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div>
					<h4>
						您的理想体重应是：<%=re.doubleValue()%>&nbsp;kg
					</h4>
				</div>
				<br>
				<div><h4>您的标准体重应是：<%=min.doubleValue() %>&nbsp;kg&nbsp;~&nbsp;<%=max.doubleValue() %>&nbsp;kg</h4></div>
				<br>
				<div><h4>您的实际体重应是：<%=weight.doubleValue()%>&nbsp;KG &nbsp;属于&nbsp;&nbsp;<%=state%></h4></div>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	<%
	  }
	%>
	<jsp:include page="end.jsp"></jsp:include>
</body>
</html>