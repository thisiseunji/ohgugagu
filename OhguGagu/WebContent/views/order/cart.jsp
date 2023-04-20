<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ohgu.product.model.vo.Product"%>
<%
	Product p = new Product(
			 2
		     , "침대"
		     , "흰색철제침대"
		     , 200000
		     , 30
		     , "WHITE"
		     , "100*1000*100"
		     , "STEEL"
		     , null
		     , 10);

%>
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

    .button {
        text-align: center;
        margin-top: 40px;
    }

    .button * {
        border: none;
        border-radius: 3px;
        background-color: rgb(167,0,0);
        color:white;
        width: 150px;
        height: 35px;
    }

    #close_icon>img {
        width: 12px;
        height: 12px;
        cursor:pointer;
    }
</style>
</head>
<body>	
    <div class="outer">
        <header>
			<%@ include file="../common/menubar.jsp" %>
		</header>
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
                                    <td><input type="checkbox" name="cart_check_all" id="cart_check_all" checked></td>
                                    <td colspan="2">상품명/옵션</td>
                                    <td>수량</td>
                                    <td>상품 가격</td>
                                    <td>할인/적립</td>
                                    <td>합계 금액</td>
                                    <td><div>   </div></td>
                                </tr>
                            </thead>
                            <tbody> 
                            	<!-- ajax -->
                            </tbody>
                        </table>
                    </div> 
                </div>
                <div class="total_price">
                    <table>
  						<!-- ajax -->
                    </table>
                </div>
                <div class="button">
                    <button style="margin-right:5px;">계속 쇼핑하기</button>
                    <button style="margin-left:5px;" type="submit">선택상품 주문하기</button>
                </div>
            </div>
        </div>
        <footer>
			<%@ include file="../common/footer.jsp" %>
		</footer>
    </div>

    <script>
        $(function() {
            selectCart();

            // 체크박스 선택 관련
            $(document).on("click", "#cart_check_all", function() {
                if($("#cart_check_all").is(":checked")) 
                    $("input[name=cart_check]").prop("checked", true);
                else 
                    $("input[name=cart_check]").prop("checked", false);
            });

            $(document).on("click", "input[name=cart_check]", function() {
                var total = $("input[name=cart_check]").length;
                var checked = $("input[name=cart_check]:checked").length;

                if(total != checked) $("#cart_check_all").prop("checked", false);
                else $("#cart_check_all").prop("checked", true); 

            });


            // 카트 삭제
            $(document).on("click", "#close_icon", function() {
                deleteCart();
            })

        });

        function selectCart() {
					$.ajax({
						url : "alist.cart",
						type : "get",
						success : function(list) {
							let result = '<tr><td style="height:50px" align="center" colspan=8>장바구니에 담긴 상품이 없습니다.<td><tr>';
							
							let totalPrice = 0;

							for(let i in list) {
                                let price = list[i].price*list[i].amount;
                                let discountPrice = (list[i].discountRate/100)*price;
                                let point = (list[i].pointRate/100)*discountPrice;
								
                                result = '<tr>'
                                        + '<td rowspan="2"><input type="checkbox" name="cart_check" id="cart_check" checked></td>'
                                        + '<td rowspan="2" align="right" style="width:160px"><img id="thumbnail_img" src="' + list[i].fileName + '"></td>'
                                        + '<td align="left" style="padding-left:5px; vertical-align:bottom;">'+ list[i].productName +'</td>'
                                        + '<td style="vertical-align:bottom;"><input style="width:25px; vertical-align:bottom;" type="text" value='+ list[i].amount +' maxlength="2" id="amount"> 개</td>'
                                        + '<td rowspan="2">'+ price +'원</td>'
                                        + '<td style="vertical-align:bottom; color: rgb(167,0,0)"><b>-'+ discountPrice +'원</b></td>'
                                        + '<td rowspan="2">'+ (price-discountPrice) +'원</td>'
                                        // 클릭 이벤트 줘야함
                                        + '<td rowspan="3"><div id="close_icon"><img src="https://static.thenounproject.com/png/102781-200.png" alt=""></div></td>'
                                        + '</tr>'
                                        + '<tr>'
                                        + '<td align="left" style="padding-left:5px; vertical-align:top;">'+ list[i].pColor +'</td>'
                                        // 업데이트 이벤트 줘야함
                                        + '<td><button onclick="setAmountCart();" type="button" style="vertical-align:top; background-color:#ccc; border:none; font-size: 12px; border-radius: 3px;">수량변경</button></td>'
                                        + '<td style="vertical-align:top; font-size: 12px;" rowspan="2"><b>적립 : '+ point +'원</b></td>'
                                        + '</tr>';
                               totalPrice += (price-discountPrice);
							}
                            
                            let result1 = '<tr>'
                            		   + '<td class="small_black"><b>총 0개의 상품금액</b></td>'
                            		   + '<td rowspan=2 class="thic_black">+</td>'
                            		   + '<td class="small_black" ><b>배송비</b></td>'
                            		   + '<td rowspan=2 class="thic_black">=</td>'
                            		   + '<td rowspan=2><b class="thic_red">0</b><b style="font-size: 15px;">&nbsp&nbsp원&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</b></td>'
									   + '</tr>'
									   + '<tr>'
									   + '<td>0 원</td>'
									   + '<td>0 원</td>'
									   + '</tr>';
							if (list.length > 0) { //반환된 객체가 있을 때,
								
								let deliveryFee = 5000;
							
								if(totalPrice >= 100000) {
									deliveryFee = totalPrice*0.1;
								}
								
								result1 = '<tr>'
	                         		   + '<td class="small_black"><b>총 '+list.length+'개의 상품금액</b></td>'
	                        		   + '<td rowspan=2 class="thic_black">+</td>'
	                        		   + '<td class="small_black" ><b>배송비</b></td>'
	                        		   + '<td rowspan=2 class="thic_black">=</td>'
	                        		   + '<td rowspan=2><b class="thic_red">'+ (totalPrice + deliveryFee) +'</b><b style="font-size: 15px;">원</b></td>'
									   + '</tr>'
									   + '<tr>'
									   + '<td>'+ totalPrice +' 원</td>'
									   + '<td>'+ deliveryFee +' 원</td>'
									   + '</tr>';
							}				
	                            
						$(".cart_list tbody").html(result);
						$(".total_price>table").html(result1);
						},
						
						error : function() {
							console.log("댓글리스트 조회용 ajax 통신 실패!");
						}
					});
            }

            function setAmountCart() {
                $.ajax({
                    url : "setAmount.cart",
                    type : "post",
                    data : {
                        amount : $("#amount").val(),
                        productNo : <%=p.getProductNo()%>
                    },
                    success : function(result) {
                        if(result > 0) { // 수량 업데이트 성공
                            selectCart();
                        } else { // 수량 업데이트 실패
                            alert("수량 변경 실패");
                        }
                    },
                    error : function() {
                        console.log("장바구니 update ajax 통신 실패");
                    }
                });
            }

            function deleteCart() {
                $.ajax({
                    url : "delete.cart",
                    type : "post",
                    data : {
                        amount : $("#amount").val(),
                        productNo : <%= p.getProductNo() %>
                    },
                    success : function(result) {
                        if(result > 0) { // 삭제 성공
                            selectCart();
                        } else { 
                            alert("삭제 실패");
                        }
                    },
                    error : function() {
                        console.log("장바구니 update ajax 통신 실패");
                    }
                });
            } 
    </script>
</body>
</html>