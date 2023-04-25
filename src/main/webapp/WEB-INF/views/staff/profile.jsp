<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Thông Tin Cá Nhân</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="http://localhost:8080/QuanLyRapChieuPhim/resources/plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link href="http://localhost:8080/QuanLyRapChieuPhim/resources/bower_components/chartist/dist/chartist.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://localhost:8080/QuanLyRapChieuPhim/resources/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Custom CSS -->
    <link href="http://localhost:8080/QuanLyRapChieuPhim/resources/css/style.min.css" rel="stylesheet">
 	<style>
    	.errors{
    		color: red;
    	}
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <!--<div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>-->
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
       
        <%@include file="/WEB-INF/views/include/header_admin.jsp"%>
       
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        
 		<%@include file="/WEB-INF/views/include/aside_staff.jsp"%> 
 		
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Trang hồ sơ</h4>
                    </div>
                
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-12">
                        <div class="white-box">
                            <div class="user-bg"> <img width="100%" alt="user" src="http://localhost:8080/QuanLyRapChieuPhim/resources/imgs/user-icon.jpg">
                                
                            </div>
                            <div class="user-btm-box mt-5 d-md-flex">
                                <div class="col-md-4 col-sm-4 text-center" style="text-align: center;">
                                    
                                </div>
                                <!--<div class="col-md-4 col-sm-4 text-center">
                                    <h1>125</h1>
                                </div>
                                <div class="col-md-4 col-sm-4 text-center">
                                    <h1>556</h1>
                                </div>-->
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 cddddddol-md-12">
                        <div class="card">
                            <div class="card-body">
                                <form class="form-horizontal form-material" method="POST" action="/QuanLyRapChieuPhim/staff/edit/employee/${user.maNV}/${tk.email}.htm">
                                	<div style="color: red;">${message}</div>
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Họ và tên</label>
                                        <div class="col-md-12 border-bottom p-0">
                                        	<div class="errors">${errors_tenNV }</div>
                                            <input type="text" name="tenNV" value="${user.tenNV}"
                                                class="form-control p-0 border-0" required>
                                         </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="example-email" class="col-md-12 p-0">Email</label>
                                        <div class="col-md-12 border-bottom p-0">${tk.email}
                                            <!--<input type="email" placeholder="${tk.email}"
                                                class="form-control p-0 border-0" name="example-email"
                                                id="example-email">-->
                                        </div>
                                    </div>
                                 
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Số điện thoại</label>
                                        <div class="col-md-12 border-bottom p-0">
                                        	<div class="errors">${errors_soDT}</div>
                                            <input type="text" value="${user.soDT}" name="soDT"
                                                class="form-control p-0 border-0" required>
                                        </div>
                                    </div>
                                 
                                    <div class="form-group mb-4">
                                        <label class="col-sm-12">Địa chỉ</label>

                                        <div class="col-sm-12 border-bottom">
                                            <select name = "diaChi" class="form-select shadow-none p-0 border-0 form-control-line">
                                            	<option value="${user.diaChi}">${user.diaChi}</option>
                                                <option value="Hồ Chí Minh">Hồ Chí Minh</option>
												<option value="Hà Nội">Hà Nội</option>
												<option value="Vùng Tàu">Vũng Tàu</option>
												<option value="Đồng Nai">Đồng Nai</option>
												<option value="Nam Định">Nam Định</option>
												<option value="Đăk Lăk">Đăk Lăk</option>
												<option value="Hải Phòng">Hải Phòng</option>
												<option value="Thái Bình">Thái Bình</option>
											</select>
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <div class="col-sm-12">
                                            	<button type="submit" "btn
												btn-success" style="background-color: #0083f7; color: #fff; height: 35px; border: none00; border: none; border-radius: 5px;">Cập
												nhật hồ sơ</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center"> 2022 © custom by K.O.X
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/js/app-style-switcher.js"></script>
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!--Wave Effects -->
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/js/custom.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/bower_components/chartist/dist/chartist.min.js"></script>
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/js/pages/dashboards/dashboard1.js"></script>
</body>

</html>


