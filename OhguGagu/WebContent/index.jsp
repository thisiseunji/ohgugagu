<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구가구</title>
<style>
	#wrap{
		min-height: 100vh;
		position: relative;
		width: 100%
	}
	header {
		position: fixed;
		top : 0;
		left: 0;
		right : 0;
		/* 메뉴바 침범하지 않기위함 */
		z-index:2;
		margin-bottom: 0px;
		background-color: white;
	}
	footer{
		width: 100%;
		height: 110px;
		bottom: 0px;
		position: relative;
		z-index: 3;
	}
	section{
		padding-bottom: 110px;
		height: 1000px;
	}
	body {
		padding-top: 150px;
		position: relative;
		/* 메뉴바 침범하지 않기위함 */
		z-index:1;
	}
	html, body{
		margin: 0;
		padding: 0;
	}
</style>
</head>
<body>
	<div id="wrap">
		<header>
			<%@ include file="views/common/mainSidebar.jsp" %>
			<%@ include file="views/common/menubar.jsp" %>
		</header>
		<section>
			
		</section>
		<footer>
			<%@ include file="views/common/footer.jsp" %>
		</footer>
	</div>
</body>
</html>