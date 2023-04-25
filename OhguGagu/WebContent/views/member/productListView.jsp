<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.ohgu.product.model.vo.Product"%>
<%
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구매하는 상품 상세페이지</title>
    <style>
        /* reset.css 파일 : 속성 초기화 */
        * {box-sizing: border-box;}
        html, body, div,h1,h2,h3,h4,h5,h6, 
        p,div,em,sup,sub,code,hr,strong,span,q,blockquote,
        header,footer,aside,nav,article,section,figure,main,
        img,a,table,tr,td,th,thead,tbody,tfoot,
        ul,ol,li,dl,dt,dd,address,
        form,fieldset,legend,input,button,select,option,textarea {
            margin: 0; padding: 0;
            font-size: 1.0rem; font-weight: normal; font-style: normal;
            line-height: 1.0; font-family: 'Noto Sans KR' sans-serif;
        }
        /* legend {display: none;} 숨김 */
        /* select {border: 0;} */
        ul, ol, li {list-style: none;}
        table,tr,th,td {border-collapse:collapse;}
        th {text-align: left;}
        a {color: #000; text-decoration: none;}
        textarea {resize: none;}
        fieldset {border: 0;}
        input, button {border: 0; background: none; cursor: pointer;}
        .skip {display: none;}

        /* css 속성 추가한부분 - 수정하면서 완성하기 */

        body {
            color: #444444; 
        }
        li {
            list-style: none;
        }
        .clear {
            /* clear: both;  */
        }

        
        .items { 
            width: 390.33px;
            height: 260.21px;
            float: left;
            margin: 50px 180px 0 17px;
        }
        .box {
            width: 1320px;
            height : 1800px;
            margin: 0 auto; 
        }
        .box .clear {
            height: 80px;
            both : clear;
        }
        #content_box {
            padding-top: 80px;
        }
       
       .items:hover {
       		opacity : 0.8;
       		cursor : pointer;
       }
    </style>
</head>

<body>
    <div class="outer">
        <header>
            <%@ include file="../common/mainSidebar.jsp" %>
        </header>
        
        <div class="mainview">
            <div>
                <%@ include file="../common/menubar.jsp" %>
            </div>

			<section id="content_box">
		        <div class="box"> 
                    <div class="clear"></div>    
                    <% for(Product p : list) { %>
	                    <ul class="items" style="margin-bottom: 100px;">
	                        <li><img src="<%= p.getThumbnail() %>" width="300" height="250"></li>
	                        <li class="a">No. <span id="<%= p.getProductNo() %>"><%= p.getProductNo() %></span></li>
	                        <li class="c"><%= p.getProductName() %></li>
	                        <li class="b"><%= p.getPrice() %>원 <span><%= p.getDiscountRate() %>%</span></li>
	                        <li class="d">color. <span><%= p.getpColor() %></span> Category. <span><%= p.getCategory() %></span></li>
	                    </ul>
                    <% } %>
                    
                    <div class="clear"></div>   
                </div>
    		</section>

        </div>
        
        <script>
        	$(function() {
        		$(".items").click(function() {
        			
        			let pno = $(this).children().eq(1).children().eq(0).text();

        			location.href = "<%= contextPath %>/detailView.pr?currentPage=1&pno=" + pno;
        		});
        	});
        </script>
            

        <footer>
            <%@ include file="../common/footer.jsp" %>
        </footer>
    </div>
	

</body>
</html>