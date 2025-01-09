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
	<h1>Get data via paramValues</h1>
	<h3>Choice1: ${paramValues.food[0] }</h3>
	<h3>Choice2: ${paramValues.food[1] }</h3>
	<h3>Choice3: ${paramValues.food[2] }</h3>
	<h3>Choice4: ${paramValues.food[3] }</h3>
	<h3>Choice5: ${paramValues.food[4] }</h3>
	<h3>Choice6: ${paramValues.food[5] }</h3>
	<br>
	
	<!-- c:forEach items="반복할 배열/컬렉션" var="저장값" -->
	<!-- varStatus: index(번지: 0부터 시작) / count(개수: 1부터 시작) -->
	<h1>Using forEach</h1>
	<c:forEach items="${paramValues.food }" var="f" varStatus="i">
		<h3>Choice ${i.count} : ${f }</h3>
	</c:forEach>
	
	<hr>
	
	<%
		String friends[] = {"Archeron", "Xiao", "Sushang", "Bronya"};
		// Java Controller에서 데이터를 보낼 때
		request.setAttribute("Diluc", friends);
	%>
	
	<c:forEach items="${requestScope.friend }" var="fname" varStatus="i">
		count: ${i.count } / index: ${i.index } / ${frame } <br>
	</c:forEach>
	
	<hr>
	
	<!-- 시작 숫자, 끝 숫자, 저장 변수 -->
	<c:forEach begin="1" end="10" var="i">
		${i }
	</c:forEach>
	
	<a href="step-5.jsp">Move to step-5.jsp</a>
	
</body>
</html>