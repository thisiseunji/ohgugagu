<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">

<!-- Basic stylesheet -->
<link rel="stylesheet" href="/css/owl.carousel.css">
 
<!-- Default Theme -->
<link rel="stylesheet" href="/css/owl.theme.css">

<!-- You can use latest version of jQuery  -->
<script src="/js/jquery-1.9.1.min.js"></script>

<!-- Include js plugin -->
<script src="/js/owl.carousel.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css" integrity="sha512-OTcub78R3msOCtY3Tc6FzeDJ8N9qvQn1Ph49ou13xgA9VsH9+LRxoFU6EqLhW4+PKRfU+/HReXmSZXHEkpYoOA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.green.css" integrity="sha512-riTSV+/RKaiReucjeDW+Id3WlRLVZlTKAJJOHejihLiYHdGaHV7lxWaCfAvUR0ErLYvxTePZpuKZbrTbwpyG9w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.green.min.css" integrity="sha512-C8Movfk6DU/H5PzarG0+Dv9MA9IZzvmQpO/3cIlGIflmtY3vIud07myMu4M/NTPJl8jmZtt/4mC9bAioMZBBdA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


 
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
		position: relative;
		z-index: 3;
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
		padding-top: 150px;
		position: relative;
		/* 메뉴바 침범하지 않기위함 */
		z-index:1;
	}

	/* 1번 슬라이드 스타일 구역 */
	.container{
		top: 20px;
		left: 0;
		right: 0;
		bottom: 0;
		margin : 0px;
	}
	
	/* 1번 슬라이드 내부 사진 */
	.carousel-inner>.carousel-item>img {
		max-height:1200px; 
		/* 사진이 찌그러짐 - 높이가 비슷한 사진을 가져올 것 */
	}

	.ohgu_tit_box {
		/* text-align: center; */
		margin: 0px, 10px, 10px, 20px;
		font-family: "Inter", "Noto Sans KR";
		letter-spacing: -0.01em;
		text-align: left;
	}

	.ohgu_tit_box>.eng {
		font-weight: 400;
		font-size: 30px;
		margin-bottom: 3px;
	}

	.ohgu_tit_box>.kor {
		font-weight: 700;
		font-size: 40px;
	}

	.ohgu_tit_box>.kor>span {
		margin-left: 20px;
		font-weight: 200px;
		font-size: 25px;
		color: #a80c0c;
	}

	.more {
		float : right;
		background-color: transparent;
		width: auto;
		height: auto;
		margin: 12px 0, 0;
		color : rgba(25, 25, 25,0.6);
		font-size: 20px;
		font-weight: 400;
		line-height: 18px;
		position: relative;
		overflow: hidden;
		box-sizing: border-box;
		text-decoration: none;
		margin-top: 30px;
	}


	/* 오구 세일 박스 */
	.ohgu_wrap {
		box-sizing: border-box;
		padding: 120px 10px 10px 20px;
		/* 패딩값을 모두에게 다 줘야하지않을까? */
	}

	.ohgu_sale_box {
		text-align: center;
		display: flex;
		flex-wrap: nowrap;
		justify-content: space-between;
		overflow: hidden;
	}

	.ohgu_img {
		width: 400px;
		height: 400px;
		object-fit: contain;
		/* border: 1px solid black; */
	}
	/* 추천 상품 하나 */
	.ohgu_sale_prod {
		width:400px;
		font-weight: 400;
		font-family: "Inter", "Noto Sans KR";
	}

	.ohgu_prod_name {
		font-size: 30px;
	}

	.ohgu_orign_price {
		font-size: 20px;
		text-decoration: line-through;
		display: block;
		color: darkgray;
	}

	.ohgu_sale_price {
		font-size: 25px;
		font-weight: 700;
		display: block;
		color: #a80c0c;
	}

	/* 베너, 비디오 이미지 */
	#advertisement-banner {
        width: 100%;
        height: 400px;
        margin-top: 200px;
    }

	#advertisement-banner img {
		display: block;
		width: 100%;
		height: 100%;
		object-fit: cover;
	}

	/* 비디오 화면 */
	#video-screen {
		/* text-align: center; */
		width: auto;
		height: 1000px;

		margin: 50px auto;
	}

	/* 할인 상품 슬라이드  */
	#owl-demo .item{
		background: #42bdc2;
		padding: 30px 0px;
		margin: 10px;
		color: #FFF;
		-webkit-border-radius: 3px;
		-moz-border-radius: 3px;
		border-radius: 3px;
		text-align: center;
	}

