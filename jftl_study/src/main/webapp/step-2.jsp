<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="step-3.jsp">
		Name: <input type="text" name="name">
		Age: <input type="text" name="age">
		<button>Send to step-3</button>
	</form>
	
	<a href="step-3.jsp?name=홍길동&age=12">step-3.jsp로 이동</a>
</body>
</html>