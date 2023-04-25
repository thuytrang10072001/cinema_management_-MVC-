<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/dist/css/bootstrap.min.css'/>" />
<link rel="stylesheet" href="http://localhost:8080/QuanLyRapChieuPhim/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="http://localhost:8080/QuanLyRapChieuPhim/resources/bootstrap/dist/css/bootstrap.min.css">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="http://localhost:8080/QuanLyRapChieuPhim/resources/imgs/theme/logo.svg" />

<link rel="stylesheet"
	href="http://localhost:8080/QuanLyRapChieuPhim/resources/fontawesome-pro-6.1.1-web/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
	integrity="sha512-rqQltXRuHxtPWhktpAZxLHUVJ3Eombn3hvk9PHjV/N5DMUYnzKPC1i3ub0mEXgFzsaZNeJcoE0YHq0j/GFsdGg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Template CSS -->


<style>
#carousel-simple {
	text-align: center;
}

.page {
	background-image:
		url("https://assets.nflxext.com/ffe/siteui/vlv3/0bd3a69d-6790-4edc-9818-1c8c558946c2/1f1ab65c-af21-49aa-a928-9ef1faf4fe94/VN-en-20220329-popsignuptwoweeks-perspective_alpha_website_large.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

.carousel-indicators button {
	width: 20px;
	height: 20px;
	border-radius: 100%;
	background-color: #999;
	border-color: red;
}

.carousel-indicators .active {
	background-color: white;
}

.mtw_banner_right {
	position: fixed;
	right: 0px;
	z-index: 20;
}

.mtw_banner_left {
	position: fixed;
	left: 0px;
	z-index: 20;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}
</style>

</head>

<body class="page">
	<%@include file="/WEB-INF/views/include/header.jsp"%>
	<div class="main">
		<div class="container">
			<div id="carousel-simple" class="carousel slide " data-ride="carousel">
	
				<!-- Indicators -->
				<div class="carousel-indicators">
					<button type="button" data-target="#carousel-simple" data-slide-to="0" class="active"></button>
					<button type="button" data-target="#carousel-simple" data-slide-to="1" ></button>
					<button type="button" data-target="#carousel-simple" data-slide-to="2" ></button>
					<button type="button" data-target="#carousel-simple" data-slide-to="3" ></button>
					<button type="button" data-target="#carousel-simple" data-slide-to="4" ></button>
					<button type="button" data-target="#carousel-simple" data-slide-to="5" ></button>
				</div>
	
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="resources/imgs/carousel/980_x_448__3_.png" alt="">
					</div>
					<div class="carousel-item">
						<img src="resources/imgs/carousel/980x448_1__2.png" alt="">
					</div>
					<div class="carousel-item">
						<img src="resources/imgs/carousel/bad-guys-980_x_448__1_.jpg"
							alt="">
					</div>
					<div class="carousel-item">
						<img src="resources/imgs/carousel/cracked_980wx448h_1_.jpg" alt="">
					</div>
					<div class="carousel-item">
						<img src="resources/imgs/carousel/fantastic-beast-980wx448h_1_.jpg"
							alt="">
					</div>
					<div class="carousel-item">
						<img src="resources/imgs/carousel/morbius-980x448.jpg" alt="">
					</div>
				</div>
	
				<!-- Controls -->
				<a class="carousel-control-prev" href="#carousel-simple"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only"></span>
				</a> <a class="carousel-control-next" href="#carousel-simple"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only"></span>
				</a>
			</div>
		</div>
	</div>
	
	<%@include file="/WEB-INF/views/include/footer.jsp"%>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
   <!--  <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/js/main.js"></script> -->
</body>
</html>
