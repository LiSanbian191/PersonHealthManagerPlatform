<%@page import="com.sun.xml.internal.bind.v2.runtime.Name"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
	<%
	  String username = (String) session.getAttribute("admin");
	%>
<table class="table table-bordered table-hover success">
					<tr>
						<td class="active success"><h3 style="text-align: center;"><a href="adminFirst.do" style="color:black">首页</a></h3></td>
					</tr>
					<tr>
						<td class="active"><a href="turnArticle.do"
							style="color: black">发布文章</a></td>
					</tr>
					<tr>
						<td class="active"><a href="findAllContent.do"
							style="color: black">内容管理</a></td>
					</tr>
					<tr>
						<td class="active">评论管理</td>
					</tr>
					<tr>
						<td class="active"><a href="userManagement.do"
							style="color: black">用户管理</a></td>
					</tr>
					<tr>
						<td class="active">审核</td>
					</tr>
					<tr>
						<td class="active">调查问卷管理</td>
					</tr>
				
					<%
					if(username.equals("admin")){
					%>
					<tr>
						<td class="active"><a href="turnAddAdmin.do" style="color: black">新增管理员</a></td>
					</tr>
					<%} %>
					<tr>
						<td class="active"><a href="Login.do" style="color: black">退出登录</a></td>
					</tr>
				</table>
</body>
</html>