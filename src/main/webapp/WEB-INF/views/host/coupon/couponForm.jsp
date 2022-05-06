<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">

    <head>

        <meta charset="utf-8" />
        <title>now travel 호스트페이지</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="../../resources/host/images/favicon.ico">

        <link rel="stylesheet" href="../../resources/host/libs/gridjs/theme/mermaid.min.css">

        <!-- datepicker css -->
        <link rel="stylesheet" href="../../resources/host/libs/flatpickr/flatpickr.min.css">

        <!-- Bootstrap Css -->
        <link href="../../resources/host/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../resources/host/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../resources/host/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />


    </head>

    
    <body>

    <!-- <body data-layout="horizontal"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">

            
            <header id="page-topbar" class="isvertical-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box">
                            <a href="a_host_mainView.html" class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="../../resources/host/images/logo-dark-sm.png" alt="" height="26">
                                </span>
                                <span class="logo-lg">
                                    <img src="../../resources/host/images/logo-dark-sm.png" alt="" height="26">
                                </span>
                            </a>

                            <a href="a_host_mainView.html" class="logo logo-light">
                                <span class="logo-lg">
                                    <img src="../../resources/host/images/logo-light.png" alt="" height="30">
                                </span>
                                <span class="logo-sm">
                                    <img src="../../resources/host/images/logo-light-sm.png" alt="" height="26">
                                </span>
                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 font-size-24 header-item waves-effect vertical-menu-btn">
                            <i class="bx bx-menu align-middle"></i>
                        </button>

                        <!-- start page title -->
                        <div class="page-title-box align-self-center d-none d-md-block">
                            <h4 class="page-title mb-0">쿠폰 등록</h4>
                        </div>
                        <!-- end page title -->

                    </div>

                    <div class="d-flex">

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-search icon-sm align-middle"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0">
                                <form class="p-2">
                                    <div class="search-box">
                                        <div class="position-relative">
                                            <input type="text" class="form-control rounded bg-light border-0" placeholder="Search...">
                                            <i class="bx bx-search search-icon"></i>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon" id="page-header-notifications-dropdown-v"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-bell icon-sm align-middle"></i>
                                <span class="noti-dot bg-danger rounded-pill">2</span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-xl dropdown-menu-end p-0"
                                aria-labelledby="page-header-notifications-dropdown-v">
                                <div class="p-3">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <h5 class="m-0 font-size-15"> 알림 </h5>
                                        </div>
                                        <div class="col-auto">
                                            <a href="#!" class="small fw-semibold text-decoration-underline"> 모두 읽음으로 표시</a>
                                        </div>
                                    </div>
                                </div>
                                <div data-simplebar style="max-height: 250px;">

                                    <a href="#!" class="text-reset notification-item">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 avatar-sm me-3">
                                                <span class="avatar-title bg-success rounded-circle font-size-18">
                                                    <i class="bx bx-badge-check"></i>
                                                </span>
                                            </div>
                                            <div class="flex-grow-1">
                                                <p class="text-muted font-size-13 mb-0 float-end">2022-05-02</p>
                                                <h6 class="mb-1">쿠폰 승인 요청</h6>
                                                <div>
                                                    <p class="mb-0">쿠폰승인 요청이 들어왔습니다. 쿠폰승인 메뉴를 확인해주세요.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <a href="#!" class="text-reset notification-item">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <img src="../../resources/host/images/users/avatar-6.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                            </div>
                                            <div class="flex-grow-1">
                                                <p class="text-muted font-size-13 mb-0 float-end">2022-05-02</p>
                                                <h6 class="mb-1">신규 관리자 등록</h6>
                                                <div>
                                                    <p class="mb-1">새로운 관리자가 등록되었습니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="p-2 border-top d-grid">
                                    <a class="btn btn-sm btn-link font-size-14 btn-block text-center" href="javascript:void(0)">
                                        <i class="uil-arrow-circle-right me-1"></i> <span>더 보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
            
                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item user text-start d-flex align-items-center" id="page-header-user-dropdown-v"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="rounded-circle header-profile-user" src="../../resources/host/images/users/avatar-3.jpg"
                                alt="Header Avatar">
                                <span class="d-none d-xl-inline-block ms-2 fw-medium font-size-15">호스트</span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end pt-0">
                                <div class="p-3 border-bottom">
                                    <h6 class="mb-0">관리자</h6>
                                    <p class="mb-0 font-size-11 text-muted">admin@nowtravel.com</p>
                                </div>
                                <a class="dropdown-item" href="a_host_memberView.html"><i class="mdi mdi-account-circle text-muted font-size-16 align-middle me-2"></i> <span class="align-middle">회원정보</span></a>
