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

        <!-- fullcalendar css -->
        <link href="../../resources/host/libs/fullcalendar/main.min.css" rel="stylesheet" type="text/css" />

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
                            <h4 class="page-title mb-0">호스트님, 환영합니다!</h4>
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
                                                <h6 class="mb-1">쿠폰 승인 완료</h6>
                                                <div>
                                                    <p class="mb-0">쿠폰승인이 완료되었습니다.</p>
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
                                                <h6 class="mb-1">쿠폰 거절</h6>
                                                <div>
                                                    <p class="mb-1">요청하신 쿠폰이 거절되었습니다.</p>
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
                                    <p class="mb-0 font-size-11 text-muted">host@gmail.com</p>
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

                            <li class="mm-active">
                                <a href="a_host_mainView.html">
                                    <i class="bx bx-home-alt icon nav-icon"></i>
                                    <span class="menu-item active" data-key="t-dashboard">Home</span>
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

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-receipt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-invoices">쿠폰관리</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="a_host_couponList.html" data-key="t-invoice-list">쿠폰 리스트</a></li>
                                    <li><a href="a_host_couponForm.html" data-key="t-invoice-list">쿠폰 등록</a></li>
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
            <!-- 컨텐츠 시시작 -->
            <!-- ============================================================== -->
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">

                            <div class="col-xl-12">
                                <div class="row">
                                    <div class="col-xl-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <div>
                                                    <div class="d-flex align-items-center">
                                                        <div class="avatar">
                                                            <div class="avatar-title rounded bg-soft-primary">
                                                                <i class="bx bx-check-shield font-size-24 mb-0 text-primary"></i>
                                                            </div>
                                                        </div>

                                                        <div class="flex-grow-1 ms-3">
                                                            <h6 class="mb-0 font-size-15">총 매출(월간)</h6>
                                                        </div>

                                                    </div>

                                                    <div>
                                                        <h4 class="mt-4 pt-1 mb-0 font-size-22">34,123원 <span class="text-success fw-medium font-size-13 align-middle"> <i class="mdi mdi-arrow-up"></i> 8.34% </span> </h4>
                                                        <div class="d-flex mt-1 align-items-end overflow-hidden">
                                                            <div class="flex-grow-1">
                                                                <p class="text-muted mb-0 text-truncate">월간 총 매출</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <div>
                                                    <div class="d-flex align-items-center">
                                                        <div class="avatar">
                                                            <div class="avatar-title rounded bg-soft-primary">
                                                                <i class="bx bx-cart-alt font-size-24 mb-0 text-primary"></i>
                                                            </div>
                                                        </div>

                                                        <div class="flex-grow-1 ms-3">
                                                            <h6 class="mb-0 font-size-15">총 수수료(월간)</h6>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <h4 class="mt-4 pt-1 mb-0 font-size-22">63,234원 <span class="text-danger fw-medium font-size-13 align-middle"> <i class="mdi mdi-arrow-down"></i> 3.68% </span> </h4>
                                                        <div class="d-flex mt-1 align-items-end overflow-hidden">
                                                            <div class="flex-grow-1">
                                                                <p class="text-muted mb-0 text-truncate">월간 총 수수료</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               
                                    <div class="col-xl-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <div>
                                                    <div class="d-flex align-items-center">
                                                        <div class="avatar">
                                                            <div class="avatar-title rounded bg-soft-primary">
                                                                <i class="bx bx-package font-size-24 mb-0 text-primary"></i>
                                                            </div>
                                                        </div>

                                                        <div class="flex-grow-1 ms-3">
                                                            <h6 class="mb-0 font-size-15">예약수(월간)</h6>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <h4 class="mt-4 pt-1 mb-0 font-size-22">425건 <span class="text-danger fw-medium font-size-13 align-middle"> <i class="mdi mdi-arrow-down"></i> 2.64% </span> </h4>
                                                        <div class="d-flex mt-1 align-items-end overflow-hidden">
                                                            <div class="flex-grow-1">
                                                                <p class="text-muted mb-0 text-truncate">월간 예약수</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

								</div>
                        </div>

                    </div>

                        <div class="row">
                            <div class="col-12">
                                <h4 class="mt-2 mb-4">실전을 위한 호스팅 팁</h4>
                                <div class="card-deck-wrapper">
                                    <div class="card-group">
                                        <div class="card mb-4">
                                            <img class="card-img-top img-fluid" src="../../resources/host/images/small/img-4.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h2 class="card-title" style="font-size: 20px;">숙소에 적합한 환불 정책 선택하기</h2>
                                                <p class="card-text">
                                                	<b>*유연 환불 정책 :</b> 게스트가 체크인 24시간 전까지 예약을 취소하면 전액 환불받을 수 있습니다.<br>
                                                	<b>*일반 환불 정책 :</b> 게스트가 체크인 5일 전까지 예약을 취소하면 전액 환불받을 수 있습니다. <br>
                                                	<b>*일반 환불 정책 :</b> 게스트가 체크인 14일 전, 예약 후 48시간까지 예약을 취소하면 전액 환불받을 수 있습니다. 
                                                </p>
                                            </div>
                                        </div>
                                        <div class="card mb-4">
                                            <img class="card-img-top img-fluid" src="../../resources/host/images/small/img-5.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title" style="font-size: 20px;">now travel이 호스트를 지원하는 방법</h4>
                                                <p class="card-text">
													<b><u>*호스트를 위한 손해배상</u></b> 가입 시 1,000,000원 이상의 호스트 손해보상이 포함되어 있어, 숙박 중 사용자가 호스트의 숙소나 물품을 파손하는 경우에
													피해를 보상받으실 수 있습니다. <br>
													<b>*</b>게스트는 예약에 앞서 성명, 생년월일, 전화번호, 이메일주소, 결제정보 등 <b><u>신원정보</u></b>를 now travel에 제공해야 합니다.
												</p>

                                            </div>
                                        </div>
                                        <div class="card mb-4">
                                            <img class="card-img-top img-fluid" src="../../resources/host/images/small/img-6.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title" style="font-size: 20px;">호스트가 직접 정하는 숙소 이용규칙</h4>
                                                <p class="card-text">
                                                	숙소 이용규칙을 통해 게스트에게 기대치를 명확히 전달함으로써 호스트와 게스트 모두에게 더 나은 경험을 제공할 수 있습니다. <br>
                                                	숙소 이용규칙에는 숙소에서 신발을 벗어야 하는지, 쓰레기 분리수거일에 쓰레기를 직접 비워야 하는지 등과 같은 자세한 내용을 담을 수도 있고, 
                                                	단순히 게스트에게 가족처럼 편하게 지내라는 메시지를 담을 수 있습니다. 
                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->
                        </div>        
                        <!-- end row -->
                        
				     <section class="main-block featured-wrap">
				        <div class="container-fluid"  style="margin: 0; padding: 0;">
				            <div class="row justify-content-center">
				                <div class="col-md-12">
				                    <div class="titile-block" style="position: relative;">
				                        <img src="../../resources/host/images/hostHome.jpg" width="100%">
				                        <span style="color:white; font-size:70px; font-weight:600; position: absolute; right:60%; top: 20%;">호스팅에 관해<br>궁금하신 점이<br>있나요?</span>
				                        <a href="searchFlex.html"><button type="button" class="btn btn btn-light btn-lg" style="position: absolute; right:73%; top: 80%;">관리자에게 문의하세요</button></a>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </section>                       


                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->
				<br>
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
        
        <!-- plugin js -->
        <script src="../../resources/host/libs/fullcalendar/main.min.js"></script>

        <!-- Calendar init -->
        <script src="../../resources/host/js/pages/calendar.init.js"></script>

        <script src="../../resources/host/js/app.js"></script>

    </body>

</html>