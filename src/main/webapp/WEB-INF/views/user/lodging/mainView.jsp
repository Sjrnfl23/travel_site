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
</head>

<body>
    <!--============================= HEADER =============================-->
    <div class="nav-menu sticky-top">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="mainView.html"><img src="/resources/user/images/nowTravel_logo.jpg" alt="logo"></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="ti-menu"></span>
              </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="searchFlex.html">유연한검색</a>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    						회원정보
                    						<span class="ti-angle-down"></span>
                  						</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="reservation.html">예약내역</a>
                                            <a class="dropdown-item" href="mapList.html">여행지도</a>
                                            <a class="dropdown-item" href="memberView.html">회원정보 수정</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="loginForm.html" data-toggle="modal" data-target="#exampleModal">Login</a>
                                    </li>
                                    <li><a href="../host/dist/a_host_loginForm.html" class="btn btn-outline-danger top-btn"><span class="ti-plus"></span>호스트 되기</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
    <section class="hero-wrap home-bg d-flex align-items-center" style="background-image : url('/resources/user/images/bgbg.jpg'); background-size: 100%; background-blend-mode: darken;">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="hero-title">
                    <h1>What’s your plan today?</h1>
                    <h3>당신의 여행지를 검색해보세요. </h3>
                </div>
            </div>
            <form>
            <div class="row">
                <div class="col-md-12">
                    
                        <div class="search-box">
                            <div class="row">
                                <div class="col-md-3 search-box_line">
                                    <div class="search-box1">
                                        <div class="search-box-title">
                                            <label>위치</label><br>
                                            <input type="text" name="#" class="search-form" placeholder="제주도">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 search-box_line">
                                    <div class="search-box1">
                                        <div class="search-box-title">
                                            <label>체크인</label><br>
                                            <input type="text" name="#" class="search-form" placeholder="2022-07-26">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 search-box_line">
                                    <div class="search-box1">
                                        <div class="search-box-title">
                                            <label>체크아웃</label><br>
                                            <input type="text" name="#" class="search-form" placeholder="2022-07-30">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="search-box1">
                                        <div class="search-box-title">
                                            <label>인원</label><br>
                                            <input type="text" name="#" class="search-form" placeholder="성인 1명">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-search">
                            <a href="#" class="btn btn-simple" style="width:100px; padding-left:0; padding-right: 0;">검색</a>
                        </div>
                    
                    <p class="search-bottom-title">By using this website, you are agreeing to our <a href="#"> terms and conditions</a></p>
                </div>
            </div>
            </form>
        </div>
    </section>
    <!--//END MAIN TITLE -->

    <!--============================= FEATURED LISTING =============================-->
    <section class="main-block featured-wrap">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block" style="position: relative;">
                        <img src="/resources/user/images/flexSearch.jpg" width="100%">
                        <span style="color:white; font-size:28px; font-weight:600; position: absolute; right:30%; top: 70%;">호기심을 자극하는 숙소로 떠나보세요</span>
                        <a href="searchFlex.html"><button type="button" class="btn btn btn-danger btn-lg" style="position: absolute; right:43%; top: 80%;">유연한검색</button></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--============================= DETAILED ITEM  =============================-->
    <section class="main-block gray">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block">
                        <h2>설레는 여행을 위한 아이디어</h2>
                    </div>
                </div>
            </div>        
        
            <div class="row">
                <div class="col-md-6">
                    <div class="grid">
                       <figure class="effect-chico">
                            <img src="/resources/user/images/jeju.jpg" alt="#" class="img-fluid">
                            <figcaption>
                                <div class="effect-caption-wrap">
                                   <a href="search.html" style="color: white;"><h1><b>제주</b></h1></a>
                                    <p>1500+ Listings</p>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="row detailed-item-mr">
                        <div class="col-md-12">
                            <div class="grid">
                                <figure class="effect-chico">
                                    <img src="/resources/user/images/seoul.jpg" alt="#" class="img-fluid">
                                    <figcaption>
                                        <div class="effect-caption-wrap">
                                            <a href="search.html" style="color: white;"><h1><b>서울</b></h1></a>
                                            <p>300+ Listings</p>
                                        </div>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-bottom: 0;">
                            <div class="grid" >
                                <figure class="effect-chico">
                                    <img src="/resources/user/images/busan.jpg" alt="#" class="img-fluid">
                                    <div class="effect-caption-wrap">
                                        <a href="search.html" style="color: white;"><h1 style="color: white;"><b>부산</b></h1></a>
                                        <p>800+ Listings</p>
                                    </div>
                                </figure>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="grid">
                                <figure class="effect-chico">
                                    <img src="/resources/user/images/jinhae.jpg" alt="#" class="img-fluid">
                                    <div class="effect-caption-wrap">
                                        <a href="search.html" style="color: white;"><h1 style="color: white;"><b>진해</b></h1></a>
                                        <p>210+ Listings</p>
                                    </div>
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END DETAILED ITEM -->
    <!--============================= HOW IT WORKS  =============================-->
    <section class="main-block howit-work-wrap">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block">
                        <h2>여행은 어떻게 이루어지나요?</h2>
                        <p>간단합니다. 아래 과정으로 여행을 시작해보세요!</p>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="howit-bg"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="howit-icon-wrap">
                        <div class="howit-img-block">
                            <svg xmlns="http://www.w3.org/2000/svg" class="howit-svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 470 470" enable-background="new 0 0 470 470" width="512px" height="512px"><g><g>
    <path d="m462.5,22.5h-455c-4.143,0-7.5,3.358-7.5,7.5v410c0,4.142 3.357,7.5 7.5,7.5h455c4.143,0 7.5-3.358 7.5-7.5v-80c0-4.142-3.357-7.5-7.5-7.5s-7.5,3.358-7.5,7.5v72.5h-440v-335h440v232.5c0,4.142 3.357,7.5 7.5,7.5s7.5-3.358 7.5-7.5v-300c0-4.142-3.357-7.5-7.5-7.5zm-447.5,15h277.5v45h-277.5v-45zm292.5,45v-45h147.5v45h-147.5z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
    <path d="m381.5,52c-4.411,0-8,3.589-8,8s3.589,8 8,8 8-3.589 8-8-3.589-8-8-8z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
    <path d="m340.5,52c-4.411,0-8,3.589-8,8s3.589,8 8,8 8-3.589 8-8-3.589-8-8-8z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
    <path d="m422.5,52c-4.411,0-8,3.589-8,8s3.589,8 8,8 8-3.589 8-8-3.589-8-8-8z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
    <path d="m269.745,328.458c0,1.989 0.79,3.897 2.196,5.303l58.543,58.542c1.407,1.407 3.314,2.197 5.304,2.197s3.896-0.79 5.304-2.197l21.213-21.213c2.929-2.929 2.929-7.678 0-10.606l-58.542-58.542c-2.929-2.929-7.677-2.929-10.607,0l-5.303,5.303-10.831-10.831c32.824-38.264 31.15-96.129-5.079-132.358-18.416-18.416-42.9-28.557-68.943-28.557s-50.527,10.142-68.943,28.557c-38.015,38.015-38.015,99.871 0,137.886 18.416,18.416 42.9,28.557 68.943,28.557 23.527,0 45.78-8.279 63.438-23.455l10.807,10.808-5.303,5.303c-1.407,1.407-2.197,3.314-2.197,5.303zm-125.082-37.123c-32.167-32.167-32.167-84.506 0-116.673 15.582-15.582 36.3-24.164 58.336-24.164s42.754,8.582 58.336,24.164c32.167,32.167 32.167,84.506 0,116.673-15.582,15.582-36.3,24.164-58.336,24.164s-42.754-8.582-58.336-24.164zm201.732,74.453l-10.606,10.607-47.937-47.936 5.301-5.301c0.005-0.005 5.306-5.306 5.306-5.306l47.936,47.936z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
    <path d="m250.729,185.27c-12.75-12.749-29.7-19.771-47.73-19.771s-34.98,7.021-47.73,19.771c-26.317,26.318-26.317,69.141 0,95.459 12.75,12.749 29.7,19.771 47.73,19.771s34.98-7.021 47.73-19.771c26.318-26.318 26.318-69.142 0-95.459zm-10.607,84.852c-9.916,9.916-23.1,15.377-37.123,15.377s-27.207-5.461-37.123-15.377c-20.47-20.47-20.47-53.776 0-74.246 9.916-9.916 23.1-15.377 37.123-15.377s27.207,5.461 37.123,15.377c20.47,20.47 20.47,53.776 0,74.246z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  </g></g> </svg>
                        </div>
                        <h4>숙소 검색</h4>
                        <p>원하는 날짜의 숙소를 검색해보세요. <br>당신의 장소를 고르고 다양한 숙소를 알아보세요!</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="howit-icon-wrap">
                        <div class="howit-img-block">
                            <svg xmlns="http://www.w3.org/2000/svg" class="howit-svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 33 33" style="enable-background:new 0 0 33 33;" xml:space="preserve" width="512px" height="512px"><g><g>
  <path d="M29.3,15.817c-1.364,0-2.558-0.742-3.2-1.843c-0.642,1.102-1.836,1.843-3.2,1.843s-2.559-0.742-3.2-1.843   c-0.641,1.102-1.835,1.843-3.199,1.843c-1.364,0-2.559-0.742-3.2-1.843c-0.642,1.102-1.836,1.843-3.202,1.843   c-1.364,0-2.558-0.742-3.2-1.843c-0.642,1.102-1.836,1.843-3.2,1.843C1.66,15.817,0,14.158,0,12.119V7.195   c0-0.062,0.012-0.124,0.034-0.182l2.363-6.055c0.075-0.192,0.26-0.318,0.466-0.318h27.273c0.206,0,0.391,0.126,0.466,0.318   l2.363,6.055C32.988,7.071,33,7.133,33,7.195v4.924C33,14.158,31.34,15.817,29.3,15.817z M26.101,11.619c0.276,0,0.5,0.224,0.5,0.5   c0,1.488,1.211,2.698,2.7,2.698s2.7-1.21,2.7-2.698v-4.83l-2.205-5.649H3.205L1,7.289v4.83c0,1.488,1.211,2.698,2.699,2.698   c1.489,0,2.7-1.21,2.7-2.698c0-0.276,0.224-0.5,0.5-0.5s0.5,0.224,0.5,0.5c0,1.488,1.211,2.698,2.7,2.698   c1.49,0,2.702-1.21,2.702-2.698c0-0.276,0.224-0.5,0.5-0.5s0.5,0.224,0.5,0.5c0,1.488,1.211,2.698,2.7,2.698   c1.488,0,2.699-1.21,2.699-2.698c0-0.276,0.224-0.5,0.5-0.5s0.5,0.224,0.5,0.5c0,1.488,1.211,2.698,2.7,2.698s2.7-1.21,2.7-2.698   C25.601,11.843,25.824,11.619,26.101,11.619z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  <path d="M28.39,32.361H4.611c-1.199,0-2.174-0.975-2.174-2.174V19.651c0-0.276,0.224-0.5,0.5-0.5s0.5,0.224,0.5,0.5v10.536   c0,0.647,0.526,1.174,1.174,1.174H28.39c0.648,0,1.175-0.526,1.175-1.174V19.651c0-0.276,0.224-0.5,0.5-0.5s0.5,0.224,0.5,0.5   v10.536C30.564,31.385,29.589,32.361,28.39,32.361z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  <g>
    <path d="M14.433,32.16H7.194c-0.276,0-0.5-0.224-0.5-0.5V19.306c0-0.276,0.224-0.5,0.5-0.5h7.238c0.276,0,0.5,0.224,0.5,0.5V31.66    C14.933,31.936,14.709,32.16,14.433,32.16z M7.694,31.16h6.238V19.806H7.694V31.16z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
    <path d="M25.805,26.38h-8.566c-0.276,0-0.5-0.224-0.5-0.5v-6.573c0-0.276,0.224-0.5,0.5-0.5h8.566c0.276,0,0.5,0.224,0.5,0.5    v6.573C26.305,26.156,26.081,26.38,25.805,26.38z M17.738,25.38h7.566v-5.573h-7.566V25.38z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  </g>
