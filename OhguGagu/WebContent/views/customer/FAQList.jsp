<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구가구>고객센터>FAQ</title>
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
			<div>
				<div style="margin: 30px;">
					<h1>FAQ</h1>
				</div>
				<div class="accordion" id="accordionExample" style="margin: 30px;">

					<div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c1" aria-expanded="true" aria-controls="collapseOne">
							아이디와 비밀번호가 기억나지 않아요.
						  </button>
						</h2>
						<div id="c1" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										로그인 화면에서  아이디 찾기/비밀번호 찾기를 통해 확인 가능합니다. <br>
										아이디 찾기는 아래 3가지 방법 중 하나로 진행해 주세요. <br>
										<br>
										■ 휴대전화 <br>
										회원 정보에 등록된 본인의 휴대전화 번호를 인증하는 방법입니다. <br>
										<br>
										■ 이메일 <br>
										회원 정보에 등록된 본인의 이메일 주소를 인증하는 방법입니다. <br>
										<br>
										■ 본인인증 <br>
										이용 중인 통신사와 휴대전화 번호를 인증하는 방법입니다. <br>
										 <br>
										※ 비밀번호 재설정을 완료한 휴면 회원은 휴면 해제 및 탈퇴 신청이 취소됩니다. <br>	
										※ 비밀번호 찾기는 휴대전화 본인 인증으로만 가능합니다. <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>

					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c2" aria-expanded="true" aria-controls="collapseOne">
							회원 정보 수정은 어디서 하나요?
						  </button>
						</h2>
						<div id="c2" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										회원 정보 수정은 아래 경로로 직접 변경 가능합니다. <br>
										<br>
										■ 회원 정보 수정 <br>
										모바일(앱/웹) : 마이페이지 > 내 정보 관리 > 오른쪽 위 톱니바퀴<br>
										PC(웹) : 마이페이지 > 회원정보 변경<br>
										※ 원활한 주문 및 배송을 위해 회원 정보를 정확하게 기재해 주세요. <br>
										<br>
										■ 이름 개명 시 수정<br>
										모바일(앱/웹) : 마이페이지 > 내 정보 관리 > 오른쪽 위 톱니바퀴 > 회원 정보 > 이름/휴대전화/생년월일<br>
										PC(웹) : 마이페이지 > 회원정보 변경 > 이름수정<br>
										<br>
										※ 개명한 이름이 NICE 평가 정보에 등록되어 있어야 합니다. <br>
										※ 본인인증을 통해 NICE 평가 정보 적용된 이름(실명)을 기준으로 변경됩니다. <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>
					  
					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c3" aria-expanded="true" aria-controls="collapseOne">
							구매했을 때 보다 가격이 떨어졌어요 차액 환불이 되나요?
						  </button>
						</h2>
						<div id="c3" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										상품 금액은 온라인 판매처 특성상 유동적으로 변동될 수 있어 차액 환불은 가능하지 않습니다.  <br>
										<br>
										※ 판매 가격 변동으로 인한 교환(환불) 신청 시 반품 배송비는 회원님 부담으로 진행됩니다. <br>
										※ 출고 처리중인 경우 취소는 가능하지 않습니다. <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>

					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c4" aria-expanded="true" aria-controls="collapseOne">
							재고가 없어요. 언제쯤 구입할 수 있을까요?
						  </button>
						</h2>
						<div id="c4" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										품절 상품 재입고 여부 및 일정은 정확한 확인이 가능하지 않지만 재입고 알림을 등록하면 알림톡으로 확인 할 수 있습니다.  <br>
										알림 신청 방법은 아래내용을 확인해 주세요. <br>
										<br>
										■ 재입고 알림 신청 <br>
										모바일(앱) : 상품 선택 > 구매하기 > 재입고 알림 받기 선택<br>
										<br>
										※ 재입고 알림 신청은 APP에서만 신청이 가능합니다. <br>
										※ 재고 입고 수량에서 요청순서에 따라 순차적으로 발송 됩니다. <br>
										※ 재입고 알림 버튼이 보이지 않거나 재입고 관련 상세확인은 상품 페이지의 상품문의를 이용해 주세요. <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>

					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c5" aria-expanded="true" aria-controls="collapseOne">
							결제하는 방법에 따라 할인 이벤트가 있나요?
						  </button>
						</h2>
						<div id="c5" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										결제하는 수단에 따라 할인 이벤트가 있습니다. <br>
										할인 이벤트 확인 하는 방법은 아래 경로를 확인 해주세요.  <br>
										<br>
										■ 할인 이벤트 확인 경로  <br>
										모바일(앱/웹) : 이벤트 > 혜택에서 확인 가능  <br>
										PC(웹) : 세일 > 기획전 에서 확인 가능 <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>

					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c6" aria-expanded="true" aria-controls="collapseOne">
							결제 방법에는 어떤 것들이 있나요?
						  </button>
						</h2>
						<div id="c6" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										주문서 작성 시 무신사페이 또는 일반결제로 결제 항목에서 선택이 가능합니다. <br>
										<br>
										■ 무신사페이  <br>
										신용카드 또는 은행 계좌 연결해서 간편하게 결제할 수 있습니다. <br>
										<br>
										■ 일반 결제  <br>
										신용카드, 가상계좌, 계좌이체, Apple pay, 휴대폰결제, 토스 페이, 카카오 페이, 네이버 페이, 페이코 결제가 있습니다.  <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>

					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c7" aria-expanded="true" aria-controls="collapseOne">
							상품을 받는 주소(배송지) 등록은 어떻게 하나요?
						  </button>
						</h2>
						<div id="c7" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										마이페이지 > 배송지 관리 또는 주문서 작성 시 배송지 관리에서 배송 주소를 등록/수정/삭제할 수 있습니다. <br>
										<br>
										■ 배송지 관리 경로  <br>
										모바일(앱/웹) : 마이페이지 > 내 정보 관리(오른쪽 위 톱니바퀴) > 배송지 관리 <br>
										PC(웹) : 마이페이지 > 회원정보 변경 > 배송지 관리 <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>

					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c8" aria-expanded="true" aria-controls="collapseOne">
							주문한 상품이 일부만 도착했어요.
						  </button>
						</h2>
						<div id="c8" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										브랜드 및 상품에 따라 출고지가 다르기 때문에 여러 개 상품을 주문한 경우에는 각각 배송이 됩니다. <br>
										브랜드가 달라도 상품 주문 시 한 번에 결제할 수 있습니다. <br>
										<br>
										아직 도착하지 않는 상품은 아래 경로에서 배송진행 상황을 확인해 주세요.  <br>
										<br>
										■ 배송 조회 경로 <br>
										마이페이지 > 배송 중/픽업 대기 > 배송조회 <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>

					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c9" aria-expanded="true" aria-controls="collapseOne">
							일반 배송 상품은 언제 배송 되나요?
						  </button>
						</h2>
						<div id="c9" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										일반배송은 브랜드마다 일정이 다르고 평일 기준으로 출고 됩니다. <br>
										출고 일정은 상품의 상세페이지 출고 정보에서 확인 가능합니다. <br>
										<br>
										※ 평일 기준 출고로 연휴 및 공휴일은 배송일에서 제외됩니다. <br>
										※ 무신사스토어는 전 상품 100% 무료 배송입니다.  <br>
										※ 배송 지연 상품의 경우 상품명에 지연으로 아이콘이 표시됩니다.  <br>
										※ 출고 지연 발생 시에는 알림톡 또는 문자를 통해 안내해 드립니다. <br>
										※ 주문 시 배송 메모에 배송 희망 일자를 작성하셔도 해당일에 지정 배송은 어렵습니다. <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>

					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c10" aria-expanded="true" aria-controls="collapseOne">
							반품접수는 어떻게 하나요?
						  </button>
						</h2>
						<div id="c10" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							<table>
								<tr>
									<td style="width: 100px;">답변</td>
									<td>
										교환(환불) 접수 시 선택했던 방법으로 반품 접수해 주세요. <br>
										<br>
										■ 회수해 주세요 <br>
										무신사 자동회수 서비스로 택배기사가 요청한 회수지로 평일 기준 1일 ~ 3일 이내 방문합니다.  <br>
										※ 방문 전 택배 기사분이 연락 후 방문 예정이며, 비대면으로 상품을 전달할 때는 반품 상자를 구분할 수 있도록 표시 후 회수 장소에 보관해 주세요. <br>
										<br>
										■ 직접 발송했어요 <br>
										상품을 받은 택배사와 같은 택배사로 반품 예약해 주세요. <br>
										상품 회수 후 반송장 정보를 입력해 주셔야 합니다. <br>
										<br>
										※ 계약된 택배사가 아닌 다른 택배사 이용 시 추가 비용 발생할 수 있고 2개 이상의 브랜드 반송 시, 각각 반송지로 보내주세요. <br>
										※ 안내서에 배송비 동봉 등에 대한 내용이 있더라도, 동봉하면 안 됩니다. <br>
									</td>
								</tr>
							  </table>
						  </div>
						</div>
					  </div>



				</div>
			</div>
		</div>
    </div>
	<div class="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>