<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="jstl_study.Car" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>주문자명: ${paramValues.menu }</h3>
	<h3>주문 메뉴</h3>
	<c:forEach items="{iparamValues.menu}" var="food" varStatus="i">
		${i }
	</c:forEach>
	
	<hr>
	
	<%
		Car car = new Car("1234", "Sonata", 2000);
		request.setAttribute("car", car);
	%>
	
	<!-- Car 객체를 출력 -->
	<h3>${requestScope.car.name }</h3>
	<h3>${car.num }</h3>
	
	<%
		ArrayList<Car> list = new ArrayList<>();
		list.add(car);
		list.add(new Car("5739", "Morning", 1500));
		list.add(new Car("5739", "Genesis", 3000));
		list.add(new Car("5739", "Tesla", 1500));
	%>
</body>
</html>