</g></g> </svg>
                        </div>
                        <h4>숙소 예약</h4>
                        <p>리뷰를 읽고 사진을 보고, <br>당신만의 특별한 숙소를 예약하세요.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="howit-icon-wrap">
                        <div class="howit-img-block">
                            <svg xmlns="http://www.w3.org/2000/svg" class="howit-svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 416.768 416.768" style="enable-background:new 0 0 416.768 416.768;" xml:space="preserve" width="512px" height="512px"><g><g>
  <g>
    <path d="M207.639,0c-2.56,0-5.12,2.048-5.12,5.12l-0.512,26.112c0,3.072,2.56,5.12,5.12,5.12c3.072,0,5.12-2.048,5.12-5.12    l0.512-26.112C212.759,2.048,210.711,0,207.639,0z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  </g>
</g><g>
  <g>
    <path d="M247.575,23.552c-2.048-2.048-5.12-2.048-7.168,0l-18.944,17.92c-2.048,2.048-2.048,5.12,0,7.168    c1.024,1.024,2.048,1.536,3.584,1.536c1.024,0,2.56-0.512,3.584-1.536l18.944-17.92C249.623,28.672,249.623,25.6,247.575,23.552z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  </g>
</g><g>
  <g>
    <path d="M193.815,41.472l-18.944-17.92c-2.048-2.048-5.12-2.048-7.168,0c-2.048,2.048-2.048,5.12,0,7.168l18.944,17.92    c1.024,1.024,2.048,1.536,3.584,1.536s2.56-0.512,3.584-1.536C195.863,46.592,195.863,43.52,193.815,41.472z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  </g>
