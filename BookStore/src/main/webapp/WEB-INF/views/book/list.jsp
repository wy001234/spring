<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BookStore::book</title>
	</head>
	<body>
		<h3>book 목록</h3>
		<a href="/BookStore/book/register">book 등록</a><br>

		<table border="1">
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>츌판사</th>
				<th>가격</th>
				<th>관리</th>
			</tr>
			<c:forEach var="book" items="${books}">
				<tr>
					<th>${book.bookId}</th>
					<th>${book.bookName}</th>
					<th>${book.publisher}</th>
					<th>${book.price}</th>
					<th>
						<a href="/BookStore/book/modify?bookId=${book.bookId}">수정</a>
						<a href="/BookStore/book/delete?bookId=${book.bookId}">삭제</a>
					</th>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>