</style>
</head>

<body>

	
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

			  <!-- 금주의 오구가구 모음 부분-->
			  <div class="ohgu_wrap w-100">
				<div class="ohgu_tit_box">
					<p class="eng">Recommended</p>
					<p class="kor">
						금주의 오구가구
						<span>오만 구천원으로 봄 맞이 인테리어 하기</span>
						<a class="more" href="...오구가구모음으로가기(상품리스트+오구할인인것만)">더보기<ion-icon name="chevron-forward-outline"></ion-icon></a>
					</p>				
				</div>
				<div class="ohgu_sale_box w-100">
					<div class="ohgu_sale_prod">
						<img class="ohgu_img" src="https://www.pngarts.com/files/7/Modern-Furniture-PNG-Pic.png" alt="">
						<div class="ohgu_info">
							<span class="ohgu_prod_name">소파</span>
							<sapn class="ohgu_orign_price">90,000 원</sapn>
							<span class="ohgu_sale_price">59,000 원</span>
						</div>
					</div>
					<div class="ohgu_sale_prod">
						<img class="ohgu_img"src="https://bucketplace-v2-development.s3.amazonaws.com/uploads/product_category/163669805956534581.png" alt="">
						<div class="ohgu_info">
							<span class="ohgu_prod_name">화장대</span>
							<sapn class="ohgu_orign_price">200,000 원</sapn>
							<span class="ohgu_sale_price">59,000 원</span>
						</div>
					</div>
					<div class="ohgu_sale_prod">
						<img class="ohgu_img"src="https://bucketplace-v2-development.s3.amazonaws.com/uploads/product_category/163669805553651444.png" alt="">
						<div class="ohgu_info">
							<span class="ohgu_prod_name">식탁의자</span>
							<sapn class="ohgu_orign_price">90,000 원</sapn>
							<span class="ohgu_sale_price">59,000 원</span>
						</div>
					</div>
					<div class="ohgu_sale_prod">
						<img class="ohgu_img"src="https://bucketplace-v2-development.s3.amazonaws.com/uploads/product_category/163669805553651444.png" alt="">
						<div class="ohgu_info">
							<span class="ohgu_prod_name">식탁의자</span>
							<sapn class="ohgu_orign_price">90,000 원</sapn>
							<span class="ohgu_sale_price">59,000 원</span>
						</div>
					</div>
					<div class="ohgu_sale_prod">
						<img class="ohgu_img"src="https://bucketplace-v2-development.s3.amazonaws.com/uploads/product_category/163669805553651444.png" alt="">
						<div class="ohgu_info">
							<span class="ohgu_prod_name">식탁의자</span>
							<sapn class="ohgu_orign_price">90,000 원</sapn>
							<span class="ohgu_sale_price">59,000 원</span>
						</div>
					</div>
				</div>


				 <!-- 광고용 가로 베너 -->
				 <div id="advertisement-banner">
					<a href="#"><img src="resources/image/ad.png" alt="Advertisement"></a>
				  </div>
	

				<!-- 오구 할인 아닌 할인상품 목록 -->

				<div id="owl-demo" class="owl-carousel owl-theme">
          
					<div class="item"><h1>1</h1></div>
					<div class="item"><h1>2</h1></div>
					<div class="item"><h1>3</h1></div>
					<div class="item"><h1>4</h1></div>
					<div class="item"><h1>5</h1></div>
					<div class="item"><h1>6</h1></div>
					<div class="item"><h1>7</h1></div>
					<div class="item"><h1>8</h1></div>
					<div class="item"><h1>9</h1></div>
					<div class="item"><h1>10</h1></div>
					<div class="item"><h1>11</h1></div>
					<div class="item"><h1>12</h1></div>
				   
				</div>

				<script>
					$('.owl-carousel').owlCarousel({
						loop:true,
						margin:10,
						nav:true,
						responsive:{
							0:{
								items:1
							},
							600:{
								items:3
							},
							1000:{
								items:5
							}
						}
					})
				</script>

				  <!-- 비디오 -->
				  <div id="video-screen">
					<div class="ohgu_tit_box video_tit_box">
						<p class="eng video_eng">YouTube</p>				
					</div>
					<iframe class="text-center" width="100%" height="100%" src="https://www.youtube.com/embed/KT8FfeDr77Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"></iframe>
				  </div>
			  
	
			  </div>

		<footer>
			<%@ include file="views/common/footer.jsp" %>
		</footer>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>