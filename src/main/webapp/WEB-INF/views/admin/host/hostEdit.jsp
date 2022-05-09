<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="kr">

    <head>

        <meta charset="utf-8" />
        <title>now travel 관리자페이지</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="../../../../resources/admin/assets/images/favicon.ico">

        <link rel="stylesheet" href="../../../../resources/admin/assets/libs/gridjs/theme/mermaid.min.css">

        <!-- Plugins css -->
        <link href="../../../../resources/admin/assets/libs/dropzone/min/dropzone.min.css" rel="stylesheet" type="text/css" />            

        <!-- datepicker css -->
        <link rel="stylesheet" href="../../../../resources/admin/assets/libs/flatpickr/flatpickr.min.css">

        <!-- Bootstrap Css -->
        <link href="../../../../resources/admin/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../../../resources/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../../../resources/admin/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
        



    </head>

    
    <body>

    <!-- <body data-layout="horizontal"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">

            
            <!-- 쿠폰 header s -->
            
             ﻿<%@ include file="../include/host/header.jsp" %>
             
              <!-- 쿠폰 header e -->
              
              
            <!-- ========== Left Sidebar Start ========== -->
<<<<<<< HEAD
            
             ﻿<%@ include file="../include/host/sideBar.jsp" %>
            
=======
            <div class="vertical-menu">

                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a href="../mainView" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="/resources/admin/assets/images/logo-dark-sm.png" alt="" height="26">
                        </span>
                        <span class="logo-lg">
                            <img src="/resources/admin/assets/images/nowTravel_logo_180.jpg" alt="">
                        </span>
                    </a>

                    <a href="../mainView" class="logo logo-light">
                        <span class="logo-lg">
                            <img src="/resources/admin/assets/images/logo-light-sm.png" alt="" height="26">
                        </span>
                        <span class="logo-sm">
                            <img src="/resources/admin/assets/images/nowTravel_logo_180.jpg" alt="" height="26">
                        </span>
                    </a>
                </div>

                <button type="button" class="btn btn-sm px-3 font-size-24 header-item waves-effect vertical-menu-btn">
                    <i class="bx bx-menu align-middle"></i>
                </button>

                <div data-simplebar class="sidebar-menu-scroll">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu list-unstyled" id="side-menu">
                            <li class="menu-title" data-key="t-menu">Home</li>

                            <li class="menu-title" data-key="t-applications">MANAGEMENT</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-store icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-ecommerce">숙소관리</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="../admin/lodgingList" data-key="t-products">숙소 리스트</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-receipt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-invoices">쿠폰관리</span>
                                </a>
                                <ul class="sub-menu " aria-expanded="false">
                                    <li><a href="../admin/couponList" data-key="t-invoice-list">쿠폰 리스트</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="../admin/reservationList">
                                    <i class="bx bx-calendar-event icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-calendar">예약관리</span>
                                </a>
                            </li>

                            <li class="menu-title" data-key="t-applications">MEMBER</li>

                            <li class="mm-active">
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-user-circle icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-contacts">회원관리</span>
                                </a>
                                <ul class="sub-menu  mm-collapse mm-show" aria-expanded="false">
                                    <li  class="mm-active"><a href="hostList" data-key="t-user-grid" class="active">호스트 관리</a></li>
                                    <li><a href="../admin/memberList" data-key="t-user-list" >사용자 관리</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>
