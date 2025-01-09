<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I'm a fullStack developer now!</title>
</head>
<body>
<!-- 스크립틀릿 방식 -->
	<h1>This is a JSP file.</h1>
	<% for(int i=0; i<10; i++){ %>
		<h1><%= i %></h1>
	<% } %>

<a href="step-1.jsp?name=홍길동&age=12">step-1.jsp로 이동</a>
<a href="step-2.jsp">step-2.jsp로 이동</a>
</body>
</html>