<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="css/style.css" rel="stylesheet" type="text/css"/>
	<link href="css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="image/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/select2_metro.css" />
	<link rel="stylesheet" href="css/DT_bootstrap.css" />

	<script type="text/javascript" src="<%=basePath%>js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/app.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/table-managed.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/select2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			//TableManaged.init();
		});
	</script>
</head>

<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- BEGIN PAGE HEADER-->
			<div class="row-fluid">
				<div class="span12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
						Managed Tables <small>managed table samples</small>
					</h3>
					<ul class="breadcrumb">
						<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
							class="icon-angle-right"></i></li>
						<li><a href="#">Data Tables</a> <i class="icon-angle-right"></i>
						</li>
						<li><a href="#">Managed Tables</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row-fluid">
				<div class="span12">
					<!-- BEGIN EXAMPLE TABLE PORTLET-->
					<div class="portlet box light-grey">
						<div class="portlet-title">
							<div class="caption">
								<i class="icon-globe"></i>Managed Table
							</div>
						</div>
						<div class="portlet-body">
							<div class="clearfix">
								<div class="btn-group">
									<button id="sample_editable_1_new" class="btn green">
										Add New <i class="icon-plus"></i>
									</button>
								</div>
								<div class="btn-group pull-right">
									<button class="btn dropdown-toggle" data-toggle="dropdown">
										Tools <i class="icon-angle-down"></i>
									</button>
									<ul class="dropdown-menu pull-right">
										<li><a href="#">Print</a>
										</li>
										<li><a href="#">Save as PDF</a>
										</li>
										<li><a href="#">Export to Excel</a>
										</li>
									</ul>
								</div>
							</div>
							<table class="table table-striped table-bordered table-hover"
								id="sample_1">
								<thead>
									<tr>
										<th style="width:8px;"><input type="checkbox"
											class="group-checkable" data-set="#sample_1 .checkboxes" />
										</th>
										<th>Username</th>
										<th class="hidden-480">Email</th>
										<th class="hidden-480">Points</th>
										<th class="hidden-480">Joined</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd gradeX">
										<td><input type="checkbox" class="checkboxes" value="1" />
										</td>
										<td>shuxer</td>
										<td class="hidden-480"><a href="mailto:shuxer@gmail.com">shuxer@gmail.com</a>
										</td>
										<td class="hidden-480">120</td>
										<td class="center hidden-480">12 Jan 2012</td>
										<td><span class="label label-success">Approved</span>
										</td>
									</tr>
									<tr class="odd gradeX">
										<td><input type="checkbox" class="checkboxes" value="1" />
										</td>
										<td>looper</td>
										<td class="hidden-480"><a
											href="mailto:looper90@gmail.com">looper90@gmail.com</a>
										</td>
										<td class="hidden-480">120</td>
										<td class="center hidden-480">12.12.2011</td>
										<td><span class="label label-warning">Suspended</span>
										</td>
									</tr>
									<tr class="odd gradeX">
										<td><input type="checkbox" class="checkboxes" value="1" />
										</td>
										<td>userwow</td>
										<td class="hidden-480"><a href="mailto:userwow@yahoo.com">userwow@yahoo.com</a>
										</td>
										<td class="hidden-480">20</td>
										<td class="center hidden-480">12.12.2012</td>
										<td><span class="label label-success">Approved</span>
										</td>
									</tr>
									<tr class="odd gradeX">
										<td><input type="checkbox" class="checkboxes" value="1" />
										</td>
										<td>user1wow</td>
										<td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a>
										</td>
										<td class="hidden-480">20</td>
										<td class="center hidden-480">12.12.2012</td>
										<td><span class="label label-inverse">Blocked</span>
										</td>
									</tr>
									<tr class="odd gradeX">
										<td><input type="checkbox" class="checkboxes" value="1" />
										</td>
										<td>restest</td>
										<td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a>
										</td>
										<td class="hidden-480">20</td>
										<td class="center hidden-480">12.12.2012</td>
										<td><span class="label label-success">Approved</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- END EXAMPLE TABLE PORTLET-->
				</div>
			</div>
		</div>
	</div>
</body>
</html>
