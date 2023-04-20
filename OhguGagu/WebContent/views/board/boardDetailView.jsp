<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ohgu.board.model.vo.Board" %>
<%
	Board b = (Board)request.getAttribute("b");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    .detailView{
		width: 1000px;
		height: 100%;
		margin-left: 40px;
		margin-top: 50px;
	}
	.detailView h2{
		margin-bottom: 50px;
	}
</style>
</head>
<body>
    <div class="outer">
        <header>
			<%@ include file="../common/menubar.jsp" %>
		</header>

        <div class="mainview">
            <div>
				<%@ include file="../common/myPageSidebar.jsp" %>
			</div>
            <div class="qbox">
                <div class="detailView">
					<h2>Notice</h2>
					<div style="display: flex; margin: 20px">
						<h1 style="width: 70%;"><%= b.getBoardTitle() %></h1>
						<div style="width: 15%;">작성일 : <%= b.getCreatedAt() %></div>
					</div>
					<hr style="margin-top: 0">
					<div style="height: 200px; margin: 20px">
						<p><%= b.getBoardContent() %></p>
					</div>
					<%if(b.getAnswer() != null){ %>
					<div style="height: 400px; padding: 20px; border-top: 1px solid lightgray;">
						<p>답변공간</p>
					</div>
					<%} %>
					<div align="center">
						<a href="<%=contextPath%>/list.bo?currentPage=1&memberNo=<%=loginUser.getMemberNo()%>" class="btn btn-outline-danger">목록으로</a>
						<a href="<%=contextPath%>/delete.bo?bno=<%=b.getBoardNo() %>&memberNo=<%=loginUser.getMemberNo() %>" class="btn btn-outline-danger">삭제하기</a>
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