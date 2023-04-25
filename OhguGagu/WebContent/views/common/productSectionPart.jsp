<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구매하는 상품 중간페이지</title>
    
    <style>
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
            width: 1030px;
            /* height: 260.21px; */
            margin-left: 145px;
            margin-right: 145px;
        }


        .box {
            width: 1320px;
            margin: 0 auto;
        }
        #content_box .box .clear {
            height: 80px;
        }
        #content_box {
            padding-top: 80px;
        }
        #content_box h3 {
            float: left;
            margin-left: 600px;
        }
        #content_box p {
            float: right;
        }
        .items { 
            width: 1030px; 
            float: left;
            margin: 50px 180px 0 17px;
        }
       
        /*
        .items .a {
            font-weight: bold;
            color: black;
            margin-top: 20px;
        }
        .items .b { 
            font-weight: bold;
            color: black;
            margin-top: 8px;
        }
        .items .b span { 
            color: #a26f59;
        }
        .items .c { 
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
        */

        /* 탭메뉴 */
        * { padding: 0; margin: 0; list-style: none;}
        body { padding: 30px; }
        .tab_type1 ul {display: flex; height: 60px; border-bottom: 1px solid #CA4444;} 
        .tab_type1 ul li {flex: 1; }  
        .tab_type1 ul li:first-child a {border-left: 1px solid #ddd;}
        .tab_type1 ul li a {display: block; height: 59px; border: 1px solid #ddd; 
            border-left: none; border-bottom: none; font-size: 14px; color: #505050; 
            text-align: center; line-height: 59px; text-decoration: none;} 
        .tab_type1 ul li a.on {position: relative; height: 58px; border-color: #CA4444; border-top-width: 2px; line-height: 57px; border-bottom: 1px solid #fff;}
        .tab_type1 ul li a.on:before { content: ""; position: absolute; left: -1px; top: -2px; width: 1px; height: 100%; background: #CA4444; border-top: 2px solid #CA4444;} 
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
                <li><img src=".../views/common/productSectionPart.jsp"></li>
            </ul>

            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image2.jpg"></li>
            </ul>

            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image3.jpg"></li>
            </ul>

            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image4.jpg"></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/subscribe.png"></li>
            </ul>
            <ul class="items" style="margin-bottom: 100px;">
                <li><img style="width: 700px; margin-left: 310px;" src="img/subscribe2.png"></li>
            </ul>

            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image5.jpg"></li>
            </ul>

            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image6.jpg"></li>
            </ul>

            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image7.jpg"></li>
            </ul>

            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image8.jpg"></li>
            </ul>

            <ul class="items" style="margin-bottom: 100px;">
                <li><img src="img/image9.jpg"></li>
            </ul>
            
        </div>

    </section>
	

</body>
</html>