<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width: 1000px;
		margin: auto;
		margin-top: 50px;
		margin-bottom: 100px;
	}
	#enroll-form table{margin: auto;}
	#enroll-form input{margin: 10px;}
	#enroll-form button{margin: 10px;}
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
	<div class="outer" align="center">
		<br>
		<h1 align="center">회원가입</h1>
		<br>
		<form id="enroll-form" action="<%= contextPath %>/insert.me" method="post">
			<table>
				<tr>
					<th>*아이디</th>
					<td><input type="text" name="memberId" required></td>
				</tr>
				<tr>
					<th>*비밀번호</th>
					<td><input type="password" name="memberPwd" required></td>
				</tr>
				<tr>
					<th>*비밀번호 확인</th>
					<td><input type="password" required></td>
				</tr>
				<tr>
					<th>*이름</th>
					<td><input type="text" name="memberName" required></td>
				</tr>
				<tr>
					<th>*이메일</th>
					<td><input type="text" name="email" required></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><input type="radio" name="gender">남<input type="radio" name="gender">여</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="phone" required></td>
				</tr>
				<tr>
					<th>*주소</th>
					<td><input type="text" name="address" required></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="date"></td>
				</tr>
			</table>
			<div>
				<button type="submit" class="btn btn-danger">회원가입</button>
				<button class="btn btn-outline-danger" onclick="location.href='<%=contextPath%>'">취소</button>
			</div>
		</form>
	</div>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>