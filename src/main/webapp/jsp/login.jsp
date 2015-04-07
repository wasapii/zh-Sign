<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath%>css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath%>css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath%>css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath%>css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="<%=basePath%>css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath%>css/login-soft.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="<%=basePath%>image/favicon.ico" />
 	<script type="text/javascript" src="<%=basePath%>js/jquery-1.9.1.min.js"></script>
  	<script type="text/javascript">
  	$(document).ready(function(){
  		$("#login").click(function(){
			var userId = $("#userSign.userName").val();
	  		var params = $("#loginForm").serialize();
			$.ajax({
				url	: "signUserJson!login.action",
				type :"post",
				//dataType: "json",
				data : params,
				timeout : 2000,
				success	: function(data){
					if(data == "success"){
						$("#msg").html("登录成功！");
	                	window.location.href ="signUserAction!test.action?id="+userId;  
	   				}else{
						$("#msg").html("用户名或密码错误！");
					}
	            },
				error	: function(){
					alert("请求失败");
				},
				beforeSend :function(){
					$("#msg").html("正在验证，请稍后...");
				}
			});
  		});
  	});
  	</script>
  </head>
  
  <body>
   <body class="login">
	<div class="logo">
		<img src="image/logo-big.png" alt="" /> 
	</div>
	<div class="content">
		<form class="form-vertical login-form" id = "loginForm">
			<h3 class="form-title">请登录</h3>
			<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>请输入用户名与密码.</span>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">用户名：</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" style="height: 30px" type="text" placeholder="Username" id = "userSign.userName"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">密码：</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" style="height: 30px" type="password" placeholder="Password" id = "userSign.userPassword"/>
					</div>
				</div>
			</div>
			<div id = "msg"></div>
			<div class="form-actions">
				<label class="checkbox">
				<input type="checkbox" name="remember" value="1"/> 记住用户名
				</label>
				<button type="submit" class="btn blue pull-right" id="login">
				登录 <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>
	</div>
	<div class="copyright">
		2015 &copy; Sign - Unified Login Management.
	</div>
  </body>
</html>
