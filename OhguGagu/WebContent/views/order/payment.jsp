<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구가구>결제</title>
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

    .container1 {
        width: 1500px;
        height: 100%;
        margin: auto;
        font-family: "Inter", "Noto Sans KR";
    }

    table{
		width: 100%;
		height: 100%;
		text-align: center; 
	}

    .cart_list_area {
        width: 100%;
    }
    
    .cart_list_area{
        margin: auto;
        margin-top: 50px;
    }

    .cart_list, .total_price {
        width: 100%;
    }

    .cart_list thead {
        width: 100%;
        height: 48px;
        border-top: 1px solid rgb(145, 145, 145);
        border-bottom: 1px solid rgb(145, 145, 145);
        font-weight: 600;
    }

    .cart_list tbody {
        text-align: center;
        font-size: 15px;
        border-bottom: 1px solid rgb(145, 145, 145);
        vertical-align: center;
    }

    #thumbnail_img {
        width: 120px;
        height: 90px;
        margin: 5px 0px;
        padding-left: 0px;
    }

    .total_price {
        border-radius: 5px;
        height: 100px;
        border: 1px solid rgb(145, 145, 145);
    }

    table * {
        /* border: 1px solid black; */
        font-size: 20px;
    }
    
    .small_black {
        font-size: 25px;
    }

    .thic_black {
        font-weight: 700;
        font-size: 50px;
    }

    .thic_red {
        font-weight: 700;
        font-size: 40px;
        color: rgb(167,0,0);
    }

    /* 배송정보 */
    .addr_list {
        width: 50%;
        border-top: 1px solid rgb(145, 145, 145);
        margin: 10px 0px;
    }

    .outer_tb {
        margin-left: 150px;
        margin-top: 10px;
        width: 70%;
    }

    .inner_tb * {
        margin-top: 20px;
        vertical-align: bottom;
        /* border:1px solid firebrick; */
    }

    .inner_tb_tr>td:nth-child(odd) {
        text-align: right;
        font-weight: 500;
        margin-right: 15px;
    }

    .title{
        margin-left: 5px;
        font-size: 22px;
        margin-right: 15px;
    }

    .inner_tb_tr2 {
        text-align: right;
    }

    .point {
        padding-right: 0px;
    }

    .red_btn {
        border: none;
        border-radius: 5px; 
        background-color: rgb(167,0,0); 
        color: white;
    }

    .last_payment {
        border: 1px solid rgb(145, 145, 145);
        border-radius: 3px;
        width: 15%;
        display: inline-block;
        margin: -700px 100px 150px 2300px;
        display: fixed;
        padding: 10px;

    }

    .payment_tb {
        height: 180px;
    }

    .payment_btn {
        border: none;
        background-color: rgb(167,0,0);
        color: white;
        width: 100%;
        height: 60px;
        margin: 20px 10px;
        border-radius: 5px;
    }