</g><g>
  <g>
    <path d="M390.423,392.704c-0.512-2.56-3.584-4.608-6.144-3.584l-32.256,7.68l-28.16-115.712    c28.672-12.8,38.4-70.656,22.016-136.192c-5.12-19.968-19.456-68.608-28.16-87.04c-1.024-2.048-3.584-3.072-5.632-2.56    l-92.16,22.528c-2.56,0.512-4.096,2.56-4.096,5.12c0.512,20.48,10.24,70.144,15.36,90.112c15.872,64,50.176,110.08,80.896,110.08    c0.512,0,1.024,0,2.048,0l28.16,115.712l-32.256,7.68c-2.56,0.512-4.608,3.584-3.584,6.144c0.512,2.56,2.56,4.096,5.12,4.096    c0.512,0,1.024,0,1.024,0l74.24-17.92C389.399,398.336,391.447,395.264,390.423,392.704z M226.583,86.016l83.968-20.48    c3.584,8.192,7.68,19.968,11.776,32.256l-91.136,21.504C229.143,106.496,227.095,94.72,226.583,86.016z M241.431,169.984    c-2.048-9.216-5.632-24.576-8.704-40.448l92.16-22.016c4.608,15.36,8.704,30.208,10.752,38.912    c15.36,62.464,6.656,119.808-18.944,125.952S256.279,231.936,241.431,169.984z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  </g>
