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
	<h1>Receive parameters sent as form tag</h1>
	<h3>Name: ${param.name }</h3>
	<h3>Age: ${param.age }</h3>
	
	<!-- c:choose를 사용하여 다중 조건 처리 -->
	<!-- age 18 이상은 성인, 15세 이상은 청소년, 5세 이상은 어린이, 나머지는 유아 -->
	<!-- choose는 c:when으로 조건을 처리하고 나머지는 c:otherwise로 처리한다. -->
	<c:choose>
		<c:when test="${param.age >= 18 }">
			<h3>${param.name } is an adult.</h3>
		</c:when>
		<c:when test="${param.age >= 15 && param.age < 18 }">
			<h3>${param.name } is a teenager.</h3>
		</c:when>
		<c:when test="${param.age >= 5 && param.age < 15 }">
			<h3>${param.name } is a child.</h3>
		</c:when>
		<c:otherwise>
			<h3>${param.name } is an infant.</h3>
		</c:otherwise>
	</c:choose>
	
	<form action="step-4.jsp">
		<input type="checkbox" name="food" value="banana"> Banana <br>
		<input type="checkbox" name="food" value="apple"> Apple <br>
		<input type="checkbox" name="food" value="mango"> Mango <br>
		<input type="checkbox" name="food" value="blueberry"> Blueberry <br>
		<input type="checkbox" name="food" value="peach"> Peach <br>
		<input type="checkbox" name="food" value="melon"> Melon <br>
		<button type="submit">Send to step-4.jsp</button>
	</form>
</body>
</html>