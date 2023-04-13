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
	}

	body {
		padding-top: 150px;
	}

	.container{
		top: 20px;
		left: 0;
		right: 0;
		bottom: 0;
		overflow: auto;
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


		<p>국가는 농지에 관하여 경자유전의 원칙이 달성될 수 있도록 노력하여야 하며, 농지의 소작제도는 금지된다. 모든 국민은 법률이 정하는 바에 의하여 국가기관에 문서로 청원할 권리를 가진다.</p>

		<p>대통령은 제1항과 제2항의 처분 또는 명령을 한 때에는 지체없이 국회에 보고하여 그 승인을 얻어야 한다. 모든 국민은 통신의 비밀을 침해받지 아니한다.</p>

		<p>국무총리는 국회의 동의를 얻어 대통령이 임명한다. 대법원과 각급법원의 조직은 법률로 정한다. 모든 국민은 근로의 의무를 진다. 국가는 근로의 의무의 내용과 조건을 민주주의원칙에 따라 법률로 정한다.</p>

		<p>모든 국민은 사생활의 비밀과 자유를 침해받지 아니한다. 헌법재판소 재판관의 임기는 6년으로 하며, 법률이 정하는 바에 의하여 연임할 수 있다. 국회가 재적의원 과반수의 찬성으로 계엄의 해제를 요구한 때에는 대통령은 이를 해제하여야 한다.</p>

		<p>모든 국민은 능력에 따라 균등하게 교육을 받을 권리를 가진다. 의원을 제명하려면 국회재적의원 3분의 2 이상의 찬성이 있어야 한다. 공무원의 신분과 정치적 중립성은 법률이 정하는 바에 의하여 보장된다.</p>

		<p>국가안전보장회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 국회는 국정을 감사하거나 특정한 국정사안에 대하여 조사할 수 있으며, 이에 필요한 서류의 제출 또는 증인의 출석과 증언이나 의견의 진술을 요구할 수 있다.</p>

		<p>국회의원이 회기전에 체포 또는 구금된 때에는 현행범인이 아닌 한 국회의 요구가 있으면 회기중 석방된다. 대통령은 국무회의의 의장이 되고, 국무총리는 부의장이 된다.</p>

		<p>대통령이 제1항의 기간내에 공포나 재의의 요구를 하지 아니한 때에도 그 법률안은 법률로서 확정된다. 이 헌법은 1988년 2월 25일부터 시행한다. 다만, 이 헌법을 시행하기 위하여 필요한 법률의 제정·개정과 이 헌법에 의한 대통령 및 국회의원의 선거 기타 이 헌법시행에 관한 준비는 이 헌법시행 전에 할 수 있다.</p>

		<p>누구든지 병역의무의 이행으로 인하여 불이익한 처우를 받지 아니한다. 국회는 의장 1인과 부의장 2인을 선출한다. 훈장등의 영전은 이를 받은 자에게만 효력이 있고, 어떠한 특권도 이에 따르지 아니한다.</p>
	
		
				
		
		<footer>
			<%@ include file="views/common/footer.jsp" %>
		</footer>
	</div>
</body>
</html>