<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ohgu.notice.model.vo.Notice" %>
<%
	Notice n = (Notice)request.getAttribute("n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구가구>고객센터>공지사항수정</title>
<Style>
	.outer{
		position: relative;
		height : 1800px;
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
		height: 100%;
		width: 100%;
	}
	.detailView{
		width: 1000px;
		height: 100%;
		margin-left: 40px;
		margin-top: 50px;
	}
	.detailView h2{
		margin-bottom: 50px;
	}
</Style>
</head>
<body>
	<div class="outer">
		<header>
			<%@ include file="../common/menubar.jsp" %>
		</header>
		<div class="mainview">
			<div>
				<%@ include file="../common/customerSidebar.jsp" %>
			</div>
			<div class="qbox">
				<div class="detailView">
					<h2>Notice</h2>
					<div style="display: flex; margin: 20px">
						<h1 style="width: 70%;">제목</h1>
						<div style="width: 15%;">작성자 : 관리자 </div>
						<div style="width: 15%;">작성일 : 날짜</div>
					</div>
					<hr style="margin-top: 0">
					<div style="height: 800px; margin: 20px">
						<p>내용</p>
					</div>
					<div align="center">
						<a href="" class="btn btn-outline-danger">수정</a>
						<a href="" class="btn btn-outline-danger">취소</a>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<%@ include file="../common/footer.jsp" %>
		</footer>
	</div>
</body>
</html>