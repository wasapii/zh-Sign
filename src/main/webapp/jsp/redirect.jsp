<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>系统选择界面</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="css/style.css" rel="stylesheet" type="text/css"/>
	<link href="css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="image/favicon.ico" />
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>layer/layer.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js" type="text/javascript"></script>
  </head>
  

<body>
	<div class="header navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
			<div class="container-fluid">
				<a class="brand" href="index.html">
				<img src="image/logo.png" alt="logo" />
				</a>

				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
				<img src="image/menu-toggler.png" alt="" />
				</a>          
				<ul class="nav pull-right">
					<li class="dropdown user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img alt="" src="image/avatar1_small.jpg" />
						<span class="username">Bob Nilson</span>
						<i class="icon-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="extra_profile.html"><i class="icon-user"></i> My Profile</a></li>
							<li><a href="page_calendar.html"><i class="icon-calendar"></i> My Calendar</a></li>
							<li><a href="inbox.html"><i class="icon-envelope"></i> My Inbox(3)</a></li>
							<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
							<li class="divider"></li>
							<li><a href="extra_lock.html"><i class="icon-lock"></i> Lock Screen</a></li>
							<li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="portlet box red">
				<div class="portlet-title">
					<div class="caption"><i class="icon-reorder"></i>Welcome to Sign,Please choice your system.</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="#portlet-config" data-toggle="modal" class="config"></a>
							<a href="javascript:;" class="reload"></a>
							<a href="javascript:;" class="remove"></a>
						</div>
				</div>
				<div class="portlet-body" style="height: 700px">
					<p>            
						<button type="button" class="btn">Default</button>
						<button type="button" class="btn red">Primary</button>
						<button type="button" class="btn blue">Info</button>           
						<button type="button" class="btn green">Success</button>
					</p>
					<div class="btn-group">
						<button class="btn">Left</button>
						<button class="btn">Middle</button>
						<button class="btn">Right</button>
					</div>
				</div>
				<div class="footer">
					<div class="copyright" align="center">2015 &copy; Sign - Unified
						Login Management.</div>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>