</g><g>
  <g>
    <path d="M318.231,138.752c-0.512-2.56-3.072-4.096-6.144-3.584c-2.56,0.512-4.608,3.584-3.584,6.144    c11.264,45.056,9.216,83.456,4.608,94.72c-1.024,2.56,0,5.632,2.56,6.656c0.512,0.512,1.536,0.512,2.048,0.512    c2.048,0,4.096-1.024,4.608-3.072C327.959,226.816,330.007,186.88,318.231,138.752z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  </g>
</g><g>
  <g>
    <path d="M196.887,77.312l-92.16-22.528c-2.56-0.512-4.608,0.512-5.632,2.56c-8.704,18.432-23.04,67.072-28.16,87.04    c-16.384,66.048-6.144,123.904,22.016,136.192l-28.16,115.712l-32.256-7.68c-2.56-0.512-5.632,1.024-6.144,3.584    c-1.024,3.072,0.512,5.632,3.584,6.656l74.24,17.92c0.512,0,1.024,0,1.024,0c2.048,0,4.608-1.536,5.12-4.096    c0.512-2.56-1.024-5.632-3.584-6.144l-32.256-7.68l28.16-115.712c0.512,0,1.024,0,2.048,0c30.72,0,65.024-46.08,80.896-110.592    c5.12-19.968,14.848-70.144,15.36-90.112C200.983,79.872,199.447,77.824,196.887,77.312z M174.871,170.496    c-15.36,61.952-49.664,108.544-75.264,102.4c-25.088-6.656-34.304-64-18.944-125.952c2.048-9.216,6.144-24.064,10.752-38.912    l92.16,22.016C180.503,145.92,177.431,161.28,174.871,170.496z M185.623,119.296L94.487,97.792    c4.096-12.288,8.192-24.064,11.776-32.256l83.968,20.48C189.719,94.72,187.671,106.496,185.623,119.296z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  </g>
