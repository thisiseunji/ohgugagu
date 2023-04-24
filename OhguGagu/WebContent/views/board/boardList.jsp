<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.ohgu.board.model.vo.Board, com.ohgu.common.model.vo.PageInfo" %>
<%
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
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
		position: relative;
		height : 1500px;
	}
	.footer{
		z-index: 1;
		height: 1160px;
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
	.boardList-area{
		width: 1000px;
		margin-left: 80px;
		margin-top: 50px;
	}
	.boardList-area table{
		width: 100%;
		height: 100%;
		text-align: center;
	}
	thead{
		background-color: #f2f2f2;
		height: 70px;
	}
	table tr {
		height: 50px;
		border-bottom: 1px solid #ccc;
	}
	table>tbody>tr:hover{
		background-color: #f2f2f2;
		cursor: pointer;
	}
	.paging-bar{
		width: 1000px;
		margin-left: 80px;
		margin-top: 30px;
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
        <header>
			<%@ include file="../common/menubar.jsp" %>
		</header>

        <div class="mainview">
            <div>
				<%@ include file="../common/myPageSidebar.jsp" %>
			</div>
            <div class="qbox">
                <div class="boardList-area">
                    <h3 style="margin-bottom: 20px;">1:1 문의내역</h3>
                    <hr style="margin-bottom: 0;">
                    <div>
						<table>
							<thead>
								<tr>
									<td width=70>글번호</td>
									<td width="70">주문번호</td>
									<td>제목</td>
									<td width="100">작성일</td>
									<td width="100">답변여부</td>
								</tr>
							</thead>
							<tbody>
								<% if(list.isEmpty()){ %>
									<tr>
										<td colspan="4">게시글이 존재하지 않습니다.</td>
									</tr>
								<%}else{ %>
									<% for(Board b : list){ %>
										<tr>
											<td><%= b.getBoardNo() %></td>
											<td><%= b.getOrderNo() %></td>
											<td><%= b.getBoardTitle() %></td>
											<td><%= b.getCreatedAt() %></td>
											<td>
												<% if(b.getAnswer() == null){ %>
													미답변
												<%}else{ %>
													답변완료
												<%} %>
											</td>
										</tr>
									<%} %>
								<%} %>
							</tbody>
						</table>
					</div>
                </div>
                
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
        <div class="footer">
			<%@ include file="../common/footer.jsp" %>
		</div>
    </div>


    <script>
		$("table>tbody>tr").click(function(){
			// 리스트에 들은 orderNo를 가져와서 detail로 넘겨줌
			let bno = $(this).children().eq(0).text();
			location.href = "<%=contextPath%>/detail.bo?bno=" + bno;
		});
	</script>

</body>
</html>