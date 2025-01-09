<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>step-5.jsp page</h1>
	<form action="step-6.jsp">
		<h3>주문자명: <input type="text" name="customer"> </h3>
		<input type="checkbox" name="menu"> 김치찌개 <br>
		<input type="checkbox" name="menu"> 된장찌개 <br>
		<input type="checkbox" name="menu"> 순두부찌개 <br>
		<input type="checkbox" name="menu"> 참치김밥 <br>
		<input type="checkbox" name="menu"> 치즈김밥 <br>
		<input type="checkbox" name="menu"> 제육볶음 <br>
		<button type="submit">Send to step-6</button>
	</form>
</body>
</html>