<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구가구>주문정보조회</title>
<style>
	.outer{
		position: relative;
		height : 1000px;
	}
	footer{
		z-index: 1;
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
    
	.period {
		width: 800px;
		margin: auto;
	}

    .period_set{
        height: 90px;
        margin-top: 2px;
        border: none;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-radius: 0px;
    }

    .period_set button{
        border: none;
        background-color: rgb(244, 244, 244);
        width: 50px;
        height: 25px;
        font-size: 13px;
    }

    .period_set button[type="submit"] {
        border: 1px solid rgb(167, 0, 0);
        color: rgb(167, 0, 0);
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

    
</style>
</head>
<body>	
    <div class="outer">
        <header>
			<%@ include file="../common/menubar.jsp" %>
		</header>
        <!-- 메뉴바 부분 들어가야하고,  -->
        <div class="mainview">
            <div class="order_info_area">
                <div>
                    <%@ include file="../common/myPageSidebar.jsp" %>
                </div>
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
                <div class="period">
                    <b style="margin-left: 5px; font-size:20px">주문목록 조회</b>
                    <div class="member_info_box period_set" style="background-color:#ccc;">
                        <table>
                            <tr>
                                <td>  
                                    조회기간&nbsp;&nbsp;    
                                    <button value="오늘">오늘</button>
                                    <button value="7일">7일</button>
                                    <button value="15일">15일</button>
                                    <button value="1달">1달</button>
                                    <button value="3개월">3개월</button>
                                    <button value="1년">1년</button>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;  
                                </td>
                                <td>
                                    <input type="date" name="" id=""> - 
                                    <input type="date" name="" id=""> &nbsp;&nbsp; 
                                    <button type="submit">조회</button>
                                </td>

                            </tr>
                        </table>
                    </div> 
                </div>
                <br><br>
                <div class="order_list_box">
                    <b style="margin-left: 5px; font-size:20px">주문목록 조회 내역 총 0 건</b>
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
                                        2022.12.31
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
                    </div> 
                </div>
            </div>
        </div>
        <footer>
			<%@ include file="../common/footer.jsp" %>
		</footer>
    </div>
</body>
</html>