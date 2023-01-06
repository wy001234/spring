<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BookStore::customer</title>
	</head>
	<body>
		<h3>customer 목록</h3>
		<a href="/BookStore/customer/register">customer 등록</a><br>

		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>주소</th>
				<th>휴대폰</th>
				<th>관리</th>
			</tr>
			<c:forEach var="customer" items="${customers}">
				<tr>
					<th>${customer.custId}</th>
					<th>${customer.name}</th>
					<th>${customer.address}</th>
					<th>${customer.phone}</th>
					<th>
						<a href="/BookStore/customer/modify?custId=${customer.custId}">수정</a>
						<a href="/BookStore/customer/delete?custId=${customer.custId}">삭제</a>
					</th>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>