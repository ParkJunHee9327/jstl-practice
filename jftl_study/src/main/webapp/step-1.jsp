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
	<h1>step-1.jsp 파일</h1>
	<!-- queryString에서 보낸 데이터 받기 param.key -->
	<!-- EL방식으로 받기 -->
	<h3>The data from index.jsp</h3>
	<h3>Name: ${param.name }</h3>
	<h3>Age: ${param.age }</h3>
	
	<!-- c:if 명령어. jspl에서 사용. -->
	<!-- test-"조건식". 키워드 eq(동일하다) ne(다르다) -->
	<c:if test="${param.age <= 18 }">
		<h3>${param.name }님은 미성년자 입니다.</h3>
	
	</c:if>
</body>
</html>