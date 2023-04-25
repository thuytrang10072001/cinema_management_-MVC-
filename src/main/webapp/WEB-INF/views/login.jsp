<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Nhập</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="<c:url value='/resources/assets/dist/css/bootstrap.min.css'/>" />
	<link rel="stylesheet" href="<c:url value='/resources/css/login.css'/>"/>

<style>

.page {
	background-image: url("https://assets.nflxext.com/ffe/siteui/vlv3/0bd3a69d-6790-4edc-9818-1c8c558946c2/1f1ab65c-af21-49aa-a928-9ef1faf4fe94/VN-en-20220329-popsignuptwoweeks-perspective_alpha_website_large.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}
.icon{
	color: #fff;
}
</style>

</head>

<body class="page">
	<%@include file="/WEB-INF/views/include/header.jsp"%>

		<div class="form-tt">
			  <!--    <i class="fa-solid fa-xmark iconclose"></i> -->
				<h2>Đăng nhập</h2>
				<div style="color: red;font-style: italic;font-size: larger;margin-bottom: 5px;">${messageA}</div>
                <form action="http://localhost:8080/QuanLyRapChieuPhim/login/login.htm" method="post" name="dang-ky">
                <p
					style="color: #ff3366; font-size: 12px; display: inline;">
					${errorTK}</p>
                <div class="input-container">
                    <i class="fa-solid fa-user icon"></i>
                    <input class="input-content" type="text" name="email" placeholder="Nhập email đăng ký" />
				
				</div>
				<p
					style="color: #ff3366; font-size: 12px; margin-top: 5px; margin-bottom: 0px;">
					${errorMK}</p>
                <div class="input-container">
                    <i class="fa-solid fa-lock icon"></i>
                    <input class="input-content" id="content-pass" type="password" name="password" placeholder="Nhập mật khẩu" />
				
				</div>
                <!--<input type="checkbox" id="checkbox" name="checkbox">-->
                <a style="color: red;" href="/QuanLyRapChieuPhim/forget.htm">Quên mật khẩu</a>
                <input type="submit" name="submit" value="Đăng nhập" />
                <label class="psw-text"> Bạn chưa có tài khoản? 
                <a href="http://localhost:8080/QuanLyRapChieuPhim/register.htm" style="color: red;">Đăng ký</a>
                </label>
                </form>	
		</div>
		
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>
