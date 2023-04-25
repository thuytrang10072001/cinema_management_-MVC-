<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Đặt Mật Khẩu</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    
    
    <link rel="stylesheet" href="http://localhost:8080/QuanLyRapChieuPhim/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
      integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
      crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    
    
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="http://localhost:8080/QuanLyRapChieuPhim/resources/imgs/favicon.png">
    <!-- Custom CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="http://localhost:8080/QuanLyRapChieuPhim/resources/bower_components/chartist/dist/chartist.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://localhost:8080/QuanLyRapChieuPhim/resources/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Custom CSS -->
    <link href="http://localhost:8080/QuanLyRapChieuPhim/resources/css/style.min.css" rel="stylesheet">
    <link href="http://localhost:8080/QuanLyRapChieuPhim/resources/css/employee.css" rel="stylesheet">
    <!-- <link href="../css/add-employee.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
    
        <!-- Template CSS -->
    <link rel="stylesheet" href="http://localhost:8080/QuanLyRapChieuPhim/resources/css/main.css" />
    <link rel="stylesheet" href="http://localhost:8080/QuanLyRapChieuPhim/resources/css/vendors/boostrap.min.css" />
    <link rel="stylesheet" href="http://localhost:8080/QuanLyRapChieuPhim/resources/css/account.css">

    <style>
  		.container1
  		{
  			width: 100%;
  			display: grid;
  			grid-template-columns: auto auto auto auto auto auto auto auto;
  			grid-gap: 10px 10px;
  		}
  		
  		.body
  		{
  			background-color: #fff;
  		}
  		
  		.name-seat{
  			color: #007bff;
  		}
  		   
    	.bd-placeholder-img {
	        font-size: 1.125rem;
	        text-anchor: middle;
	        -webkit-user-select: none;
	        -moz-user-select: none;
	        user-select: none;
	      }

    	@media (min-width: 768px) {
	    	.bd-placeholder-img-lg {
	        	font-size: 3.5rem;
	        }
	    }	  
	    
	     #carousel-simple {
            text-align: center;
        }
         
    	.errors{
    		color: red;
    	}
    	.col-3 .text-center{
    		background: #088178;
    		color: #222222;
    	}
    	.dropdown:hover .dropdown-menu {
			display: block;
			margin-top: 0;
		} 
	    @media (min-width: 768px){
			.col-md-9 {
    		flex: 0 0 auto;
    		width: 75%;
		}
		}
			
  	</style>
	
    
    <link rel="stylesheet"
	href="<c:url value='/resources/css/alertify.min.css'/>" />
</head>
<body>
<!-- <div class="container" style="width:100%";>
<h2> Bootstrap Sort Table </h2> -->
<div class="alert-flag" aType='${message.type}'
		aMessage="${message.message }"></div>
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>
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
	
		<%@include file="/WEB-INF/views/include/aside.jsp"%> 
	
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper" style="min-height: 250px;">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb bg-white">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Đổi Mật Khẩu</h4>
						<%-- <div style="color: red;">${message }</div> --%>
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
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        
						<div class="card-body">
                                                <div class="row">
                                                    <form class="col-4 mx-auto pt-5 card" method="post" action="/QuanLyRapChieuPhim/admin/change/password.htm">
                                                        <div class="form-group col-md-12">
                                                            <label for="input-current-password">Mật khẩu hiện
                                                                tại</label>
                                                            <input type="password" name="oldPass" class="form-control"
                                                                id="input-current-password" required/>
                                                            ${message_o}
                                                        </div>
                                                        <div class="form-group col-md-12">
                                                            <label for="input-new-password">Mật khẩu mới</label>
                                                            <input type="password" name="newPass" class="form-control"
                                                                id="input-new-password" required/>
                                                        </div>
                                                        <div class="form-group col-md-12">
                                                            <label for="input-confirm-new-password">Xác nhận mật khẩu
                                                                mới</label>
                                                            <input type="password" name="confirmPass"
                                                                class="form-control" id="input-confirm-new-password" required/>
                                                            ${message_n}
                                                        </div>

                                                        <div class="form-group col-12">
                                                            <button type="submit" name="btnpw"
                                                                class="btn btn-primary col-12">
                                                                Lưu thay đổi
                                                            </button>
                                                        </div>
                                                    </form>
                                
										
															</div>
														</div>
         
                </div>
            </div>
        </div>  

       
        
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
<script>
$('#sortTable').DataTable();
</script>
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
	<script src=" <c:url value='/resources/js/alertify.min.js'/>"></script>
	
	<script type="text/javascript">
		if ($(".alert-flag").attr("aType")) {
			console.log(1)
			alertify.notify($(".alert-flag").attr("aMessage"), $(".alert-flag").attr("aType"), 5, function() { console.log('dismissed'); });
			alertify.set('notifier', 'position', 'top-right');
		}
	</script>
</body>
</html>
