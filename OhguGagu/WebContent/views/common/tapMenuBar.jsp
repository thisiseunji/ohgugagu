<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>탭메뉴 만들기</title>
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
    </style>
</head>
<body>

    <nav class="tab_type1">
        <ul>
            <li><a href="#a" class="on">제품소개</a></li>
            <li><a href="#a">상세정보</a></li>
            <li><a href="#a">유의사항</a></li>
            <li><a href="#a">고객후기/문의</a></li>
        </ul>
    </nav>  

</body>
</html>