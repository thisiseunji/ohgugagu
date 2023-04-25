<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.ohgu.board.model.vo.Board, com.ohgu.common.model.vo.PageInfo" %>
<%
	//ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
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
<title>관리자 > 주문 관리 </title>
<style>
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
	#boardTable{
		width: 1000px;
		margin-left: 80px;
		margin-top: 50px;
	}
	#boardTable>thead{
		background-color: #f2f2f2;
		height: 70px;
		text-align: center;
	}
	#boardTable>tbody{
		text-align: center;
	}
	#boardTable tr {
		height: 50px;
		border-bottom: 1px solid #ccc;
	}
	#boardTable>tbody>tr:hover{
		background-color: #f2f2f2;
		cursor: pointer;
	}
	.paging-bar{
		width: 1000px;
		margin-left: 80px;
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

	.toggleSwitch {
    	width: 100px;
    	height: 50px;
    	display: block;
    	position: relative;
    	border-radius: 30px;
    	background-color: #fff;
    	box-shadow: 0 0 16px 3px rgba(0 0 0 / 15%);
    	cursor: pointer;
    	margin: 30px;
	}
	
	.list-a {
	    color: gray;
	    text-decoration: underline;
	    font-size: 0.7em;
	}

</style>
</head>
<body>
    <div class="outer">
        <div class="header">
			<%@ include file="../common/menubar.jsp" %>
		</div>
		<div class="box">
			<div class="left">
				<%@ include file="../common/myPageSidebar.jsp" %>
			</div>
			<div>
				<div style="margin-left: 80px; margin-top: 30px;">
					<h1>주문 관리 </h1>
				</div>
				<div>
					<table id="boardTable">
						<thead>
							<tr>
								<td>주문번호</td>
								<td>주문고객</td>
								<td>요청사항</td>
								<td>총 금액</td>
								<td>주문날짜</td>
								<td>운송장</td>
								<td>주문상태</td>
								<td>삭제</td>
							</tr>
						</thead>
						<tbody>
							<% for(Board b : list){ %>
							<tr>
								<td><a href="order detail로 넘어가게 해주세요"><%=b.getOrderName()%></a></td>
								<td><%=b.getMemberNo()%></td>
								<td><%=b.getOrderMsg()%></td>
								<td><%=b.getPrice()%></td>
								<td><%=b.getOrderedAt()%></td>
								<td><%=b.getWaybillNo()%></td>
								<td> <!-- stat 결과에 따라 option select 하는 로직 필요 -->
								    <select name="orderStatus" class="select">
                                        <option value="apple">결제완료</option>
                                        <option value="orange">배송준비중</option>
                                        <option value="grape">배송완료</option>
                                        <option value="melon">배송중</option>
                                        <option value="podo">주문취소</option>
                                    </select>
								    <a class="list-a" id="orderUpdate">수정</a>
								</td>
								<td><a class="list-a" id="orderDelete">삭제</a></td>
							</tr>
							<%}%>
						</tbody>
					</table>
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
		</div>      
    </div>
    <div class="footer" style="width: 100%;">
    	<%@ include file="../common/footer.jsp" %>
    </div>

	<script>
		$("table>tbody>tr").click(function(){
			let bno = $(this).children().eq(0).text();
			location.href = "<%=contextPath%>/adminDetail.bo?bno=" + bno;
		});
	</script>

</body>
</html>