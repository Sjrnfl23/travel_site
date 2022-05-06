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
    <link rel="shortcut icon" href="images/nowTravel_logo_browser.jpg" type="image/x-icon" />
    <title id="ctl00_headerTitle">여행을 떠나요. now travel!</title> 
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Hover Effects -->
    <link href="css/set1.css" rel="stylesheet">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <!--============================= HEADER =============================-->
    <div class="nav-menu sticky-top">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="mainView.html"><img src="images/nowTravel_logo.jpg" alt="logo"></a>
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
                            <h5 class="modal-title"><img src="images/logo.png" alt="logo"></h5>
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
                            <h5 class="modal-title" id="exampleModalLabel"><img src="images/logo.png" alt="logo"></h5>
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
    <!--=============================// 공통부분 헤더 끝 =============================-->
    
    <!--============================= 컨텐츠시작 =============================-->
    
    <!--============================= SUBPAGE HEADER BG =============================-->
    <section class="subpage-bg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block title-block_subpage">
                        <h2>예약요청</h2>
                        <p> <a href="index.html"><u>이전으로</u></a> / 결제방법을 선택해주세요.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SUBPAGE HEADER BG -->
    <!--============================= PAYMENT METHORD =============================-->
    <section class="main-block">
        <div class="container-fluid">
            <div class="row justify-content-center">

                <div class="col-md-10">

                    <div class="row">
                        <div class="col-md-8">
                            <form method="post">
                            
                                <!-- 예약정보 -->
                                <div class="payment-wrap">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="payment-title">
                                                <span class="ti-files"></span>
                                                <h4><b>예약정보</b></h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <span style="font-size:20px;"><b>날짜</b></span>
                                                <p style="font-size : 18px;">8월 26일 ~ 9월 2일</p>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="text-align: right; vertical-align: bottom;">
                                            <p><u>수정하기</u></p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <span style="font-size:20px;"><b>게스트</b></span>
                                                <p style="font-size : 18px;">성인 1명</p>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="text-align: right; vertical-align: bottom;">
                                            <p><u>수정하기</u></p>
                                        </div>
                                    </div>

                                </div>
                                <!--// 예약정보 -->
                                
                                <!-- 환불정책 -->
                                <div class="payment-wrap">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="payment-title">
                                                <span class="ti-files"></span>
                                                <h4><b>환불정책</b></h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <span style="font-size:18px;">
                                            	7월 27일 오후 12:00 전에 예약을 취소하면 요금이 전액 환불됩니다.<br>
                                            	코로나19로 인한 여행 문제에는 정상참작이 가능한 상황 정책이 적용되지 않습니다.
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!--// 환불정책 -->
 
<!--  
                                
                                General Information

                                <div class="payment-wrap">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="payment-title">
                                                <span class="ti-files"></span>
                                                <h4>General Information</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input type="text" class="form-control add-listing_form">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="email" class="form-control add-listing_form">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Phone</label>
                                                <input type="number" class="form-control add-listing_form">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input type="text" class="form-control add-listing_form">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                // General Information

 -->

                                <!-- 결제수단 -->
                                <div class="payment-wrap">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="payment-title">
                                                <span class="ti-credit-card"></span>
                                                <h4>결제수단</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div id="accordion" class="payment-method-collapse">
                                                <div class="card">
                                                    <div class="card-header btn btn-link collapsed" id="headingThree" data-toggle="collapse" data-target="#collapseThree">
                                                        <h5 class="mb-0"><b>신용카드 / 체크카드</b></h5>
                                                        <img src="images/credit.png" class="img-fluid" alt="#">
                                                    </div>
                                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                        <div class="card-body">

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>이름</label>
                                                                        <input type="text" class="form-control add-listing_form" placeholder="Michael">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>카드번호</label>
                                                                        <input type="number" class="form-control add-listing_form" placeholder="1235 4785 4758 1458">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label>유효기간 월</label>
                                                                        <input type="number" class="form-control add-listing_form" placeholder="05">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label>유효기간 년</label>
                                                                        <input type="number" class="form-control add-listing_form" placeholder="2020">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label>CCV</label>
                                                                        <input type="number" class="form-control add-listing_form" placeholder="533">
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-primary">결제하기</button>
                                </div>
                            </form>
                            <!--// 결제수단 -->
                        </div>

                        <div class="col-md-4">
                            <div class="booking-summary_block">
                                <img src="images/payment.png" class="img-fluid" alt="#">
                                <div class="booking-summary-box">
                                    <h4>퀄리티&인테리어, 특별한 독채팬션_[봄보름] #해수욕장5분.돌집독채.월풀.바베큐</h4>
                                    <span style="font-size: 18px;">제주도, 제주시</span>

                                    <div class="booking-summary_contact">
                                        <p style="font-size: 18px;">070-5022-5867</p>
                                    </div>

                                    <div class="booking-summary_deatail">
                                        <h5>예약 정보</h5>
                                        <div class="booking-cost">
                                            <p style="font-size: 16px;">날짜 <span style="font-size: 16px;">8월 26일 ~ 9월 2일</span></p>
                                            <p style="font-size: 16px;">게스트 <span style="font-size: 16px;">성인 1명</span></p>
                                        </div>
                                        <div class="booking-cost" >
                                            <h5>요금 정보</h5>
                                            <p style="font-size: 16px;"><u>280,000 x 7박</u> <span style="font-size: 18px;">1,960,000원</span></p>
                                            <p style="font-size: 16px;"><u>서비스 수수료</u> <span style="font-size: 18px;">196,000원</span></p>
                                            <p style="font-size: 16px;"><u>숙소 쿠폰</u> <span style="font-size: 18px;">-20,000원</span></p>
                                            <p style="font-size: 16px;">총 합계 <span class="total-red" style="font-size: 18px;">2,136,000원</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END PAYMENT METHORD -->
    <!--=============================// 컨텐츠 끝 =============================-->
    
 	<!--============================= 공통부분 푸터 시작 =============================-->
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
                        <img src="images/nowTravel_logo_bottom.jpg" alt="#" class="img-fluid" width="200px">
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
	<!--=============================// 공통부분 푸터 끝 =============================-->





    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>

</html>