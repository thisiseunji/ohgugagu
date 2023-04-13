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
	footer{
		width: 100%;
		height: 110px;
		bottom: 0px
		position: fixed;
	}
	section{
		padding-bottom: 110px;
		height: 1000px;
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