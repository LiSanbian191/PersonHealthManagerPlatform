<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

<%
	String errorRegist = (String)request.getAttribute("registError");         // 获取错误属性

	if(errorRegist != null) {
%>
	<script type="text/javascript" language="javascript">
		alert("<%=errorRegist%>");                                            // 弹出错误信息

	</script>	
<%
	}
%>
<section>
  <div class="controls w3l">
  
    <div class="clear"></div>
  </div>
  <div class="stage">
  
   <div class="cbImage agileinfo" >
		<h3>找回密码</h3>
		<form method="post" action="${pageContext.request.contextPath}/subForgetPassword.do">
			<input type="text" class="name" name="username" placeholder="Username" required="">			
			<input type="text" class="phone" name="phone" placeholder="Phone number" required="">
			<input type="submit" value="提交">
		</form>
		<% 
		Integer panduan=(Integer) request.getAttribute("panduan");
		if(panduan.intValue()==1){}else{
		String re=(String)request.getAttribute("password"); 
		%>
  <h4 class="text-center" style="color:red">您的密码为：<%=re%><br>请您牢记！！！</h4>
  <%} %>
	</div>
    
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
  <div class="footer">
  <p>&copy; 2018 个人健康助理平台</p>
  </div>
</section>
<script src="js/jquery-2.1.4.min.js"></script> 
<script src="js/coverflow-slideshow.js"></script>
<div style="text-align:center;">

</div>

</body>
</html>