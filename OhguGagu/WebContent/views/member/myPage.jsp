<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구가구>마이페이지</title>
<style>
	.outer{
		position: relative;
	}
	footer{
		z-index: 1;
	}
	header{
		z-index: 2;
	}
</style>
</head>
<body>
	<div class="outer">
		<header>
			<%@ include file="../common/myPageSidebar.jsp" %>
			<%@ include file="../common/menubar.jsp" %>
		</header>
		<div class="mainview" align="center">
			<div class="qbox" align="left">
				<h3><b>무엇을 도와드릴까요?</b></h3>
			</div>
		</div>
		<footer>
			<%@ include file="../common/footer.jsp" %>
		</footer>
	</div>
</body>
</html>