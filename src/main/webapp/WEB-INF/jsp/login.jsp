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
<%@ page import="tool.Token" %>
<html>
<meta charset="utf-8">
<base href="<%=basePath%>" >
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
	<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/validator.js"></script>
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css" />
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap-theme.css" />
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"  ></script>
	
	<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
    <title>login</title>
    <style>
    .row{
    	margin-top:100px;
    }
    h3{
    	text-align:center;
    	padding-bottom:30px;
    }
    .st-error{
    	display:block;
    	width:100px;
    	line-height:16px;
    	font-size:12px;
    	color:red;
    	padding-top:8px;
    }
    </style>
</head>
<body>
	<%-- <%=basePath%>
	<br/>
	<%=session.getAttribute("user_login_id")%>
	<script>
	window.setTimeout(function(){
		$("body").append("<%=session.getAttribute("user_login_id")%>");
	},1000); 
	</script>
	<p>
		<form>  
    		<input type="block" 
    		name="<%=Token.TOKEN_STRING_NAME %>" 
    		value="<%=Token.getTokenString(session) 
    		%>">  
		</form> 
	</p> --%>
	
	<div class="row">
	  <div class="col-md-4"></div>
	  <div class="col-md-4">
	  	<h3>登录</h3>
	  	<!-- user/loginUser -->
	  	<form id="upForm" class="form-horizontal" action="user/loginUser" onsubmit="return login()" method="post">
	  		<!-- 用户名 -->
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
		    <div class="col-sm-10">
		      <input  name="username" type="email" class="form-control st-control st-block" id="username" placeholder="用户名">
		      <div class="st-error" id="err1"></div>
		    </div>
		  </div>
		  	<!-- 密码 -->
		  <div class="form-group">
		    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-10">
		      <input  name="password" type="password" class="form-control st-control st-block" id="password" placeholder="密码">
		      <div class="st-error" id="err2"></div>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button id="submit" type="submit" class="btn btn-default">登录</button>
		      <a style="margin-left:30px;"  href="<%=basePath%>user/reg">注册</a>
		    </div>
		  </div>
		</form>
	  </div>
	  <div class="col-md-4"></div>
	</div>
</body>
</html>