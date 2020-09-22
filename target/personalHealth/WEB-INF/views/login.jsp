<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<html>
<head>

<title>个人健康助理平台</title>
<!-- For-Mobile-Apps-and-Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps-and-Meta-Tags -->

<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
</head>

<body>
<h1>个人健康助理平台</h1>
<!--注册用户名重复错误提示-->
<%
	String errorRegist = (String)request.getAttribute("registError");         // 获取错误属性

	if(errorRegist!=null) {
%>
	<script type="text/javascript" language="javascript">
		alert("<%=errorRegist%>");                                            // 弹出错误信息

		window.location='Login' ;                           // 跳转到登录界面
	</script>	
<%
	}
%>


<!--登录用户名密码错误提示-->
<%

	String errorLogin=(String)request.getAttribute("loginError");
	if(errorLogin!=null) {
%>
	<script type="text/javascript" language="javascript">
		alert("<%=errorLogin%>");                                            // 弹出错误信息

		//window.location='Login' ;                           // 跳转到登录界面
	</script>	
<%
	}
%>

<section>
  <div class="controls w3l">
    <div class="cbcontrol" id="cbControlRight"><</div>
    <div class="cbcontrol" id="cbControlLeft">></div>
    <div class="clear"></div>
  </div>
  <div class="stage">
   
    <div class="cbImage w3">
		<h3>管理员登录</h3>
		<form action="${pageContext.request.contextPath}/adminLogin.do" method="post">
			<input type="text" class="email" name="username" placeholder="用户名" required="">
			<input type="password" class="number" name="password" placeholder="密码" required="">
			<input type="submit" class="done" value="立即登录">
		</form>
	</div>
    <div class="cbImage active signin agileits">
		<h3>欢迎登录</h3>
		<form method="post" action="login.do">
			<input type="text" name="username" class="name" placeholder="Username" required="">
			<input type="password" name="password" class="password" placeholder="Password" required="">
			<input type="submit" value="登录">
			<ul class="bottom">
				<li><a href="forgetPassword.do" class="forgot">忘记密码？</a></li>
				
			</ul>
		</form>
	</div>
    <div class="cbImage agileinfo">
		<h3>欢迎注册</h3>
		<form method="post" action="regist.do">
			<input type="text" class="name" name="username" placeholder="Username" required="">
			<input type="password" class="password" name="password" placeholder="Password" required="">
			<input type="text" class="phone" name="phone" placeholder="Phone number" required="">
			<input type="text" class="email" name="email" placeholder="Email" required="">
			<input type="submit" value="注册">
		</form>
	</div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
  <div class="footer">
  <p>&copy; 2020 个人健康助理平台</p>
  </div>
</section>
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/coverflow-slideshow.js"></script>
<div style="text-align:center;">

</div>

</body>
</html>