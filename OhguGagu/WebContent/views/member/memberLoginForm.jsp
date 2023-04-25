<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구가구>로그인</title>
<style>
    .outer{
        width: 100%;
        height: auto;
		min-height: 100%;
		text-align: center;
    }
	.container{
		display: grid;
		justify-content: center;
		grid-template-columns: 400px 400px;
		grid-template-rows: 100px 500px;
		margin-top: 100px;
	}
	.item1{
		grid-column-start: 1;
		grid-column-end: 3;
	}
	.container *{
		margin-top: 20px;
		margin-bottom: 0;
	}
</style>
</head>
<body>

	
	<div class="outer">
		<div class="header">
			<%@ include file="../common/menubar.jsp" %>
		</div>
		<div class="container">
			<h1 align="center" class="item1">로그인</h1>
			<form action="<%=contextPath%>/login.me" method="post" class="item2">
				<div>
					<h4>회원로그인</h4><br>
				</div>
				<input type="text" name="memberId" required><br>
				<input type="password" name="memberPwd" required><br>
				<input type="checkbox">아이디 저장<br>
				<button type="submit" class="btn btn-danger">로그인</button>

			</form>
			<div class="item3">
				<h4>오구가구 신규 회원가입</h4>
				<br>
				오구가구 온라인몰 회원가입 후 다양한 혜택과 소식을 만나보세요.<br>
				<a href="<%= contextPath %>/enrollForm.me" class="btn btn-outline-danger" style="width: 100%;">회원가입</a>
				<br>					<h4>아이디/비밀번호 찾기</h4>
				<br>
				간단한 정보를 입력 후 정보를 찾을 수 있습니다.<br>
				<div style="display: flex; justify-content: space-evenly;">
					<a href="" class="btn btn-outline-danger" style="width: 150px">아이디찾기</a>
					<a href="" class="btn btn-outline-danger" style="width: 150px">비밀번호 찾기</a>
				</div>
			</div>
		</div>
		<div class="footer" style="width: 100%;">
			<%@ include file="../common/footer.jsp" %>
		</div>
</body>
</html>