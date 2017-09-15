<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<meta charset="utf-8">
<base href="<%=basePath%>" >
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css" />
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap-theme.css" />
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"  ></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"  ></script>
	<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
    <title>succ</title>
    
</head>
<body>
	<h3>登录失败</h3>
	<h5>2秒后跳转...</h5>
	<script>
		window.setTimeout(function(){
			window.location.href="http://localhost:8099/Boke/user/login"; 
		},2000);
	</script>
</body>
</html>