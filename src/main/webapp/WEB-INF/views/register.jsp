<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="<c:url value='/resources/assets/dist/css/bootstrap.min.css'/>" />
	<link rel="stylesheet" href="<c:url value='/resources/css/register.css'/>"/>

<style>

.page {
	background-image: url("https://assets.nflxext.com/ffe/siteui/vlv3/0bd3a69d-6790-4edc-9818-1c8c558946c2/1f1ab65c-af21-49aa-a928-9ef1faf4fe94/VN-en-20220329-popsignuptwoweeks-perspective_alpha_website_large.jpg");
	background-size: auto;
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
	
	<div class="wrap">
		<div class="login"  style = "margin-top: 20%;">
			<!--<i class="fa-solid fa-xmark iconclose1"></i>-->
			<h2 class="login-header">Đăng kí</h2>
			<div style="color: #ff3366; font-size: 12px; margin-top: 5px; margin-bottom: 0px;">${message }</div>			
			<form:form class="login-form" method="POST" action="/QuanLyRapChieuPhim/register/insert.htm" modelAttribute="KhachHang">
				<label class="form-label" for="">Tên<span style="color: red;">*</span></label>
				<div class="input-container">
					<i class="fa-solid fa-user icon"></i> 
					<form:input type="text" class="input-content" placeholder="Họ và Tên" path="tenKH" />
					<p
						style="color: #ff3366; font-size: 12px; margin-top: 5px; margin-bottom: 0px;">
						<form:errors path="tenKH" cssClass="errors" />
					</p>
				</div>
				
				<div class="input-container">
					<i class="fa-solid fa-globe icon"></i> 
					<form:select path="gioiTinh" id="cars" class="select input-content" placeholder="Giới tính">
						<option value="true">Nam</option>
						<option value="false">Nữ</option>
					</form:select>
				</div>
				
				<div class="input-container">
					<i class="fa-solid fa-phone icon"></i>
				 	<form:input type="text" class="input-content" placeholder="Số điện thoại" path="soDT"/>
				 	<p
						style="color: #ff3366; font-size: 12px; margin-top: 5px; margin-bottom: 0px;">
						<form:errors path="soDT" cssClass="errors" />
					</p>
				</div>
				
				<div class="input-container">
					<i class="fa-solid fa-envelope icon"></i> 
					<form:input type="email" class="input-content" placeholder="Email" path="dstaikhoan.email"/>
					<p
						style="color: #ff3366; font-size: 12px; margin-top: 5px; margin-bottom: 0px;">
						<form:errors path="dstaikhoan.email" cssClass="errors" />
					</p>
				</div>
				
				<div class="input-container">
					<i class="fa-solid fa-lock icon"></i>
					<form:input type="password" class="input-content" placeholder="Mật khẩu" path="dstaikhoan.password"/>
					<p
						style="color: #ff3366; font-size: 12px; margin-top: 5px; margin-bottom: 0px;">
						<form:errors path="dstaikhoan.password" cssClass="errors" />
					</p>
				</div>
				
				<div class="input-container">
					<i class="fa-solid fa-globe icon"></i> 
					<form:select path="diaChi" id="cars" class="select">
						<option class="opacity-value" value>Area</option>
						<option value="Hồ Chí Minh">Hồ Chí Minh</option>
						<option value="Hà Nội">Hà Nội</option>
						<option value="Vùng Tàu">Vũng Tàu</option>
						<option value="Đồng Nai">Đồng Nai</option>
						<option value="Nam Định">Nam Định</option>
						<option value="Đăk Lăk">Đăk Lăk</option>
						<option value="Hải Phòng">Hải Phòng</option>
						<option value="Thái Bình">Thái Bình</option>
					</form:select>
				</div>
				
				<div>
					<label class="form-label" for="">Ngày sinh</label> 
						<select name="day" id="day" class="select-date" required>
							<option value>Ngày</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>

						<select name="month" id="month" class="select-date" required>
							<option value>Tháng</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>

						<select name="year" id="year" class="select-date" required>
							<option value>Năm</option>
							<option value="2022">2022</option>
							<option value="2021">2021</option>
							<option value="2021">2020</option>
							<option value="2019">2019</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
						</select>
				</div>
				<div class="submit-row">
					<button type="submit" class="btn-submit">Đăng kí</button>
					<!--<div class="term-policy-container"> By signing up, you agree to our&nbsp; <a href="#" class="link">
							Terms of Use </a> &nbsp;and&nbsp; <a href="#" class="link">
							Privacy Policy </a>
					</div>-->
				</div>
			</form:form>
			<div class="login-footer">Bạn đã có tài khoản? 
			<a href="http://localhost:8080/QuanLyRapChieuPhim/login.htm" class="sign-up-link">Đăng nhập</a>
			</div>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>