</g><g>
  <g>
    <path d="M104.727,135.68c-2.56-0.512-5.632,1.024-6.144,3.584c-11.776,48.128-9.216,88.064-4.096,101.376    c1.024,2.048,2.56,3.072,4.608,3.072c0.512,0,1.536,0,2.048-0.512c2.56-1.024,3.584-4.096,2.56-6.656    c-4.608-11.776-6.656-49.664,4.608-94.72C108.823,139.264,107.287,136.192,104.727,135.68z" data-original="#000000" class="active-path" data-old_color="#ff6b6b" fill="#ff6b6b"/>
  </g>
</g></g> </svg>
                        </div>
                        <h4>여행 즐기기</h4>
                        <p>떠나세요! 그리고 예약한 숙소와 그 주변에서의 환상적인 여행을 즐기세요. 여행 후의 후기를 기대할게요. </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END HOW IT WORKS -->

    <!--============================= ADD LISTING =============================-->
    <section class="main-block">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block">
                        <h2>호스트가 되어보세요</h2>
                        <p>호스트가 되시면 숙소 등록이 가능합니다.</p>
                    </div>
                    <div class="btn-wrap btn-wrap2">
                        <a href="add-listing.html" class="btn btn-simple">호스트 되기</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END ADD LISTING -->
    <!--============================= FOOTER =============================-->
    <footer class="main-block gray">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 responsive-wrap">
                    <div class="location">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <p>서울특별시 서초구 서초4 서초대로77길 55동<br> 서초동, 에이프로스퀘어 3층</p>
                    </div>
                </div>
                <div class="col-md-4 responsive-wrap">
                    <div class="footer-logo_wrap">
                        <img src="/resources/user/images/nowTravel_logo_bottom.jpg" alt="#" class="img-fluid" width="200px">
                    </div>
                </div>
                <div class="col-md-4 responsive-wrap">
                    <ul class="social-icons">
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-12">
                    <div class="copyright">
                        <p>Copyright © 2022 now travel Inc. All rights reserved</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--//END FOOTER -->


    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/resources/user/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/user/js/popper.min.js"></script>
    <script src="/resources/user/js/bootstrap.min.js"></script>

</body>

</html>