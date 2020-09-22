<%@ page import="com.lisanbian.pojo.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title></title>
    <meta name="keywords" content="">
    <meta name="description" content=" ">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
            <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
     <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>

    </script>
</head>
<body>
         <%  User user = (User) session.getAttribute("user");
			  if(user != null){}else{} %>

<jsp:include page="head.jsp"></jsp:include>
<div class="container">
  <div class="row">
    <div class="col-md-4">
      
    </div>
    <div class="col-md-4">
      <h5>请输入您的身高、体重：</h5>
      <br><br><br>
      <form method="post" action="${pageContext.request.contextPath}/CBMI.do">
      <div  class="input-group">
      <input type="text" class="form-control"  placeholder="请输入您的身高" aria-describedby="basic-addon2" name="height">
      <span class="input-group-addon" id="basic-addon2">CM</span>
        
      </div>
      <br><br>
      <div class="input-group">
              <input type="text" class="form-control"  placeholder="请输入您的体重" aria-describedby="basic-addon2" name="weight">
      <span class="input-group-addon" id="basic-addon2">KG</span>
      </div>
      <br><br><br><br><br>
      <div>
      <button type="submit" class="btn btn-success btn-group btn-group-justified">开始计算</button>
      </div>
      </form>
    </div>
    <div class="col-md-4">
      
    </div>
  </div>
</div>
<br><br>
<div class="container">
    <%-- 取出的参数为Object类型，不能直接强转为int与double--%>
		<%
		Integer panduan=(Integer) request.getAttribute("panduan");
		if(panduan.intValue()==1){}else{
		Double re=(Double)request.getAttribute("result");
		%>
  <h4 class="text-center" style="color:red">您的BMI的指数为：<%=re.doubleValue()%></h4>
  <%}%>
</div>
<div class="container">
  <div class="row">
    <div class="col-md-3">
      
    </div>
     <div class="col-md-3">
      <span><h3>体重指数(BMI)能反映机体的肥胖程度。超重、肥胖是糖尿病、冠心病、中风等的重要危险因素，体重控制不仅可以改善当前的身体健康，而且减少潜在的健康危险因素。</h3></span>
    </div>
     <div class="col-md-3">
      <img src="img/BMI.png">
    </div>
     <div class="col-md-3">
      
    </div>
  </div>
</div>
<jsp:include page="end.jsp"></jsp:include>
</body>
</html>