<!--                                 <a class="dropdown-item" href="apps-chat.html"><i class="mdi mdi-message-text-outline text-muted font-size-16 align-middle me-2"></i> <span class="align-middle">Messages</span></a> -->
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="auth-logout.html"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-2"></i> <span class="align-middle">로그아웃</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- ========== Left Sidebar Start ========== -->
            <div class="vertical-menu">

                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a href="a_host_mainView.html" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="../../resources/host/images/logo-dark-sm.png" alt="" height="26">
                        </span>
                        <span class="logo-lg">
                            <img src="../../resources/host/images/nowtravel_logo_180.jpg" alt="">
                        </span>
                    </a>

                    <a href="a_host_mainView.html" class="logo logo-light">
                        <span class="logo-lg">
                            <img src="../../resources/host/images/logo-light-sm.png" alt="" height="26">
                        </span>
                        <span class="logo-sm">
                            <img src="../../resources/host/images/nowtravel_logo_180.jpg" alt="" height="26">
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

                            <li>
                                <a href="apps-calendar.html">
                                    <i class="bx bx-home-alt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-dashboard">Home</span>
                                </a>
                            </li>


                            <li class="menu-title" data-key="t-applications">MANAGEMENT</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-store icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-ecommerce">숙소관리</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="a_host_lodgingList.html" data-key="t-products">숙소 리스트</a></li>
                                    <li><a href="a_host_lodgingForm.html" data-key="t-products">숙소 등록</a></li>
                                </ul>
                            </li>

                            <li class="mm-active">
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-receipt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-invoices">쿠폰관리</span>
                                </a>
                                <ul class="sub-menu mm-collapse mm-show" aria-expanded="false">
                                    <li>
                                    	<a href="a_host_couponList.html" data-key="t-invoice-list">쿠폰 리스트</a>
                                    </li>
                                    <li class="mm-active"><a href="a_host_couponForm.html" data-key="t-invoice-list"  class="active">쿠폰 등록</a></li>
                                    <li><a href="a_host_couponListPermit.html" data-key="t-invoice-detail">쿠폰 승인</a></li>
                                    <li><a href="a_host_couponListBak.html" data-key="t-invoice-detail">쿠폰 내역</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="a_host_reservationList.html">
                                    <i class="bx bx-calendar-event icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-calendar">예약관리</span>
                                </a>
                            </li>

                            <li class="menu-title" data-key="t-applications">MESSENGER</li>

                            <li>
                                <a href="a_host_dm.html">
                                    <i class="bx bx-user-circle icon nav-icon"></i>
                                    <span class="menu-item" data-key="t">문의관리</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>
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
                                            <img src="../../resources/host/images/pattern-bg.jpg"
                                                class="profile-img profile-foreground-img rounded-top" style="height: 120px;"
                                                alt="">

                                            </div>
                                        </div>
                                        <!-- end user-profile-img -->


                                        <div class="p-4 pt-0">
                                            
                                            <div class="mt-n5 position-relative text-center border-bottom pb-3">
                                                <br><br><br>
                                              
                                                <div class="mt-3">
                                                   <h5 class="mb-1">봄맞이 쿠폰</h5>
                                                    <p class="text-muted mb-0">
                                                    </p>
                                                </div>

                                            </div>

                                            <div class="table-responsive mt-3 border-bottom pb-3">
                                                <table class="table align-middle table-sm table-nowrap table-borderless table-centered mb-0">
                                                    <tbody>
                                                        <tr>
                                                            <th class="fw-bold" style="width: 130px;">
                                                               호스트 :</th>
                                                            <td class="text-muted">
                                                            	travel_jeju@jeju.com
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                숙소이름 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                쿠폰이름 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                금액 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">시작일 :</th>
                                                            <td class="text-muted">
                                                            	<input type="date" class="form-control" placeholder="">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">종료일 :</th>
                                                            <td class="text-muted">
                                                            	<input type="date" class="form-control" placeholder="">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                    </tbody><!-- end tbody -->
                                                </table>
                                            </div>

                                            

                                            <div class="p-3 mt-3">
                                                <div class="row text-center">
                                                    <div class="col-12">
                                                        <div class="p-1">
                                                            <h5 class="mb-1" style="text-align: left;">설명</h5>
                                                            <p class="text-muted mb-0" style="text-align: left;">
                                                            	<textarea class="form-control" placeholder=""></textarea>
                                                            </p>                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="pt-2 text-center border-bottom pb-4">
                                                <a href="" class=""><i class="bx ms-1 align-middle"></i></a>
                                            </div>

                                            <div class="mt-3 pt-1 text-center">
                                                <ul class="list-inline mb-0">
                                                    <li class="list-inline-item">
                                                       <a href="a_host_couponView.html">
                                                     		<button type="button" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order">등록</button>
                                                       </a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                    	<a href="a_host_couponList.html">
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
				</div>
        </div>
            <!-- end main content-->

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
        <script src="../../resources/host/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../resources/host/libs/metismenujs/metismenujs.min.js"></script>
        <script src="../../resources/host/libs/simplebar/simplebar.min.js"></script>
        <script src="../../resources/host/libs/eva-icons/eva.min.js"></script>

        <!-- apexcharts -->
        <script src="../../resources/host/libs/apexcharts/apexcharts.min.js"></script>

        <!-- gridjs js -->
        <script src="../../resources/host/libs/gridjs/gridjs.umd.js"></script>

        <!-- datepicker js -->
        <script src="../../resources/host/libs/flatpickr/flatpickr.min.js"></script>

        <script src="../../resources/host/js/pages/a_host_couponList.init.js"></script>

        <script src="../../resources/host/js/app.js"></script>



    </body>

</html>