<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>ser1 목록</h3>
		<a href="/Ch05/user1/register">user 1 등록</a><br>

		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>나이</th>
				<th>관리</th>
			</tr>
			<c:forEach var="user" items="${users}">
				<tr>
					<th>${user.uid}</th>
					<th>${user.name}</th>
					<th>${user.hp}</th>
					<th>${user.age}</th>
					<th>
						<a href="/Ch05/user1/modify?uid=${user.uid}">수정</a>
						<a href="/Ch05/user1/delete?uid=${user.uid}">삭제</a>
					</th>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>