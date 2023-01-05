<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>user 정보</h3>
	<p>
		아이디: ${user2VO.uid}<br>
		이름: ${user2VO.name}<br>
		나이: ${user2VO.age}<br>
		성별: ${user2VO.gender}<br>
		취미 :
		<c:forEach var="h" items="${user2VO.hobby}">
			${h},
		</c:forEach>
	</p>
	<a href ="/Ch04/user1/register">등록하기</a>
	
</body>
</html>