<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.ohgu.notice.model.vo.Notice"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구가구>고객센터</title>
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
		justify-items: center;
	}
	.dataBox-area{
		width: 1000px;
		margin-top: 50px;
		margin-left: 50px;
	}
	.dataBox-area td{
		padding: 20px;
		text-align: center;
	}
	.dataBox-area td:nth-child(2){
		text-align: center;
	}
	.notice-area{
		width: 1000px;
		margin-top: 50px;
		margin-left: 50px;
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
</style>
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
			<div style="margin-top: 60px; margin-bottom: 60px;">
				<table class="dataBox-area">
					<tr>
						<td><h3><b>무엇을 도와드릴까요?</b></h3></td>
						<td rowspan="2">
							<h3><b>찾으시는 질문이 없다면?</b></h3><br>
							1:1 문의로 바로 답변을 받아보세요! <br>
							<a href="<%= contextPath %>/enrollForm.bo" class="btn btn-danger" style="margin-top: 10px;">1:1 문의하기</a>
						</td>
					</tr>
					<tr>
						<td><input style="width: 250px; border-radius: 30px; border: 1px solid #ccc; color: #ccc;" type="text" value="내용을 입력해주세요"></td>
					</tr>
				</table>
				<div class="notice-area">
					<h3  style="margin-left: 40px;"><b>공지사항</b></h3>
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
										<td><%=n.getNoticeNo()%></td>
										<td><%=n.getNoticeTitle()%></td>
										<td>관리자</td>
										<td><%=n.getCreateDate()%></td>
									</tr>
								<%} %>
							<%} %>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="footer" style="width: 100%">
		<%@ include file="../common/footer.jsp" %>
	</div>

	<script>
		$("#noticeTable>tbody>tr").click(function(){
			let nno = $(this).children().eq(0).text();
			console.log(nno);
			location.href = "<%=contextPath%>/detail.no?nno=" + nno;
		});
	</script>

</body>
</html>