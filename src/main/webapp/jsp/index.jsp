<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
</head>
<frameset rows="40,*,4%"  frameborder="NO" border="0" framespacing="0">
	<frame src="<%=basePath%>jsp/frame/top.jsp" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
    <frameset cols="280,*" rows = "*" id="frame">  
  		<frame src="<%=basePath%>jsp/frame/left.jsp" name="left" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
		<frame src="<%=basePath%>jsp/frame/right.jsp" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
  	</frameset>
  	<frame src="<%=basePath%>jsp/frame/foot.jsp" noresize="noresize" frameborder="NO" name="footFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
</frameset>
</html>