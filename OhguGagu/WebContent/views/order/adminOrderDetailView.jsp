<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ohgu.product.model.vo.Product"%>
<%
	//ProductReturn p = (ProductReturn)request.getAttribute("p");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 > 주문 상세 </title>
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
		width: 700px;
		margin-left: 80px;
		margin-top: 50px;
		margin-bottom: 50px;
	}
	#boardTable div{
		width: 100%;
		height: 100%;
		border: 1px solid #ccc;
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
					<h1>주문 상세</h1>
				</div>
				<div>
				    <input type="button" val="저장"/> <!-- 상태 및 운송장 업데이트 -->
					<table name="overallTable" id="boardTable">
                        <tr>
                            <td>주문번호</td>
                            <td><%=b.getOrderNo()%></td>
                            <td colspan="6"></td>
                        </tr>
                        <tr>
                            <td>주문자명</td>
                            <td><%=b.getMemberNo()%></td>
                            <td>주문일</td>
                            <td><%=b.getOrderedAt()%></td>
                            <td>주문상태</td>
                            <td> <!-- stat 결과에 따라 option select 하는 로직 필요 -->
							    <select name="orderStatus" class="select">
                                    <option value="apple">결제완료</option>
                                    <option value="orange">배송준비중</option>
                                    <option value="grape">배송완료</option>
                                    <option value="melon">배송중</option>
                                    <option value="podo">주문취소</option>
                                </select>
                            </td>
                            <td>운송장</td>
                            <td><%=b.getWaybillNo()%></td>
                        </tr>
                        <tr>
                            <td>수령인</td>
                            <td><%=b.getReceiver()%></td>
                            <td>연락처</td>
                            <td><%=b.getPhone()%></td>
                            <td colspan="3">주소</td>
                            <td><%=b.getAddr()%> &nbsp; <%=b.getAddrDetail()%></td>
                        </tr>
					</table>
					
					
                    <table name="detailTable"  id="boardTable">
                        <thead>
                            <tr>
                                <td>상품번호</td>
                                <td>상품명</td>
                                <td>가격</td>
                                <td>color</td>
                                <td>size</td>
                                <td>material</td>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(ProductReturn p : productList){ %>
                            <tr>
                                <td><%=p.getProductNo()%></td>
                                <td><%=p.getProductName()%></td>
                                <td><%=p.getEachPrice()%></td>
                                <td><%=p.getpColor()%></td>
                                <td><%=p.getpSize()%></td>
                                <td><%=p.getpMaterial()%></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                    
                    
                    
                    
                    <table name="orderPaymentTable" id="boardTable">
                        <tr>
                            <td>총액</td>
                            <td><%=p.getTotalPrice()%></td>
                            <td>배송비</td>
                            <td><%=p.getDelieveryFee()%></td>
                            <td>사용 포인트</td>
                            <td><%=p.getUsedPoint()%></td>
                            <td>적립 포인트</td>
                            <td><%=p.getEarnedPoint()%></td>
                        </tr>
                    </table>
                    
				</div>
			</div>	
		</div>      
    </div>
    <div class="footer" style="width: 100%;">
    	<%@ include file="../common/footer.jsp" %>
    </div>

	<script>
		function answer(){
			let answer = $("#answer2").val();
			$.ajax({
				url : "answer.do",
				type : "post",
				data : {
					boardNo : <%=b.getBoardNo()%>,
					answer : $("#answer2").val()
				},
				success : function(result){
					if(result == 1){
						alert("답변 등록 성공");
						$("#answer1").val(answer);
					}else{
						alert("답변 등록 실패");
					}
					$("#answer2").val("");
				},
				error : function(){
					console.log("답변 등록 실패");
				}
			});
		}
	</script>

</body>
</html>