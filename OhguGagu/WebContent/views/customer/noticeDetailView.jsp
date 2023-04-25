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
<title>오구가구>고객센터>공지사항</title>
<Style>
	.outer{
        width: 100%;
        height: auto;
		min-height: 100%;
    }
	.left{
		width: 200px;
	}
	.footer{
		height: 100%;
		position: relative;
	}
	header{
		z-index: 2;
	}
	.box{
		display: grid;
		grid-template-columns: 200px auto;
		margin: 0;
	}
	.detailView{
		margin: 30px;
	}
</Style>
</head>
<body>
	<div class="outer">
		<div class="header">
			<%@ include file="../common/menubar.jsp" %>
		</div>
		<div class="box">
			<div class="left">
				<%@ include file="../common/customerSidebar.jsp" %>
			</div>
				<div class="detailView">
					<h2>Notice</h2>
					<div style="display: flex; margin: 20px">
						<h1 style="width: 70%;"><%= n.getNoticeTitle() %></h1>
						<div style="width: 15%;">작성자 : 관리자 </div>
						<div style="width: 15%;">작성일 : <%= n.getCreateDate() %></div>
					</div>
					<hr style="margin-top: 0">
					<div style="height: 400px; margin: 20px">
						<p><%= n.getNoticeContent() %></p>
					</div>
					<div align="center">
						<a href="<%=contextPath%>/list.no?currentPage=1" class="btn btn-outline-danger">목록으로</a>
						<% if (loginUser != null && loginUser.getMemberId().equals("admin")){ %>
						<a href="<%=contextPath%>/updateForm.no?nno=<%=n.getNoticeNo() %>" class="btn btn-outline-danger">수정하기</a>
						<a href="<%=contextPath%>/delete.no?nno=<%=n.getNoticeNo() %>" class="btn btn-outline-danger">삭제하기</a>
						<%} %>
					</div>
				</div>
		</div>
	</div>
	<div class="footer" style="width: 100%;">
		<%@ include file="../common/footer.jsp" %>
	</div>
</body>
</html>