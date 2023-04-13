<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>오구가구</title>
<style>
	#wrap{
		min-height: 100vh;
		position: relative;
		width: 100%
	}
	footer{
		width: 100%;
		height: 110px;
		bottom: 0px;
		position: fixed;
	}
	section{
		padding-bottom: 110px;
		height: 1000px;
		width:1000px;
	}
	html, body{
		margin: 0;
		padding: 0;
	}
	html {
		height: 100%;
		/* overflow: scroll; */
	}
	header {
		position: fixed;
		top : 0;
		left: 0;
		right : 0;
		z-index:2;
		margin-bottom: 0px;
		background-color: white;
	}

	body {
		padding-top: 150px;
		position: relative;
		z-index:1;
	}

	.container{
		top: 20px;
		left: 0;
		right: 0;
		bottom: 0;
		margin : 0px;
	}
	
</style>

</head>

<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<div id="wrap">
		<header>
			<%@ include file="views/common/menubar.jsp" %>
		</header>
			<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
				<div class="carousel-indicators">
				  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
				  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
				  <div class="carousel-item active">
					<img src="https://images.pexels.com/photos/1350789/pexels-photo-1350789.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
					  <h5>First slide label</h5>
					  <p>Some representative placeholder content for the first slide.</p>
					</div>
				  </div>
				  <div class="carousel-item">
					<img src="https://images.pexels.com/photos/245208/pexels-photo-245208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
					  <h5>Second slide label</h5>
					  <p>Some representative placeholder content for the second slide.</p>
					</div>
				  </div>
				  <div class="carousel-item">
					<img src="https://images.pexels.com/photos/1866149/pexels-photo-1866149.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
					  <h5>Third slide label</h5>
					  <p>Some representative placeholder content for the third slide.</p>
					</div>
				  </div>
				</div>
				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				  <span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				  <span class="carousel-control-next-icon" aria-hidden="true"></span>
				  <span class="visually-hidden">Next</span>
				</button>
			  </div>
		<footer>
			<%@ include file="views/common/footer.jsp" %>
		</footer>
	</div>
</body>
</html>