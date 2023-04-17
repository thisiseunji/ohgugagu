<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오구가구>장바구니</title>
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

    .cart_info_area {
		width: 100%;
    }
    .total_price {
        width: 800px;
		height: 100px;
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
    .thic_black {
        font-weight: 800;
        font-size: 25px;
    }

    .thic_red {
        font-weight: 700;
        font-size: 25px;
        color: rgb(167,0,0);
    }

    .cart_list_box{
        width: 800px;
        margin: auto;
        margin-top: 50px;
    }

    .cart_list thead {
        height: 48px;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        font-weight: 600;
    }

    .cart_list tbody {
        text-align: center;
        font-size: 15px;
        border-bottom: 1px solid black;
        vertical-align: center;
    }

    #thumbnail_img {
        width: 120px;
        height: 90px;
        margin: 5px 0px;
        padding-left: 0px;
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
            <div class="cart_info_area">
                <div>
                    <%@ include file="../common/myPageSidebar.jsp" %>
                </div>
                <div class="cart_list_box">
                    <b style="margin-left: 5px; font-size:20px">장바구니</b>
                    <div class="cart_list_area">
                        <table class="cart_list">
                            <thead>
                                <tr>
                                    <td><input type="checkbox" name="cart_check_all" id="cart_check_all"></td>
                                    <td colspan="2">상품명/옵션</td>
                                    <td>수량</td>
                                    <td>상품금액</td>
                                    <td>할인/적립</td>
                                    <td>합계금액</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="2"><input type="checkbox" name="cart_check_all" id="cart_check"></td>
                                    <td rowspan="2" align="right" style="width:160px"><img id="thumbnail_img" src="https://colimg2.godohosting.com//goods/21/05/19/1000006431/1000006431_detail_092.jpg" alt="탁자"></td>
                                    <td align="left" style="padding-left:5px; vertical-align:bottom;">접이식 탁자</td>
                                    <td rowspan="2">1개</td>
                                    <td rowspan="2">120,000원</td>
                                    <td style="vertical-align:bottom; color: rgb(167,0,0)"><b>-20,000원</b></td>
                                    <td rowspan="2">100,000원</td>
                                </tr>
                                <tr>
                                    <td align="left" style="padding-left:5px; vertical-align:top;">검정</td>
                                    <td style="vertical-align:top; font-size: 12px; " rowspan="2">적립 : 1080원</td>
                                </tr> 
                            </tbody>
                        </table>
                    </div> 
                </div>
                <div class="total_price">
                    <table>
                        <tr>
                            <td class="small_black"><b>총 2개의 상품금액</b></td>
                            <td rowspan=2 class="thic_black">+</td>
                            <td class="small_black" ><b>배송비</b></td>
                            <td rowspan=2 class="thic_black">=</td>
                            <td rowspan=2 class="thic_red" >17,7000</td>
                        </tr>
                        <tr>
                            <td>157,000원</td>
                            <td>20,000원</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <footer>
			<%@ include file="../common/footer.jsp" %>
		</footer>
    </div>
</body>
</html>