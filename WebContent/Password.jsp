<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	
	<h1>您的用户名是：${checkusername.username}</h1>
	<h1>您的密码是：${checkusername.userpassword}</h1>
	<p>
	<li>
		<a href="Login.jsp">登录</a>&nbsp;<a href="Register.jsp">注册</a>
	</li>
</body>
</html>