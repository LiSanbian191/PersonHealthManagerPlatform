
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
        <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
     <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
	<jsp:include page="head.jsp" />
<%
	  User user = (User) session.getAttribute("user");
	  if (user != null) {
	  } else {
	  }
	%>

	<div class="container" style="min-height:575px;">

      <div class="tabbable" id="tabs-report">
        <ul class="nav nav-tabs">
          <li id="tongji" class="active">
            <a href="#panel-0" data-toggle="tab">统计运动记录</a>
          </li>
          <li id="write" class="">
            <a href="#panel-1" data-toggle="tab">填写运动日志</a>
          </li>
        </ul>
      </div>

      <div class="tab-content">
          <div class="tab-pane active" id="panel-0">
          <div class="block">
          		<h3>我的运动纪录</h3>
            <table class="table table-striped table-hover table-responsive" style="font-size:14px;">
              <thead>
                <tr class="success">
                    <th>运动日期</th>
                    <th class="hidden-xs">日运动能量消耗(千卡)</th>
                    <th class="hidden-xs">日运动时间(分)</th>
                    <th>运动结构</th>
                    <th>操作</th>
                </tr>
                
                </thead>
                <c:forEach items="${sportInfo }" var="a">
                 <tr >
                    <th>${a.sportTime }</th>
                    <th class="hidden-xs">${a.energy }</th>
                    <th class="hidden-xs">${a.sportTimeLonge }</th>
                    <th>${a.sportWay }</th>
                    <th><a href="${pageContext.request.contextPath}/deleteSportInfo.do?sportTime=${a.sportTime}">删除</a></th>
                </tr>
                </c:forEach>
              <tbody>
                
              </tbody>
            </table>
			         <!-- 引入分页 -->
			         

<div class="hidden-xs hidden-sm" style="margin-top:0;padding:0 20px" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc5-5" data-genuitec-path="/chni-dubbo-web/src/main/webapp/WEB-INF/comm/pagination.jsp">
	
 </div>
 
 <div class="container hidden-lg hidden-md">
 	<ul class="pager pageul">
		<li><a href="javascript:void(0)">上一页</a></li>
		<li>/</li>
		<li><a href="javascript:void(0)">下一页</a></li>
	</ul>
 </div>

	          </div><!-- block -->
          </div>
            <!--第2选项卡-->
            <div class="tab-pane" id="panel-1">
              <div class="block">
              	<h3>填写运动纪录</h3>
	              <form action="${pageContext.request.contextPath}/addSportInfo.do?username=<%=user.getUsername() %>" method="post" id="">
	                <div class="row">
	                   <div class="col-md-6">
	                   		  <div class="col-md-12">
		                      <label for="" class="col-md-4 control-label">运动日期：</label>
		                      <div class="col-md-8" style="padding-left:0 ;margin-top:5px">
		                          <div class="input-group">
		                          <input type="text" class="form-control" name="sportTime" id="exercisetime" placeholder="运动日期(时间)">
		                           <span class="input-group-addon">时间</span>
		                           </div>
		                            <span class="help-block" id="valierr" style="color:red"></span>
	                        </div>
	                    </div>
		                      <div class="col-md-12">
		                      <label for="" class="col-md-4 control-label">运动能量消耗：</label>
		                      <div class="col-md-8" style="padding-left:0 ;margin-top:5px">
		                          <div class="input-group">
		                          <input type="text" class="form-control" name="energy" id="exercisetime" placeholder="运动能量消耗(千卡)">
		                           <span class="input-group-addon">千卡</span>
		                           </div>
		                            <span class="help-block" id="valierr" style="color:red"></span>
	                        </div>
	                    </div>
	                      <div class="col-md-12">
		                      <label for="" class="col-md-4 control-label">运动时长：</label>
		                      <div class="col-md-8" style="padding-left:0 ;margin-top:5px">
		                          <div class="input-group">
		                          <input type="text" class="form-control" name="sportTimeLonge" id="exercisetime" placeholder="运动时长(分钟)">
		                           <span class="input-group-addon">分钟</span>
		                           </div>
		                            <span class="help-block" id="valierr" style="color:red"></span>
	                        </div>
	                    </div>
		                    <div class="col-md-12">
		                      <label for="" class="col-md-4 control-label">运动方式：</label>
		                      <div class="col-md-8" style="padding-left:0 ;margin-top:5px">
		                          <div class="input-group">
		                          <input type="text" class="form-control" name="sportWay" id="exercisetime" placeholder="运动方式(方式)">
		                           <span class="input-group-addon">方式</span>
		                           </div>
		                            <span class="help-block" id="valierr" style="color:red"></span>
	                        </div>
	                    </div>

                    	<div class="col-md-12" style="font-size:14px;margin-top:10px;margin-left:10px;">
                          <button class="btn btn-success btn-block" type="submit">提交</button>
                        </div>
                        
	                   </div>
	                   <!-- 右侧图片 -->
	                   <div class="col-md-6 hidden-xs hidden-sm">
	                   		<img src="img/h_log2.jpg" alt="" style="max-height:260px;" class="img-rounded img-responsive">
	                   </div>
	                   </div>
					</form>
					
					
					
				   </div><!-- block -->
               </div>
          </div>
    </div>
    <jsp:include page="end.jsp"></jsp:include>
</body>
</html>