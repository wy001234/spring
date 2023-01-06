<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BookStore::customer</title>
	</head>
	<body>
		<h3>customer 수정</h3>
		<a href="/BookStore/">BookStore 메인</a><br>
		<a href="/BookStore/customer/list">customer 목록</a><br>

		<form action="/BookStore/customer/register" method="post">
			<table border="1">
				<tr>
					<td>고객명</td>
					<td><input type="text" name ="name"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name ="address"></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name ="phone"></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" value="등록"></td>
				</tr>				
				
			</table>
		
		</form>
	</body>
</html>