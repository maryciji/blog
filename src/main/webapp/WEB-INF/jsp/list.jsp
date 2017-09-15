
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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
    <title>用户表</title>
    <% if(session.getAttribute("user_login_ticket") == null) { %>
	  <script>
	  window.location.href="<%=basePath%>user/login";
	  </script>
	<% } else { %>
	       欢迎 <%=session.getAttribute("username")%>
	<% } %>
	<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/list.js"></script>
</head>
<body>


<!-- <form action="create" method="post">
    用户名：<input type="text" name="username"/><br>
    密码：<input type="text" name="password"/><br>
    年龄:<input type="text" name="age"><br>
    <input type="submit" value="添加">
</form> -->
<table style="border: 1px solid #666;">
    <tr>
        <td>ID</td>
        <td>用户名</td>
        <td>密码</td>
        <td>年龄</td>
        <td>操作</td>
        <td>删除</td>
    </tr>
    <c:forEach items="${list}" var="sk">
        <tr>
            <td>${sk.id}</td>
            <td>${sk.username}</td>
            <td>${sk.password}</td>
            <td>${sk.age}</td>
            <td><a href="change?id=${sk.id}">修改</a></td>
            <td><a href=javascript:rec(${sk.id});>删除</a></td>
        </tr>
    </c:forEach>
</table>
</body>
<script type="text/javascript">
    function rec(id) {
        var mymessage = confirm("你确定删除吗？");
        if (mymessage == true) {
            self.location = 'delete?id=' + id;
        }
        else if (mymessage == false) {
            self.location = '#';
        }
    }
</script>
<style>
    table,tr,td{
        border: 1px solid #999;
        padding: 3px 5px 3px 5px;
    }
</style>
</html>
