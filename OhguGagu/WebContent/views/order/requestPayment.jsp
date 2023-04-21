<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String receiver = request.getParameter("receiver");
	String phone = request.getParameter("phone");
	String address = request.getParameter("addr") + request.getParameter("addr_detail");
	String orderName = request.getParameter("orderName");
	String impName = request.getParameter("impName");
	int totalPrice = Integer.parseInt(request.getParameter("totalPrice"));
	int deliveryFee = Integer.parseInt(request.getParameter("deliveryFee"));
	int lastPoint = Integer.parseInt(request.getParameter("lastPoint"));
	
%>

<!DOCTYPE html>
<html>
<head>

<!-- 아임포트 주문관리 -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>

<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<meta charset="UTF-8">
<title>카카오페이 결제하기</title>
<style>
#wrap{
		min-height: 100vh;
		position: relative;
		width: 100%;
	}

	header {
		position: fixed;
		top : 0;
		left: 0;
		right : 0;
		/* 메뉴바 침범하지 않기위함 */
		z-index:2;
		margin-bottom: 0px;
		background-color: white;
	}
	footer{
		width: 100%;
		height: 110px;
		bottom: 0px;
		position: relative;
		z-index: 3;
	}

	html, body{
		margin: 0;
		padding: 0;
	}

	html {
		height: 100%;
	}

	header {
		position: fixed;
		top : 0;
		left: 0;
		right : 0;
		/* 메뉴바 침범하지 않기위함 */
		z-index:2;
		margin-bottom: 0px;
		background-color: white;
	}

	body {
		padding-top: 100px;
		position: relative;
		/* 메뉴바 침범하지 않기위함 */
		z-index:1;
	}
	
	#yellow {
		background-color: #f9e000;
		height: 1000px;
		width: 100%;
	}
</style>
</head>
<body>
    <div id="wrap">
		<header>
			<%@ include file="../common/mainSidebar.jsp" %>
			<%@ include file="../common/menubar.jsp" %>
		</header>
		<div id=yellow>
		</div>
		<footer>
           <%@ include file="../common/footer.jsp" %>
        </footer>
	</div>
	<script>
		$(document).ready(function(){
		  const IMP = window.IMP; // 생략 가능
		  IMP.init("imp02576572"); // 예: imp00000000a
		  
			setTimeout(function() { 
				requestPay();
			},500);
		});

	  // 외부 API
	  function requestPay() {
	    IMP.request_pay({
	      pg: "kakaopay.TC0ONETIME",
	      pay_method: "kakaopay",
	      merchant_uid: "<%=orderName%>",   // 주문번호(고유값으로 채번, 결제 완료이후 위변조검증시 필요하므로 디비에 저장)
	      name: "<%=impName%>",
	      amount: "<%= totalPrice + deliveryFee - lastPoint %>", // 숫자 타입
	      buyer_email: "<%= loginUser.getEmail()%>",
	      buyer_name: "<%= loginUser.getMemberName()%>",
	      buyer_tel: "<%= loginUser.getPhone()%>",
	      buyer_addr: "<%= address %>",
	      buyer_postcode: "00000"
	    }, function (rsp) { // callback
	      if (rsp.success) {
	       	console.log("결제테스트 성공")
	      } else {
	        console.log("결제테스트 실패")
	      }
	    });
	  }
	
	
	</script>
</body>
</html>