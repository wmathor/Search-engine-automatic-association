<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" 
	href="/jsp/res/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%= basePath %>res/animate.min.css">
<script type="text/javascript" src="<%= basePath %>res/jquery-1.11.0.min.js"></script>
