<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>오구가구>마이페이지</title>
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
    
    .order_info_area {
		width: 100%;
    }
    .member_info_box {
        width: 800px;
		height: 140px;
		border: 1px solid #ccc;
		border-radius: 5px;
		padding: 10px;
		margin: auto;
		margin-top: 50px;
    }
    
    table{
		width: 100%;
		height: 100%;
		text-align: center; 
	}

    .tr1td>div {
        font-size: 15px;
        padding-top:10px;
        margin-bottom: 11px;
    }

    #name {
        font-size: 35px;
        letter-spacing: 1px;
    }

    .thic_red {
        color: rgb(167, 0, 0);
        display: inline-block;
        font-weight: 700;
    }

    .thic_black {
        width: 61px;
        font-size: 40px;
        font-weight: 700;
        font-family: "Inter", "Noto Sans KR";
    }
    .small_black {
        font-size: 13px;
    }

	.latest_order_area {
		width: 800px;
		margin: auto;
	}

    .latest_order_box {
        height: 110px;
        margin-top: 2px;
        border: none;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-radius: 0px;
    }

    .order_list_box{
        width: 800px;
        margin: auto;

    }

    .order_list thead {
        height: 48px;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        font-weight: 600;
    }

    .order_list tbody {
        text-align: center;
        font-size: 13px;
        border-bottom: 1px solid black;
        vertical-align: center;
    }   
    /* 취소주문건 등*/
    .order_count {
        padding-left: 60px;
        padding-right: 0px;
        width: 150px;
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
        
            <div class="order_info_area">
                <div class="member_info_box">
                    <table class="member_info">
                        <tr >
                            <td colspan="2">
                                <b id="name">임보영</b> 님 안녕하세요.
                                <br>
                                당신은 <span id="grade">일반회원</span> 등급입니다.
                            </td>
                            <td class="tr1td">
                                <div>주문</div>
                                <h2 class="thic_red">3</h2> 건
                            </td>
                            <td class="tr1td">
                                <div>적립금</div>
                                <h2 class="thic_red">2000</h2> 원
                            </td>
                        </tr>
                    </table>
                </div>
                <br><br>
                <div class="latest_order_area">
                    <b style="margin-left: 3px; font-size:20px">진행 중인 주문</b>
                    <div style="font-size: 13px">최근 30일 내에 진행중인 주문정보입니다.</div>
                    <div class="member_info_box latest_order_box">
                        <table>
                            <tr >
                                <td class="thic_black" rowspan="2">0</td>
                                <td class="thic_black" rowspan="2">&gt</td>
                                <td class="thic_black" rowspan="2">0</td>
                                <td class="thic_black" rowspan="2">&gt</td>
                                <td class="thic_black" rowspan="2">0</td>
                                <td class="thic_black" rowspan="2">&gt</td>
                                <td class="thic_black" rowspan="2">1</td>
                                <td class="thic_black" rowspan="2">&gt</td>
                                <td class="thic_black" rowspan="2">0</td>
                                <td class="order_count">취소 주문건</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td class="order_count">교환 주문건</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td class="small_black">입금대기</td>
                                <td></td>
                                <td class="small_black">결제완료</td>
                                <td></td>
                                <td class="small_black">배송중</td>
                                <td></td>
                                <td class="small_black">배송완료</td>
                                <td></td>
                                <td class="small_black">구매확정</td>
                                <td class="order_count">반품 주문건</td>
                                <td>0</td>
                            </tr>
                        </table>
                    </div> 
                </div>
                <br><br>
                <div class="order_list_box">
                    <b style="margin-left: 5px; font-size:20px">최근 주문 정보</b>
                    <div class="order_list_area">
                        <table class="order_list">
                            <thead>
                                <tr>
                                    <td>날짜/주문번호</td>
                                    <td>상품명/옵션</td>
                                    <td>상품금액/수량</td>
                                    <td>주문상태</td>
                                    <td>리뷰작성</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        2023.04.13
                                    </td>
                                    <td rowspan="2">
                                        1인용 쿠션의자 / 검정 
                                     </td>
                                     <td rowspan="2">
                                        120,000 원 / 1개
                                     </td>
                                     <td rowspan="2">
                                        결제 완료
                                     </td>
                                     <td rowspan="2">
                                        <a>리뷰작성</a>
                                     </td>
                                </tr>
                                <tr>
                                    <td>
                                        a1239043
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                        
                    </div> 
                </div>
            </div>

        </div>
    </div>
    <div class="footer">
        <%@ include file="../common/footer.jsp" %>
    </div>
</body>
</html>