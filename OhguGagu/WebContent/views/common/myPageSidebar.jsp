<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div[class=side]{
    	width: 200px;
	    height: 100%;
	    background: white;
		border-right: 1px solid lightgray;
    }
   	.side>div{
    	margin-left: 20px;
    	margin-top: 10px;
   	}
    .side>div>div{
    	font-size: 40px;
    	margin-bottom: 20px;
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
		    <div>고객센터</div>
		    <a href="">공지사항</a><br><br>
		    <a href="">1:1 문의</a><br><br>
			<a href="">FAQ</a><br>
	    </div>
    </div>
</body>
</html>