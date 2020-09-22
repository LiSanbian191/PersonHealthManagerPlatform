<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>腰臀比计算器</title>
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
    <script>

    </script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="container">
  <div class="row">
    <div class="col-md-4">
      
    </div>
    <div class="col-md-4">
      <h5>请输入您的腰围、臀围：</h5>
      <br><br><br>
      <form method="post" action="${pageContext.request.contextPath}/CWHR.do">
      <div  class="input-group">
      <input type="text" class="form-control"  placeholder="请输入您的腰围" aria-describedby="basic-addon2" name="waist">
      <span class="input-group-addon" id="basic-addon2">CM</span>
        
      </div>
      <br><br>
      <div class="input-group">
              <input type="text" class="form-control"  placeholder="请输入您的臀围" aria-describedby="basic-addon2" name="hip">
      <span class="input-group-addon" id="basic-addon2">CM</span>
      </div>

						<br> <br> <br> <br> <br>
					
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
<h4 class="text-center" style="color:red">Hi ~您的腰臀比为：${result }</h4><br><br><br>
</div>
<div class="container">
  <div class="row">
    <div class="col-md-3">


    </div>
     <div class="col-md-3">
      <span><h3>此工具可以帮助您了解自己属于什么体型身材， 如苹果身材是指腰围大于臀围，脂肪多聚焦在身体中间部位， 属向心型肥胖，苹果型肥胖是心血管疾病、糖尿病及其他各种慢性病的危险因素，腰臀比值越大，说明越易发生疾病。</h3></span>
    </div>
     <div class="col-md-3">
      <img src="img/WHR.png">
    </div>
     <div class="col-md-3">
      
    </div>
  </div>
</div>
<jsp:include page="end.jsp"></jsp:include>
</body>
</html>