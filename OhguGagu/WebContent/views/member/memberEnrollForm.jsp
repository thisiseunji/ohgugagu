<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<br>
	<h1 align="center">회원가입</h1>
	<br>
	<div>
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="userId" required></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="userPwd" required></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" required></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="userName" required></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" required></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="radio" name="gender">남<input type="radio" name="gender">여</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="password" name="userPwd" required></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="address" required></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date"></td>
			</tr>
		</table>
	</div>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>