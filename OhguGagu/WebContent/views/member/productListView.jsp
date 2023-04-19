<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매하는 상품 상세페이지</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR:wght@100;300;700&display=swap" rel="stylesheet">
​
<style>
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
​
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
                <li><img src="img/image1.jpg"></li>
                <li class="a">NST IVORY</li>
                <li class="c">엔에스티 아이보리</li>
                <li class="b">9,880원 <span>24%</span></li>
                <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image2.jpg"></li>
                <li class="a">NST IVORY</li>
                <li class="c">엔에스티 아이보리</li>
                <li class="b">9,880원 <span>24%</span></li>
                <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image3.jpg"></li>
                <li class="a">NST IVORY</li>
                <li class="c">엔에스티 아이보리</li>
                <li class="b">9,880원 <span>24%</span></li>
                <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image4.jpg"></li>
                <li class="a">NST IVORY</li>
                <li class="c">엔에스티 아이보리</li>
                <li class="b">9,880원 <span>24%</span></li>
                <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image5.jpg"></li>
                <li class="a">NST IVORY</li>
                <li class="c">엔에스티 아이보리</li>
                <li class="b">9,880원 <span>24%</span></li>
                <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image6.jpg"></li>
                <li class="a">NST IVORY</li>
                <li class="c">엔에스티 아이보리</li>
                <li class="b">9,880원 <span>24%</span></li>
                <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image7.jpg"></li>
                <li class="a">NST IVORY</li>
                <li class="c">엔에스티 아이보리</li>
                <li class="b">9,880원 <span>24%</span></li>
                <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image8.jpg"></li>
                <li class="a">NST IVORY</li>
                <li class="c">엔에스티 아이보리</li>
                <li class="b">9,880원 <span>24%</span></li>
                <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image9.jpg"></li>
                <li class="a">NST IVORY</li>
                <li class="c">엔에스티 아이보리</li>
                <li class="b">9,880원 <span>24%</span></li>
                <li class="d">리뷰 <span>2</span> 평점 · <span>4.5/5</span></li>
            </ul>            
        </div>
    </section>
</body>
</html>