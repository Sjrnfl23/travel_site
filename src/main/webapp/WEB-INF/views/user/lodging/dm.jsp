<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
	<!--============================= 공통부분 헤드 시작 =============================-->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Surjith S M">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Favicons -->
    <link rel="shortcut icon" href="#">
    <!-- Page Title -->
    <link rel="shortcut icon" href="/resources/user/images/nowTravel_logo_browser.jpg" type="image/x-icon" />
    <title id="ctl00_headerTitle">여행을 떠나요. now travel!</title>    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/user/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="/resources/user/css/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/resources/user/css/font-awesome.min.css">
    <!-- Hover Effects -->
    <link href="/resources/user/css/set1.css" rel="stylesheet">
    <!-- Main CSS -->
    <link rel="stylesheet" href="/resources/user/css/style.css">
    
        <!-- App favicon -->
        <link rel="shortcut icon" href="../../resources/host/images/favicon.ico">

        <!-- fullcalendar css -->
        <link href="../../resources/host/libs/fullcalendar/main.min.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap Css -->
        <link href="../../resources/host/css/bootstrap2.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../resources/host/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../resources/host/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
    
</head>

<body style="backgroud-color: white;">
    <!--============================= HEADER =============================-->
    <%@ include file="../include/header.jsp" %>
    <!-- Log In & Signup -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="login" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">LOGIN</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="sign-up" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">SIGN UP</a>
                    </li>
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="login">
                        <div class="modal-header">
                            <h5 class="modal-title"><img src="/resources/user/images/logo.png" alt="logo"></h5>
                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span class="ti-close"></span>
       						 </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control add-listing_form" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control add-listing_form" placeholder="Password">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-primary">LOG IN</button>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="sign-up">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel"><img src="/resources/user/images/logo.png" alt="logo"></h5>
                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span class="ti-close"></span>
       						 </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control add-listing_form" id="name" placeholder="Your name">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control add-listing_form" id="email" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control add-listing_form" id="username" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control add-listing_form" id="password" placeholder="Password">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-primary">CREATE ACCOUNT</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Log In & Signup -->
    <!--//END HEADER -->
    
    <!--============================= MAIN TITLE =============================-->
             
       <section class="main-block" >      
             <div class="container-fluid">
                <div class="row justify-content-center">
                   <!--  <div class="container-fluid"> -->

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
<!--                                     <ul class="nav nav-pills nav-justified bg-light m-3 rounded">
                                        <li class="nav-item">
                                            <a href="#chat" data-bs-toggle="tab" aria-expanded="true" class="nav-link active">
                                                <i class="bx bx-chat font-size-20 d-sm-none"></i>
                                                <span class="d-none d-sm-block">사용자 목록</span>
                                            </a>
                                        </li>
                                    </ul> -->
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
<!--                                                                 <form class="px-2">
                                                                    <div>
                                                                        <input type="text" class="form-control border bg-soft-light" placeholder="Search...">
                                                                    </div>
                                                                </form> -->
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

            </div>
            <!-- end main content-->

</section>
        <!-- END layout-wrapper -->
            
    <!--============================= FOOTER =============================-->
    <%@ include file="../include/footer.jsp" %>
    <!--//END FOOTER -->


    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/resources/user/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/user/js/popper.min.js"></script>
    <script src="/resources/user/js/bootstrap.min.js"></script>

        <!-- JAVASCRIPT -->
        <script src="../../resources/host/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../resources/host/libs/metismenujs/metismenujs.min.js"></script>
        <script src="../../resources/host/libs/simplebar/simplebar.min.js"></script>
        <script src="../../resources/host/libs/eva-icons/eva.min.js"></script>

        <script src="../../resources/host/js/app.js"></script>
</body>

</html>