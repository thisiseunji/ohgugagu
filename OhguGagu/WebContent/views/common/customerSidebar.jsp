<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
    div[class="side"]{
    	width: 200px;
	    height: 100%;
	    background: lightgray;
	    position: fixed;
	    top: 0;
	    left: 0px;
    }
   	.side>div{
    	margin-left: 20px;
    	margin-top: 150px;
   	}
    .side>div>div{
    	font-size: 40px;
	}
    .side>div>a{
    	color: black;
    	text-decoration: none;
    	font-size: large;
    	margin: 20px;
    }
	.side>div>a:hover{
		color: red;
	}
</style>
</head>
<body>
    <div class="side">
	    <div>
		    <div>쇼핑정보</div>
		    <a href="">공지사항</a><br>
		    <a href="">1:1 문의</a><br>
			<a href="">FAQ</a><br>
	    </div>
    </div>
</body>
</html>