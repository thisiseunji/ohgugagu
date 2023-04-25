<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>구매하는 상품 상세페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<title>오구가구</title>
<style>

	/* 
		index.html blocker : 
		1. 할인 슬라이드를 제외한 모든 요소가 너무 크다 -> 현재가 100이라면 약 80% 정도으 사이즈로 변경이 필요하다.
		2. 할인 슬라이드는 너무 작다 => 보통 전체 화면의 가로 기준 너비가 100이라면 얘는 약 60 정도 된는 것 같다. 
		3. 화면이 아래로 스크롤 될 때, 첫번째 슬라이드 위의 글씨가 타이틀 로고를 침범한다. z index나 position 적용해봤지만 뭘 잘못했는지 적용 안된다. 
		.. 혹시 위 문제들에 대한 해결책을 알고있거나 시도하며 궁금한 점이 있다면 김은지에게 말해주세요!
	*/
	#wrap{
		min-height: 100vh;
		position: relative;
		width: 100%
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
		clear:none;
	}
	section{
		padding-bottom: 110px;
		height: 1000px;
		width:1000px;
	}
	body {
		padding-top: 150px;
		position: relative;
		/* 메뉴바 침범하지 않기위함 */
		z-index:1;
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


    * { padding: 0; margin: 0; list-style: none; }
    body { padding: 30px; }
    .tab_type1 ul {display: flex; height: 60px; border-bottom: 1px solid #5da62b;} 
    .tab_type1 ul li {flex: 1; }  
    .tab_type1 ul li:first-child a {border-left: 1px solid #ddd;}
    .tab_type1 ul li a {display: block; height: 59px; border: 1px solid #ddd; 
        border-left: none; border-bottom: none; font-size: 14px; color: #505050; 
        text-align: center; line-height: 59px; text-decoration: none;} 
    .tab_type1 ul li a.on {position: relative; height: 58px; border-color: #5da62b; border-top-width: 2px; line-height: 57px; border-bottom: 1px solid #fff;}
    .tab_type1 ul li a.on:before { content: ""; position: absolute; left: -1px; top: -2px; width: 1px; height: 100%; background: #5da62b; border-top: 2px solid #5da62b;} 
    

    /*--- section ---*/
    * {
        margin: 0;
        padding: 0;
    }
    body {
        color: #444444; /* 짙은회색 */
        /* font-family: "돋움"; */
    }
    li {
        list-style: none;
    }
    .clear {
        clear: both; 
    }

    .items img {
        width: 390.33px;
        height: 260.21px;
    }
    .box {
        width: 1320px;
        margin: 0 auto;
    }
    #content_box .box .clear {
        height: 80px;
    }
    #content_box {
        padding-top: 200px;
    }
    #content_box h3 {
        float: left;
        margin-left: 600px;
    }
    #content_box p {
        float: right;
    }
    .items { 
        width: 232px; 
        float: left;
        margin: 50px 180px 0 17px;
    }
    .items .a {
        font-weight: bold;
        color: black;
        margin-top: 20px;
    }
    .items .b { /*가격*/
        font-weight: bold;
        color: black;
        margin-top: 8px;
    }
    .items .b span { 
        color: #a26f59;
    }
    .items .c { /*상세설명*/
        font-size: 12px;
        margin-top: 20px;
    }
    .items .d { 
        font-size: 12px;
        margin-top: 25px;
    }
    .items .d span {
        color: #a26f59;
    }

</style>
</head>

<body>
	<div id="wrap">
		<header>
			<%@ include file="../common/mainSidebar.jsp" %>
			<%@ include file="../common/menubar.jsp" %>
		</header>
		<section id="content_box">
            <div class="box">
                <nav class="tab_type1">
                    <ul>
                        <li><a href="#a">제품소개</a></li>
                        <li><a href="#a" class="on">상세정보</a></li>
                        <li><a href="#a">유의사항</a></li>
                        <li><a href="#a">고객후기/문의</a></li>
                    </ul>
                </nav>  
                <div class="clear"></div>
    
                <ul class="items" style="margin-bottom: 100px;">
                    <li><img src="<%=contextPath %>/resources/image/image1.jpg"></li>
                    <li class="a">NST IVORY</li>
                    <li class="c">엔에스티 아이보리</li>
                    <li class="b">9,880원 <span>24%</span></li>
                    <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
                </ul>
                <ul class="items" style="margin-bottom: 100px;">
                    <li><img src="<%=contextPath %>/resources/image/image2.jpg"></li>
                    <li class="a">NST IVORY</li>
                    <li class="c">엔에스티 아이보리</li>
                    <li class="b">9,880원 <span>24%</span></li>
                    <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
                </ul>
                <ul class="items" style="margin-bottom: 100px;">
                    <li><img src="<%=contextPath %>/resources/image/image3.jpg"></li>
                    <li class="a">NST IVORY</li>
                    <li class="c">엔에스티 아이보리</li>
                    <li class="b">9,880원 <span>24%</span></li>
                    <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
                </ul>
                <ul class="items" style="margin-bottom: 100px;">
                    <li><img src="<%=contextPath %>/resources/image/image4.jpg"></li>
                    <li class="a">NST IVORY</li>
                    <li class="c">엔에스티 아이보리</li>
                    <li class="b">9,880원 <span>24%</span></li>
                    <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
                </ul>
                <ul class="items" style="margin-bottom: 100px;">
                    <li><img src="<%=contextPath %>/resources/image/image5.jpg"></li>
                    <li class="a">NST IVORY</li>
                    <li class="c">엔에스티 아이보리</li>
                    <li class="b">9,880원 <span>24%</span></li>
                    <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
                </ul>
                <ul class="items" style="margin-bottom: 100px;">
                    <li><img src="<%=contextPath %>/resources/image/image6.jpg"></li>
                    <li class="a">NST IVORY</li>
                    <li class="c">엔에스티 아이보리</li>
                    <li class="b">9,880원 <span>24%</span></li>
                    <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
                </ul>
                <ul class="items" style="margin-bottom: 100px;">
                    <li><img src="<%=contextPath %>/resources/image/image7.jpg"></li>
                    <li class="a">NST IVORY</li>
                    <li class="c">엔에스티 아이보리</li>
                    <li class="b">9,880원 <span>24%</span></li>
                    <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
                </ul>
                <ul class="items" style="margin-bottom: 100px;">
                    <li><img src="<%=contextPath %>/resources/image/image8.jpg"></li>
                    <li class="a">NST IVORY</li>
                    <li class="c">엔에스티 아이보리</li>
                    <li class="b">9,880원 <span>24%</span></li>
                    <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
                </ul>
                <ul class="items" style="margin-bottom: 100px;">
                    <li><img src="<%=contextPath %>/resources/image/image9.jpg"></li>
                    <li class="a">NST IVORY</li>
                    <li class="c">엔에스티 아이보리</li>
                    <li class="b">9,880원 <span>24%</span></li>
                    <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
                </ul>
                
            </div>
        </section>
		<footer>
			<%@ include file="../common/footer.jsp" %>
		</footer>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>