</style>
</head>
<body>
    <div id="wrap">
		<header>
			<%@ include file="../common/mainSidebar.jsp" %>
			<%@ include file="../common/menubar.jsp" %>
		</header>
        <div class="container1">
                <div class="cart_list_area">
                    <b class="thic_black title">주문서 작성 / 결제</b>
                    <table class="cart_list">
                        <thead>
                            <tr>
                                <td colspan="2">상품명/옵션</td>
                                <td>수량</td>
                                <td>상품금액</td>
                                <td>할인/적립</td>
                                <td>합계금액</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td rowspan="2" align="right" style="width:200px"><img id="thumbnail_img" src="https://colimg2.godohosting.com//goods/21/05/19/1000006431/1000006431_detail_092.jpg" alt="탁자"></td>
                                <td align="left" style="width:200px; padding-left:5px; vertical-align:bottom;">접이식 탁자</td>
                                <td rowspan="2">1개</td>
                                <td rowspan="2">120,000원</td>
                                <td style="vertical-align:bottom; color: rgb(167,0,0)"><b>-20,000원</b></td>
                                <td rowspan="2">100,000원</td>
                            </tr>
                            <tr>
                                <td align="left" style="padding-left:5px; vertical-align:top;">검정</td>
                                <td style="vertical-align:top; font-size: 12px; " rowspan="2"><b>적립 : 1080원</b></td>
                            </tr> 
                        </tbody>
                    </table>
                </div> 
                <br>
                <br>
                <div class="total_price">
                    <table>
                        <tr>
                            <td class="small_black"><b>총 2개의 상품금액</b></td>
                            <td rowspan=2 class="thic_black">+</td>
                            <td class="small_black" ><b>배송비</b></td>
                            <td rowspan=2 class="thic_black">=</td>
                            <td rowspan=2><b class="thic_red">177,000</b><b style="font-size: 15px;">원</b></td>
                        </tr>
                        <tr>
                            <td>157,000원</td>
                            <td>20,000원</td>
                        </tr>
                    </table>
                </div>
                <br>
                <br>
                <br>
                <br>
                
                <div class="addr_area">
                    <b class="thic_black title">배송 정보</b>
                    <select name="address" id="address" onchange="this.form.submit()" style="width:150px;">
                        <option value="none">직접입력</option>
                        <option value="1">전주집</option>
                        <option value="2">외가집</option>
                        <option value="3">태희네</option>
                        <option value="4">도레기네</option> 
                        <!-- 저장된 배송지 수 만큼 만들어져야겠다. -->
                    </select>
                    <div class="addr_list">
                        <table class="outer_tb">
                            <tr>
                                <td>
                                    <table class="inner_tb">
                                        <tr class="inner_tb_tr">
                                            <td>수령인</td>
                                            <td><input type="text" required></td>
                                        </tr>
                                        <tr class="inner_tb_tr">
                                            <td>연락처</td>
                                            <td><input type="text" required></td>
                                        </tr>
                                        <tr class="inner_tb_tr">
                                            <td>주소</td>
                                            <td><input type="text" required></td>
                                        </tr>
                                        <tr class="inner_tb_tr">
                                            <td>상세주소</td>
                                            <td><input type="text"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <br>
                <div class="payment_area">
                    <b class="thic_black title">포인트적용 / 결제</b>
                    <div class="addr_list point">
                        <table class="outer_tb">
                            <tr>
                                <td>
                                    <table class="inner_tb" style="width:500px;">
                                        <tr class="inner_tb_tr inner_tb_tr2">
                                            <td>보유</td>
                                            <td>4,173원</td>
                                            <td></td>
                                        </tr>
                                        <tr class="inner_tb_tr inner_tb_tr2">
                                            <td>사용</td>
                                            <td><input type="text" required style="width: 100px;">원</td>
                                            <td style="text-align:left; padding-left:15px;"><button onclick="" class="red_btn">전액사용</button></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div> 
            <div class="last_payment">
                <div class="thic_black title">
                    결제정보
                    <div style="border-top:1px solid rgb(145, 145, 145); margin-top:10px; padding: 10px 0px;">
                        <table class="outer_tb" style="margin-left: 100px;">
                            <tr>
                                <td>
                                    <table class="inner_tb payment_tb">
                                        <tr class="inner_tb_tr inner_tb_tr2">
                                            <td>상품금액</td>
                                            <td>157,800원</td>
                                        </tr>
                                        <tr class="inner_tb_tr inner_tb_tr2">
                                            <td>배송비</td>
                                            <td>20,000원</td>
                                        </tr>
                                        <tr class="inner_tb_tr inner_tb_tr2" style="margin-bottom: 100px;">
                                            <td>할인/포인트</td>
                                            <td>-20,000원</td>
                                        </tr>
                                        <tr class="inner_tb_tr inner_tb_tr2" style="margin-top: 10px; border-top: 1px solid rgb(145, 145, 145);">
                                            <td class="thic_black" style="font-size: 27px;">합계</td>
                                            <td class="thic_red" style="font-size: 27px;">170,000원</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <button class="payment_btn">결제하기</button>
                </div>
            </div>
            <footer>
                <%@ include file="../common/footer.jsp" %>
            </footer>
        </div>
</body>
</html>