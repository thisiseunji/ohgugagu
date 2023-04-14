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
		height : 1000px;
	}
	footer{
		z-index: 1;
	}
	header{
		z-index: 2;
	}
	.mainview {
		position: relative; 
		height : 60%;
	}
	
	.mainview>div {
		float : left;
		height : 100%;
	}
	
	div[class="side"]{position: absolute;}
	
	.qbox {
		padding-left: 200px;
		width: 100%;
	}
	
</style>
</head>
<body>
	<div class="outer">
		<header>
			<%@ include file="../common/menubar.jsp" %>
		</header>
		<div class="mainview" align="center">
			<div>
				<%@ include file="../common/myPageSidebar.jsp" %>
			</div>
			<div class="qbox" align="left">
				
			</div>
		</div>
		<footer>
			<%@ include file="../common/footer.jsp" %>
		</footer>
	</div>
</body>
</html>