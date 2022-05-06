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
                            <h4 class="page-title mb-0">문의 관리</h4>
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

                            <li>
                                <a href="a_host_mainView.html">
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

                            <li class="mm-active">
                                <a href="a_host_dm.html">
                                    <i class="bx bx-user-circle icon nav-icon"></i>
                                    <span class="menu-item active" data-key="t">문의관리</span>
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
            <!-- 컨텐츠 시작 -->
            <!-- ============================================================== -->
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">

                        <div class="d-lg-flex">
                            <div class="chat-leftsidebar card">
                                <div class="card-body">
                                    
                                   <div class="text-center bg-light rounded px-4 py-3">
                                            <div class="text-end">
                                                <div class="dropdown chat-noti-dropdown">
                                                    <button class="btn dropdown-toggle p-0" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="bx bx-cog"></i>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a class="dropdown-item" href="#">Profile</a>
                                                        <a class="dropdown-item" href="#">Edit</a>
                                                        <a class="dropdown-item" href="#">Add Contact</a>
                                                        <a class="dropdown-item" href="#">Setting</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="chat-user-status">
                                                <img src="../../resources/host/images/users/avatar-3.jpg" class="avatar-md rounded-circle" alt="">
                                                <div class="">
                                                    <div class="status"></div>
                                                </div>
                                            </div>
                                            <h5 class="font-size-16 mb-1 mt-3"><a href="#" class="text-dark">호스트</a></h5>
                                            <p class="text-muted mb-0">답변가능</p>
                                   </div>
                                </div>

                                <div class="p-3">
                                    <div class="search-box position-relative">
                                        <input type="text" class="form-control rounded border" placeholder="Search...">
                                        <i class="search-icon" data-eva="search-outline" data-eva-height="26" data-eva-width="26"></i>
                                    </div>
                                </div>

                                <div class="chat-leftsidebar-nav">
                                    <ul class="nav nav-pills nav-justified bg-light m-3 rounded">
                                        <li class="nav-item">
                                            <a href="#chat" data-bs-toggle="tab" aria-expanded="true" class="nav-link active">
                                                <i class="bx bx-chat font-size-20 d-sm-none"></i>
                                                <span class="d-none d-sm-block">사용자 목록</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane show active" id="chat">
                                            <div class="chat-message-list" data-simplebar>
                                                <div class="pt-3">
                                                    <div class="px-3">
                                                        <h5 class="font-size-14 mb-3">사용자</h5>
                                                    </div>
                                                    <ul class="list-unstyled chat-list p-3">
                                                        <li class="active">
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 user-img online align-self-center me-3">
                                                                        <img src="../../resources/host/images/users/avatar-6.jpg" class="rounded-circle avatar-sm" alt="">
                                                                        <span class="user-status"></span>
                                                                    </div>
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-0">권순형</h5>
                                                                    </div>
                                                                    <div class="flex-shrink-0">
                                                                        <span class="badge bg-danger rounded-pill">1</span>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 user-img online align-self-center me-3">
                                                                        <div class="avatar-sm align-self-center">
                                                                            <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                                S
                                                                            </span>
                                                                        </div>
                                                                        <span class="user-status"></span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-0">윤이나</h5>
                                                                    </div>
                                                                    <div class="flex-shrink-0">
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 user-img away align-self-center me-3">
                                                                        <img src="../../resources/host/images/users/avatar-3.jpg" class="rounded-circle avatar-sm" alt="">
                                                                        <span class="user-status"></span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-0">이상원</h5>
                                                                    </div>
                                                                    <div class="flex-shrink-0">
                                                                        <span class="badge bg-warning rounded-pill">4</span>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 user-img align-self-center me-3">
                                                                        <img src="../../resources/host/images/users/avatar-4.jpg" class="rounded-circle avatar-sm" alt="">
                                                                        <span class="user-status"></span>
                                                                    </div>
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-0">김도현</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 user-img online align-self-center me-3">
                                                                        <div class="avatar-sm align-self-center">
                                                                            <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                                J
                                                                            </span>
                                                                        </div>
                                                                        <span class="user-status"></span>
                                                                    </div>
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-0">장원영</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
        
                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 user-img align-self-center me-3">
                                                                        <img src="../../resources/host/images/users/avatar-5.jpg" class="rounded-circle avatar-sm" alt="">
                                                                        <span class="user-status"></span>
                                                                    </div>
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-0">김나리</h5>
                                                                    </div>
                                                                    <div class="flex-shrink-0">
                                                                        <span class="badge bg-success rounded-pill">23</span>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    
                                                                    <div class="flex-shrink-0 user-img align-self-center me-3">
                                                                        <img src="../../resources/host/images/users/avatar-6.jpg" class="rounded-circle avatar-sm" alt="">
                                                                        <span class="user-status"></span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-0">정미림</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 user-img away align-self-center me-3">
                                                                        <img src="../../resources/host/images/users/avatar-3.jpg" class="rounded-circle avatar-sm" alt="">
                                                                        <span class="user-status"></span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-0">윤수빈</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    
                                                                    <div class="flex-shrink-0 user-img align-self-center me-3">
                                                                        <img src="../../resources/host/images/users/avatar-4.jpg" class="rounded-circle avatar-sm" alt="">
                                                                        <span class="user-status"></span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-0">차경석</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane" id="groups">
                                            <div class="chat-message-list" data-simplebar>
                                                <div class="pt-3">
                                                    <div class="px-3">
                                                        <h5 class="font-size-14 mb-3">Groups</h5>
                                                    </div>
                                                    <ul class="list-unstyled chat-list">
                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            G
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">General</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            R
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">Reporting</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            M
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">Meeting</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            A
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">Project A</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            B
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">Project B</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane" id="contacts">
                                            <div class="chat-message-list" data-simplebar>
                                                <div class="pt-3">
                                                    <div class="px-3">
                                                        <h5 class="font-size-14 mb-3">Contacts</h5>
                                                    </div>

                                                    <div>
                                                        <div>
                                                            <div class="px-3 contact-list">A</div>

                                                            <ul class="list-unstyled chat-list">
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Adam Miller</h5>
                                                                    </a>
                                                                </li>
            
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Alfonso Fisher</h5>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>

                                                        <div class="mt-4">
                                                            <div class="px-3 contact-list">B</div>

                                                            <ul class="list-unstyled chat-list">
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Bonnie Harney</h5>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>

                                                        <div class="mt-4">
                                                            <div class="px-3 contact-list">C</div>

                                                            <ul class="list-unstyled chat-list">
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Charles Brown</h5>
                                                                    </a>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Carmella Jones</h5>
                                                                    </a>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Carrie Williams</h5>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>

                                                        <div class="mt-4">
                                                            <div class="px-3 contact-list">D</div>

                                                            <ul class="list-unstyled chat-list">
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Dolores Minter</h5>
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
                            <!-- end chat-leftsidebar -->

                            <div class="w-100 user-chat mt-4 mt-sm-0 ms-lg-3">
                                <div class="card">
                                    <div class="p-3 px-lg-4 border-bottom">
                                        <div class="row">
                                            <div class="col-xl-4 col-7">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 avatar me-3 d-sm-block d-none">
                                                        <img src="../../resources/host/images/users/avatar-6.jpg" alt="" class="img-fluid d-block rounded-circle">
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <h5 class="font-size-16 mb-1 text-truncate"><a href="#" class="text-dark">권순형</a></h5>
                                                        <p class="text-muted text-truncate mb-0">접속중</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-8 col-5">
                                                <ul class="list-inline user-chat-nav text-end mb-0">
                                                    <li class="list-inline-item">
                                                        <div class="dropdown">
                                                            <button class="btn nav-btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="bx bx-search"></i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end dropdown-menu-md p-2">
                                                                <form class="px-2">
                                                                    <div>
                                                                        <input type="text" class="form-control border bg-soft-light" placeholder="Search...">
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </li>
    
                                                    <li class="list-inline-item">
                                                        <div class="dropdown">
                                                            <button class="btn nav-btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="bx bx-dots-horizontal-rounded"></i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <a class="dropdown-item" href="#">Profile</a>
                                                                <a class="dropdown-item" href="#">Archive</a>
                                                                <a class="dropdown-item" href="#">Muted</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>                                                                                                                                                                                                                                                                                        
                                            </div>
                                        </div>
                                    </div>

                                    <div class="chat-conversation p-3" data-simplebar>
                                        <ul class="list-unstyled mb-0">
                                            <li class="chat-day-title"> 
                                                <span class="title">Today</span>
                                            </li>
                                            <li>
                                                <div class="conversation-list">
                                                    <div class="d-flex">
                                                        <img src="../../resources/host/images/users/avatar-6.jpg" class="rounded-circle avatar" alt="">
                                                        <div class="flex-1">
                                                            <div class="ctext-wrap">
                                                                <div class="ctext-wrap-content">
                                                                    <div class="conversation-name"><span class="time">10:00</span></div>
                                                                    <p class="mb-0">안녕하세요! <br>
                                                                        숙소 예약하려는데 문의사항이 있습니다.</p>
                                                                    
                                                                </div>
                                                                <div class="dropdown align-self-start">
                                                                    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        <i class="bx bx-dots-vertical-rounded"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu">
                                                                        <a class="dropdown-item" href="#">Copy</a>
                                                                        <a class="dropdown-item" href="#">Save</a>
                                                                        <a class="dropdown-item" href="#">Forward</a>
                                                                        <a class="dropdown-item" href="#">Delete</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <li class="right">
                                                <div class="conversation-list">
                                                    <div class="d-flex">
                                                        <div class="flex-1">
                                                            <div class="ctext-wrap">
                                                                <div class="ctext-wrap-content">
                                                                    <div class="conversation-name"><span class="time">10:02</span></div>
                                                                    <p class="mb-0 text-start">
                                                                    	안녕하세요, 제주하르방입니다.
                                                                    	<br>
                                                                    	어떤 문의가 있으신가요?
                                                                    </p>
                                                                   
                                                                </div>
                                                                <div class="dropdown align-self-start">
                                                                    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        <i class="bx bx-dots-vertical-rounded"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu">
                                                                        <a class="dropdown-item" href="#">Copy</a>
                                                                        <a class="dropdown-item" href="#">Save</a>
                                                                        <a class="dropdown-item" href="#">Forward</a>
                                                                        <a class="dropdown-item" href="#">Delete</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <img src="../../resources/host/images/users/avatar-3.jpg" class="rounded-circle avatar" alt="">
                                                    </div>
                                                    
                                                </div>
                                                
                                            </li>

                                            <li>
                                                <div class="conversation-list">
                                                    <div class="d-flex">
                                                        <img src="../../resources/host/images/users/avatar-6.jpg" class="rounded-circle avatar" alt="">
                                                        <div class="flex-1">
                                                            <div class="ctext-wrap">
                                                                <div class="ctext-wrap-content">
                                                                    <div class="conversation-name"><span class="time">10:04</span></div>
                                                                    <p class="mb-0">
                                                                        바다가 얼마나 가까운지 모르겠어서요. <br>
                                                                        도보로 가능한 거리인가요? 근처에 편의점은 있나요?
                                                                    </p>
                                                                </div>
                                                                <div class="dropdown align-self-start">
                                                                    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        <i class="bx bx-dots-vertical-rounded"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu">
                                                                        <a class="dropdown-item" href="#">Copy</a>
                                                                        <a class="dropdown-item" href="#">Save</a>
                                                                        <a class="dropdown-item" href="#">Forward</a>
                                                                        <a class="dropdown-item" href="#">Delete</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                
                                            </li>

                                            <li class="right">
                                                <div class="conversation-list">
                                                    <div class="d-flex">
                                                        <div class="flex-1">
                                                            <div class="ctext-wrap">
                                                                <div class="ctext-wrap-content">
                                                                    <div class="conversation-name"><span class="time">10:08</span></div>
                                                                    <p class="mb-0 text-start">
                                                                        그럼요~ 성인 걸음으로 10분정도 걸어가시면 해수욕장이 있습니다. <br>
                                                                        편의점은 저희 건물 바로 앞 1층에 운영중인데, 밤 11시면 문을 닫아요.
                                                                    </p>

                                                                    <p class="mb-0 text-start mt-2">
                                                                        img-1.jpg & img-2.jpg images for a New Projects
                                                                    </p>

                                                                    <ul class="list-inline message-img mt-2 mb-0">
                                                                        <li class="list-inline-item message-img-list">
                                                                            <a class="d-inline-block" href="">
                                                                                <img src="../../resources/host/images/small/img-1.jpg" alt="" class="rounded img-thumbnail">
                                                                            </a>                                                                  
                                                                        </li>
                
                                                                        <li class="list-inline-item message-img-list">
                                                                            <a class="d-inline-block" href="">
                                                                                <img src="../../resources/host/images/small/img-2.jpg" alt="" class="rounded img-thumbnail">
                                                                            </a>                                                                 
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                
                                                                <div class="dropdown align-self-start">
                                                                    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        <i class="bx bx-dots-vertical-rounded"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu">
                                                                        <a class="dropdown-item" href="#">Copy</a>
                                                                        <a class="dropdown-item" href="#">Save</a>
                                                                        <a class="dropdown-item" href="#">Forward</a>
                                                                        <a class="dropdown-item" href="#">Delete</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                           
                                                        </div>
                                                        <img src="../../resources/host/images/users/avatar-3.jpg" class="rounded-circle avatar" alt="">
                                                    </div>
                                                </div>
                                            </li>

                                            <li>
                                                <div class="conversation-list">
                                                    <div class="d-flex">
                                                        <img src="../../resources/host/images/users/avatar-6.jpg" class="rounded-circle avatar" alt="">
                                                        <div class="flex-1">
                                                            <div class="ctext-wrap">
                                                                <div class="ctext-wrap-content">
                                                                    <div class="conversation-name"><span class="time">10:06</span></div>
                                                                    <p class="mb-0">
                                                                       아~ 감사합니다! 내일로 예약할건데 잘 부탁드립니다~~
                                                                    </p>
                                                                </div>
                                                                <div class="dropdown align-self-start">
                                                                    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        <i class="bx bx-dots-vertical-rounded"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu">
                                                                        <a class="dropdown-item" href="#">Copy</a>
                                                                        <a class="dropdown-item" href="#">Save</a>
                                                                        <a class="dropdown-item" href="#">Forward</a>
                                                                        <a class="dropdown-item" href="#">Delete</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            

                                            <li class="right">
                                                <div class="conversation-list">
                                                    <div class="d-flex">
                                                        <div class="flex-1">
                                                            <div class="ctext-wrap">
                                                                <div class="ctext-wrap-content">
                                                                    <div class="conversation-name"><span class="time">10:08</span></div>
                                                                    <p class="mb-0 text-start">
                                                                        네, 예약하시고 들어오실 때 한 번 더 연락 부탁드려요.<br>
                                                                        좋은 하루 되세요^_^
                                                                    </p>
                                                                </div>
                                                                
                                                                <div class="dropdown align-self-start">
                                                                    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        <i class="bx bx-dots-vertical-rounded"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu">
                                                                        <a class="dropdown-item" href="#">Copy</a>
                                                                        <a class="dropdown-item" href="#">Save</a>
                                                                        <a class="dropdown-item" href="#">Forward</a>
                                                                        <a class="dropdown-item" href="#">Delete</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                           
                                                        </div>
                                                        <img src="../../resources/host/images/users/avatar-3.jpg" class="rounded-circle avatar" alt="">
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="p-3 border-top">
                                        <div class="row">
                                            <div class="col">
                                                <div class="position-relative">
                                                    <input type="text" class="form-control border bg-soft-light" placeholder="메시지를 입력해주세요....">
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <button type="submit" class="btn btn-primary chat-send w-md waves-effect waves-light"><span class="d-none d-sm-inline-block me-2">전송</span> <i class="mdi mdi-send float-end"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end user chat -->
                        </div>
                        <!-- End d-lg-flex  -->

                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © webadmin.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Crafted with <i class="mdi mdi-heart text-danger"></i> by <a href="https://Themesdesign.com/" target="_blank" class="text-reset">Themesdesign</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->





        <!-- JAVASCRIPT -->
        <script src="../../resources/host/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../resources/host/libs/metismenujs/metismenujs.min.js"></script>
        <script src="../../resources/host/libs/simplebar/simplebar.min.js"></script>
        <script src="../../resources/host/libs/eva-icons/eva.min.js"></script>

        <script src="../../resources/host/js/app.js"></script>

    </body>

</html>