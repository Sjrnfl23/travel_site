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
    ﻿<%@ include file="../include/header.jsp" %>
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
    <!--=============================// 공통부분 헤더 끝 =============================-->
    
    <!--============================= 컨텐츠시작 =============================-->
    
    <!--============================= SUBPAGE HEADER BG =============================-->
 <form>
	<input type="hidden" id="hiddenName" name="tvamLodgingName"/>
	<input type="hidden" id="hiddenSeq" name="tvamSeq"/>
	<input type="hidden" id="hiddenStartDate" name="hiddenStartDate"/>
	<input type="hidden" id="hiddenEndDate" name="hiddenEndDate"/>
	<input type="hidden" id="hiddenNumber" name="hiddenNumber"/>	
	<input type="hidden" id="hiddenPay" name="hiddenPay"/>     
 </form>
    
    <section class="subpage-bg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block title-block_subpage">
                        <h2>예약요청</h2>
                        <p> <a href="lodgingView"><u>이전으로</u></a> / 결제방법을 선택해주세요.</p>
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
                                                <p style="font-size : 18px;"><c:out value="${rtStartDate}"/> ~ <c:out value="${rtEndDate}"/></p>
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
                                                <p style="font-size : 18px;">성인 <c:out value="${rtNumber}"/>명</p>
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
                                                        <img src="/resources/user/images/credit.png" class="img-fluid" alt="#">
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

                                    <a href="/reservation"><button type="button" class="btn btn-primary">결제하기</button></a>
                                    <!-- <a href="/admin/reservation"><button type="submit" class="btn btn-primary">결제하기</button></a> -->
                                </div>
                            <!--// 결제수단 -->
                        </div>

                        <div class="col-md-4">
                            <div class="booking-summary_block">
                                <img src="/resources/user/images/payment.png" class="img-fluid" alt="#">
                                <div class="booking-summary-box">
                                    <h4><c:out value="${item.tvamLodgingName}"/></h4>
                                    <span style="font-size: 18px;">제주도, 제주시</span>

                                    <div class="booking-summary_contact">
                                        <p style="font-size: 18px;">070-5022-5867</p>
                                    </div>

                                    <div class="booking-summary_deatail">
                                        <h5>예약 정보</h5>
                                        <div class="booking-cost">
                                            <p style="font-size: 16px;">날짜 <span style="font-size: 16px;"><c:out value="${rtStartDate}"/> ~ <c:out value="${rtEndDate}"/></span></p>
                                            <p style="font-size: 16px;">게스트 <span style="font-size: 16px;">성인 <c:out value="${rtNumber}"/>명</span></p>
                                        </div>
                                        <div class="booking-cost" >
                                            <h5>요금 정보</h5>
                                            <p style="font-size: 16px;"><u>280,000 x 7박</u> <span style="font-size: 18px;">1,960,000원</span></p>
                                            <p style="font-size: 16px;"><u>서비스 수수료</u> <span style="font-size: 18px;">196,000원</span></p>
                                            <p style="font-size: 16px;"><u>숙소 쿠폰</u> <span style="font-size: 18px;">-20,000원</span></p>
                                            <p style="font-size: 16px;">총 합계 <span class="total-red" style="font-size: 18px;"><c:out value="${rtPay}"/></span></p>
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
  </form>
    
    <!--=============================// 컨텐츠 끝 =============================-->
    
 	<!--============================= 공통부분 푸터 시작 =============================-->
    <!--============================= FOOTER =============================-->
    <%@ include file="../include/footer.jsp" %>
    <!--//END FOOTER -->
	<!--=============================// 공통부분 푸터 끝 =============================-->





    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/resources/user/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/user/js/popper.min.js"></script>
    <script src="/resources/user/js/bootstrap.min.js"></script>

</body>

</html>