<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
    .outer{
        width: 100%;
        height: 1500px;
    }
	.left{
		width: 200px;
	}
</style>
</head>
<body>
    <div class="outer">
        <div class="header">
			<%@ include file="../common/menubar.jsp" %>
		</div>
		<div class="left">
			<%@ include file="../common/adminPageSidebar.jsp" %>
		</div>
    </div>
</body>
</html>