>>>>>>> branch 'main' of https://github.com/Sjrnfl23/travel_site.git
            <!-- Left Sidebar End -->
	            <header class="ishorizontal-topbar">
	                <div class="topnav">
	                </div>
	            </header>
            </div>


            <!-- ============================================================== -->
            <!-- Left Sidebar End -->
            <!-- 공통부분 끝 -->
            <!-- ============================================================== -->

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- 컨텐츠 시작 -->
            <!-- ============================================================== -->

           
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-xxl-5">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <div class="user-profile-img">
                                            <img src="/resources/admin/assets/images/pattern-bg.jpg"
                                                class="profile-img profile-foreground-img rounded-top" style="height: 120px;"
                                                alt="">

                                            </div>
                                        </div>
                                        <!-- end user-profile-img -->


                                        <div class="p-4 pt-0">
                                            
                                            <div class="mt-n5 position-relative text-center border-bottom pb-3">
                                                <img src="/resources/admin/assets/images/users/avatar-1.jpg" alt="" class="avatar-xl rounded-circle img-thumbnail">
                                              
                                                <div class="mt-3">
                                                   <h5 class="mb-1">김이젠</h5>
                                                    <p class="text-muted mb-0">
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star-half text-warning font-size-14"></i>
                                                    </p>
                                                    
							                        <div class="row">
							                            <div class="col-12">
							                                <div class="card">
							                                    <div class="card-body">
							                                        <div>
							                                            <form action="#" class="dropzone">
							                                                <div class="fallback">
							                                                    <input name="file" type="file" multiple="multiple">
							                                                </div>
							                                                <div class="dz-message needsclick">
							                                                    <div class="mb-3">
							                                                        <i class="display-4 text-muted mdi mdi-cloud-upload"></i>
							                                                    </div>
							                                                    
							                                                    <h4>Drop files here or click to upload.</h4>
							                                                </div>
							                                            </form>
							                                        </div>
							        
							                                        <div class="text-center mt-4">
							                                            <button type="button" class="btn btn-primary waves-effect waves-light">사진첨부</button>
							                                        </div>
							                                    </div>
							                                </div>
							                            </div> <!-- end col -->
							                        </div> <!-- end row -->                                                    
                                                    
                                                </div>

                                            </div>

                                            <div class="table-responsive mt-3 border-bottom pb-3">
                                                <table class="table align-middle table-sm table-nowrap table-borderless table-centered mb-0">
                                                    <tbody>
                                                        <tr>
                                                            <th class="fw-bold">
                                                                이름 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="김이젠">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                이메일 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="ejenit@google.com">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                비밀번호 :</th>
                                                            <td class="text-muted">
                                                            	<input type="password" class="form-control" placeholder="*******************">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                비밀번호 확인 :</th>
                                                            <td class="text-muted">
                                                            	<input type="password" class="form-control" placeholder="*******************">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                전화번호 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="010-1234-1234">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">주소 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="제주특별자치도 서귀포시 안덕면 사계북로 120">
                                                           	</td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">생년월일 :</th>
                                                            <td class="text-muted">
                                                            	<input type="date" class="form-control" placeholder="1999-09-09">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">사용언어 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="한국어, 영어">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">등록일 :</th>
                                                            <td class="text-muted">2022-04-26</td>
                                                        </tr>
                                                        <!-- end tr -->
                                                    </tbody><!-- end tbody -->
                                                </table>
                                            </div>
                                            
                                            <div class="p-3 mt-3">
                                                <div class="row text-center">
                                                    <div class="col-12">
                                                        <div class="p-1">
                                                            <h5 class="mb-1" style="text-align: left;">소개</h5>
                                                            <p class="text-muted mb-0" style="text-align: left;">
                                                            	<textarea class="form-control" placeholder="...."></textarea>
                                                            </p>                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="mt-3 pt-1 text-center">
                                                <ul class="list-inline mb-0">
                                                    <li class="list-inline-item">
                                                       <a href="hostView">
                                                     		<button type="button" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order">수정</button>
                                                       </a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                    	<a href="hostView">
                                                       		<button type="button" class="btn btn-outline-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order">취소</button>
                                                    	</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
						</div>
					</div>
	                <footer class="footer">
	                    <div class="container-fluid">
	                        <div class="row">
	                            <div class="col-sm-6">
	                                <script>document.write(new Date().getFullYear())</script> © now travel.
	                            </div>
	                            <div class="col-sm-6">
	                                <div class="text-sm-end d-none d-sm-block">
	                                    Created <i class="mdi mdi-heart text-danger"></i> by <a href="https://Themesdesign.com/" target="_blank" class="text-reset">살려조</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </footer>				
				</div>
        </div>
        <!-- END layout-wrapper -->



        <!-- chat offcanvas -->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasActivity" aria-labelledby="offcanvasActivityLabel">
            <div class="offcanvas-header border-bottom">
              <h5 id="offcanvasActivityLabel">Offcanvas right</h5>
              <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              ...
            </div>
        </div>

        <!-- JAVASCRIPT -->
        <script src="../../../../resources/admin/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../../../resources/admin/assets/libs/metismenujs/metismenujs.min.js"></script>
        <script src="../../../../resources/admin/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="../../../../resources/admin/assets/libs/eva-icons/eva.min.js"></script>

        <!-- apexcharts -->
        <script src="../../../../resources/admin/assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- gridjs js -->
        <script src="../../../../resources/admin/assets/libs/gridjs/gridjs.umd.js"></script>

        <!-- datepicker js -->
        <script src="../../../../resources/admin/assets/libs/flatpickr/flatpickr.min.js"></script>

        <script src="../../../../resources/admin/assets/js/pages/admin_lodgingList.init.js"></script>

        <script src="../../../../resources/admin/assets/js/app.js"></script>

        <!-- Plugins js -->
        <script src="assets/libs/dropzone/min/dropzone.min.js"></script>


    </body>

</html>