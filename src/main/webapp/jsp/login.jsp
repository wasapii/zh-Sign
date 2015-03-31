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
  </head>
  
  <body>
   <body class="login">
	<div class="logo">
		<img src="image/logo-big.png" alt="" /> 
	</div>
	<div class="content">
		<form class="form-vertical login-form" action="index.html">
			<h3 class="form-title">Login to your account</h3>
			<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Enter any username and password.</span>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" style="height: 30px" type="text" placeholder="Username" name="username"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" style="height: 30px" type="password" placeholder="Password" name="password"/>
					</div>
				</div>
			</div>
			<div class="form-actions">
				<label class="checkbox">
				<input type="checkbox" name="remember" value="1"/> Remember me
				</label>
				<button type="submit" class="btn blue pull-right">
				Login <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>
	</div>
	<div class="copyright">
		2015 &copy; Sign - Unified Login Management.
	</div>
  </body>
</html>
