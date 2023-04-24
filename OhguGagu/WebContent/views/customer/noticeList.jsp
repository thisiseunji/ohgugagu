<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.ohgu.notice.model.vo.Notice, com.ohgu.common.model.vo.PageInfo" %>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
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
	.box{
		display: grid;
		grid-template-columns: 200px auto;
		margin: 0;
	}
	.noticeList{
		width: 1000px;
		margin-left: 80px;
		margin-top: 50px;
	}
	#noticeTable{
		width: 100%;
		height: 100%;
		text-align: center;
	}
	thead{
		background-color: #f2f2f2;
		height: 70px;
	}
	#noticeTable tr {
		height: 50px;
		border-bottom: 1px solid #ccc;
	}
	#noticeTable>tbody>tr:hover{
		background-color: #f2f2f2;
		cursor: pointer;
	}
	.paging-bar{
		width: 1000px;
		margin-top: 30px;
		margin-bottom: 30px;
	}
	.paging-bar button{
		border: 1px solid #ccc;
		background-color: #fff;
		padding: 5px 10px;
		margin: 0 5px;
		border-radius: 10px;
	}
	.paging-bar button:hover{
		background-color: #f2f2f2;
		cursor: pointer;
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
			<div class="noticeList">
				<h3  style="margin-left: 40px;"><b>공지사항</b></h3>
				<div align="right">
					<%if(loginUser != null && loginUser.getMemberId().equals("admin")){ %>
					<a href="<%= contextPath %>/enrollForm.no" class="btn btn-danger btn-sm">글쓰기</a>
					<%} %>
				</div>
				<hr style="margin-bottom: 0;">
				<div>
					<table id="noticeTable">
						<thead>
							<tr>
								<td width="70">글번호</td>
								<td>제목</td>
								<td width="100">작성자</td>
								<td width="100">작성일</td>
							</tr>
						</thead>
						<tbody>
							<% if(list.isEmpty()){ %>
								<tr>
									<td colspan="4">게시글이 존재하지 않습니다.</td>
								</tr>
							<%}else{ %>
								<% for(Notice n : list){ %>
									<tr>
										<td><%= n.getNoticeNo() %></td>
										<td><%= n.getNoticeTitle() %></td>
										<td>관리자</td>
										<td><%= n.getCreateDate() %></td>
									</tr>
								<%} %>
							<%} %>
						</tbody>
					</table>
				</div>

				<!-- 페이징 바 -->
				
				<div align="center" class="paging-bar">
					<% for (int i = startPage; i <= endPage; i++){ %>
						<%if(i != currentPage){ %>
							<button onclick="location.href='<%=contextPath%>/list.no?currentPage=<%=i%>';"><%= i %></button>
						<%}else{ %>
							<button disabled><%=i %></button>
						<%} %>
					<% } %>
				</div>

			</div>
				
			
		</div>
		<div class="footer">
			<%@ include file="../common/footer.jsp" %>
		</div>
	</div>

	<script>
		$("table>tbody>tr").click(function(){
			let nno = $(this).children().eq(0).text();
			location.href = "<%=contextPath%>/detail.no?nno=" + nno;
		});
	</script>

</body>
</html>