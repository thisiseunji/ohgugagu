<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%

	int pno = (int)request.getAttribute("pno");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer {
		width : 1000px;
		height : 550px;
		border : 1px dotted gray;
		margin : auto;
		margin-top : 50px;
	}

	#enroll-form>table { border : 1px solid lightgray; }
	#enroll-form input, #enroll-form textarea {
		/* width : 100%; */
		box-sizing : border-box;
	}
	#enroll-form textarea { resize : none; width: 500px;}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

	<div class="outer">
		
		<br>
		<h2 align="center">리뷰 작성하기</h2>
		<br>
		
		<!--  
			요청 시 입력값으로 파일을 넘기고자 할 경우에는
			반드시 form 태그에 enctype 이라는 속성을 제시해야 한다.
			(안그러면 파일명만 문자열로 넘어가게 됨)
		-->
		<form id="review-form" action="<%= contextPath %>/insert.rv" method="post" enctype="multipart/form-data" > 

			<!--
				게시글 작성 시 입력받아야 할 항목들
				내용, 첨부파일, 작성자의 회원번호(hidden)
			-->
			
			<input type="hidden" name="orderNo" value="">
			<input type="hidden" name="productNo" value="<%= pno %>">

			<table align="center">
				<tr>
					<th>내용</th>
					<td>
						<textarea name="content" rows="10" required></textarea>
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>
						<input type="file" name="upfile">
					</td>
				</tr>
			</table>

			<br>

			<div align="center">
				<button type="submit">작성하기</button>
				<button type="reset">취소하기</button>
			</div>

		</form>
		
		
	</div>


</body>
</html>