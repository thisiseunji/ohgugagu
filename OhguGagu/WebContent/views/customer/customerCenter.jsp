<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	header{
		z-index: 1;
	}
	.qbox{
		border: 1px solid black;
		width: 800px;
		heigth: 300px;
	}
	.outer{
		height: 1000px;
		margin-left: 300px;
	}
	footer{
		z-index: 2;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="../common/customerSidebar.jsp" %>
		<%@ include file="../common/menubar.jsp" %>
	</header>
	<div class="outer" align="center">
		<div class="qbox" align="left">
			<h3><b>무엇을 도와드릴까요?</b></h3>
		</div>
	</div>
	<footer>
		<%@ include file="../common/footer.jsp" %>
	</footer>
</body>
</html>