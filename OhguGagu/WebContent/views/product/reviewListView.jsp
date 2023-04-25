<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ohgu.common.model.vo.PageInfo, java.util.ArrayList, com.ohgu.product.model.vo.Review" %>
<%
	// 필요한 데이터들 뽑기
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");

	// 자주 쓰일법한 변수들 셋팅
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰목록페이지-리뷰삭제</title>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

		<div class="outer">
	
		<br>
		<h2 align="center">리뷰 목록</h2>
		<br>


		<table align="center" class="list-area">
			<thead>
				<tr>
					<th width="70"></th>
					<th width="300">내용</th>
					<th width="100">작성일</th>
				</tr>
			</thead>
			<tbody>
				<% if(list.isEmpty()) { %>
					<tr>
						<td colspan="6">
							조회된 리스트가 없습니다.
						</td>
					</tr>
				<% } else { %>
					<% for(Review r : list) { %>
						<tr>
							<td>
								<input type="checkbox" id="deleteKey" name="deleteKey" value="y">
							</td>
							<td><%= r.getReviewContent() %></td>
							<td><%= r.getCreateDate() %></td>
						</tr>
					<% } %>
				<% } %>
			</tbody>
		</table>
		
		<div align="center">
			<button onclick="deleteReview();">삭제하기</button>
		</div>
		
		<script>
			// 리뷰 삭제 요청용 함수
			function deleteReview() {
				
				$.ajax({
					url : "/delete.rv",
					type : "post",
					data : {
						rno : <%= r.getReviewNo() %>
					},
					success : function() {},
					error : function() {}

				});	
			}
		</script>
		
		<br><br>
		<!-- 수정안함 -->
		<!-- 페이징바 -->
		<div align="center" class="paging-area">

			<% if(currentPage != 1) { %>
				<button onclick="location.href = '<%= contextPath %>/list.bo?currentPage=<%= currentPage - 1 %>';">
					&lt;
				</button>
			<% } %>
		
			<% for(int p = startPage; p <= endPage; p++) { %>
				<% if(p != currentPage) { %>
					<button onclick="location.href = '<%= contextPath %>/list.bo?currentPage=<%= p %>';">
						<%= p %>
					</button>
				<% } else { %>
					<!-- 현재 내가 보고있는 페이지일 경우에는 클릭이 안되게끔 -->
					<button disabled><%= p %></button>
				<% } %>
			<% } %>
			
			<% if(currentPage != maxPage) { %>
				<button onclick="location.href = '<%= contextPath %>/list.bo?currentPage=<%= currentPage + 1 %>';">
					&gt;
				</button>
			<% } %>

		</div>
	
	</div>



</body>
</html>




























