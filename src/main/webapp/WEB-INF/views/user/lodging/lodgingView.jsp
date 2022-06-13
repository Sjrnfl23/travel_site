<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">

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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="/resources/user/css/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/resources/user/css/font-awesome.min.css">
    <!-- line icons -->
    <link rel="stylesheet" href="/resources/user/css/simple-line-icons.css">
    <!-- Swipper Slider -->
    <link rel="stylesheet" href="/resources/user/css/swiper.min.css">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="/resources/user/css/magnific-popup.css">
    <!-- Hover Effects -->
    <link href="/resources/user/css/set1.css" rel="stylesheet">
    <!-- Main CSS -->
    <link rel="stylesheet" href="/resources/user/css/style.css">
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"><!-- datepicker -->
	<link rel="stylesheet" href="/resources/demos/style.css"><!-- datepicker -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script><!-- datepicker -->
	
    
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
    
    
    <!--============================= BOOKING =============================-->
 <form action="/payment" autocomplete=off>
	
	<input type="text" id="hiddenName" name="tvamLodgingName"/>
	<input type="text" id="hiddenSeq" name="tvamSeq"/>
	<input type="text" id="hiddenStartDate" name="hiddenStartDate"/>
	<input type="text" id="hiddenDay" name="hiddenDay"/>
	<input type="text" id="hiddenDay1" name="hiddenDay1"/>
	<input type="text" id="hiddenEndDate" name="hiddenEndDate"/>
	<input type="text" id="hiddenNumber" name="hiddenNumber"/>	
	<input type="text" id="hiddenPriceOrigin" name="hiddenPriceOrigin"/> 
	<input type="text" id="hiddenPriceFee" name="hiddenPriceFee"/> 
	<input type="text" id="hiddenCoupon" name="hiddenCoupon"/> 
	<input type="text" id="hiddenPay" name="hiddenPay"/> 
 
    <div>
        <!-- Swiper -->
        <div class="swiper-container">
            <div class="swiper-wrapper">

                <div class="swiper-slide">
                    <a href="/resources/user/images/view1.png" class="grid image-link">
                        <img src="/resources/user/images/view1.png" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="/resources/user/images/view2.png" class="grid image-link">
                        <img src="/resources/user/images/view2.png" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="/resources/user/images/view3.png" class="grid image-link">
                        <img src="/resources/user/images/view3.png" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="/resources/user/images/view4.png" class="grid image-link">
                        <img src="/resources/user/images/view4.png" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="/resources/user/images/view5.png" class="grid image-link">
                        <img src="/resources/user/images/view5.png" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="/resources/user/images/view6.png" class="grid image-link">
                        <img src="/resources/user/images/view6.png" class="img-fluid" alt="#">
                    </a>
                </div>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination-white"></div>
            <!-- Add Arrows -->
            <div class="swiper-button-next swiper-button-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
        </div>
    </div>
    <!--//END BOOKING -->
    <!--============================= RESERVE A SEAT =============================-->



    <section class="reserve-block">
        <div class="container">
            <div class="row">
            	
                <div class="col-md-11">
                    <h3><c:out value="${item.tvamLodgingName}"/></h3>
                    <p class="reserve-description" style="font-size: 20px;">침실 <c:out value="${item.tvamRoomCount}"/>개 * 침대 <c:out value="${item.tvamBedCount}"/>개 * 욕실 <c:out value="${item.tvamShowerRoomCount}"/>개</p><br>
                    <p class="reserve-description" style="font-size: 20px;"><c:out value="${item.tvamCity}"/></p>
                </div>
                <div class="col-md-1">
                    <div class="reserve-seat-block">
                        <div class="reserve-rating mx-0 mx-md-3">
                            <span>4.96</span>
                        </div>
                    </div>
                </div>
              
            </div>
        </div>
    </section>
    <!--//END RESERVE A SEAT -->
    <!--============================= BOOKING DETAILS =============================-->
    <section class="gray-dark booking-details_wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-8 responsive-wrap">
                    <div class="booking-checkbox_wrap">
                        <div class="booking-checkbox">
                            <p style="font-size: 18px;"><c:out value="${item.tvamDesc}"/></p>
                            <hr>
                        </div>
                        <h4 style="text-align: left;">숙소 편의시설</h4> <br>
                        <div class="row">
	                        <c:if test="${item.tvamSeaNy eq '1'}">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                        <span class="ti-check-box" style="color: blue;"></span>
				                        <span class="custom-control-description">해변과 인접</span>
				                     </label>
				                 </div>
				            </c:if>
				            <c:if test="${item.tvamCookingNy eq '1'}">
				                 <div class="col-md-4">    
	                                <label class="custom-checkbox">
				                       <span class="ti-check-box" style="color: blue;"></span>
				                       <span class="custom-control-description">주방</span>
			                       </label>
	                            </div>
	                       	</c:if>
	                       	<c:if test="${item.tvamWifiNy eq '1'}">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                     <span class="ti-check-box" style="color: blue;"></span>
				                     <span class="custom-control-description">무선 인터넷</span>
				                   </label>
				                </div>
				            </c:if>
                        	<c:if test="${item.tvamParkingRoomNy eq '1'}">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                        <span class="ti-check-box" style="color: blue;"></span>
				                        <span class="custom-control-description">건물 내 무료 주차</span>
				                     </label>
				                 </div>
			                 </c:if>
			                 <c:if test="${item.tvamJacuzziNy eq '1'}">
				                 <div class="col-md-4">
	                                <label class="custom-checkbox">
				                       <span class="ti-check-box" style="color: blue;"></span>
				                       <span class="custom-control-description">자쿠지</span>
			                       </label>
	                            </div>
	                        </c:if>
	                        <c:if test="${item.tvamTvNy eq '1'}">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                     <span class="ti-check-box" style="color: blue;"></span>
				                     <span class="custom-control-description">TV</span>
				                   </label>
				                </div>
							</c:if>
							<c:if test="${item.tvamMicrowaveNy eq '1'}">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                        <span class="ti-check-box" style="color: blue;"></span>
				                        <span class="custom-control-description">전자레인지</span>
				                     </label>
				                 </div>
							</c:if>
							<c:if test="${item.tvamAirConditionerNy eq '1'}">
				                 <div class="col-md-4">    
	                                <label class="custom-checkbox">
				                       <span class="ti-check-box" style="color: blue;"></span>
				                       <span class="custom-control-description">에어컨</span>
			                       </label>
	                            </div>
							</c:if>
							<c:if test="${item.tvamBbqGrillNy eq '1'}">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                     <span class="ti-check-box" style="color: blue;"></span>
				                     <span class="custom-control-description">바베큐</span>
				                   </label>
				                </div>
				           </c:if>
				           <c:if test="${item.tvamPoolNy eq '1'}">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                        <span class="ti-check-box" style="color: blue;"></span>
				                        <span class="custom-control-description">수영장</span>
				                     </label>
				                 </div>
				           </c:if>
				           <c:if test="${item.tvamFridgeNy eq '1'}">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                        <span class="ti-check-box" style="color: blue;"></span>
				                        <span class="custom-control-description">냉장고</span>
				                     </label>
				                 </div>
				           </c:if>
				           <c:if test="${item.tvamHeaterNy eq '1'}">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                        <span class="ti-check-box" style="color: blue;"></span>
				                        <span class="custom-control-description">히터</span>
				                     </label>
				                 </div>
				           </c:if>
                        </div>
                    </div>
                    <div class="booking-checkbox_wrap booking-your-review">
                        <h5>Write a Review</h5>
                        <hr>
                        <div class="customer-review_wrap">
                            <div class="customer-img">
                                <img src="/resources/user/images/avatar.jpg" class="img-fluid" alt="#">
                            </div>
                            <div class="customer-content-wrap">
                                <div class="your-rating-wrap">
                                    <span>평점</span>
                                    <div class="customer-review">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span class="round-icon-blank"></span>
                                    </div>
                                </div>
                                <div class="your-comment-wrap">
                                    <textarea name="#" class="your-rating-content" placeholder="리뷰를 입력해주세요."></textarea>
                                    <h6 class="your-rating-notify">140자 이상 작성해주세요.</h6>
                                </div>

                                <div class="row">
                                    <div class="col-md-4 mr-auto">
                                        <div class="add-photos-link mb-3 mb-md-0">
                                            <a href="#"><i class="icon-picture"></i>사진첨부</a>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="your-rating-btn">
                                            <a href="#" class="btn btn-danger btn-block">리뷰작성</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="booking-checkbox_wrap my-4">
                        <h4>192개 리뷰</h4>
                        <hr>
                        <div class="customer-review_wrap">
                            <div class="customer-img">
                                <img src="/resources/user/images/review1.jpg" class="img-fluid" alt="#">
                                <p><%-- <c:out value="${item.tvmmName"/> --%></p>
                            </div>
                            <div class="customer-content-wrap">
                                <div class="customer-content">
                                    <div class="customer-review">
                                        <h5>제주도에 와서 제일 좋은 숙소</h5>
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span class="round-icon-blank"></span>
                                        <p><%-- <c:out value="${item.tvarDate"/> --%></p>
                                    </div>
                                    <div class="customer-rating"><%-- <c:out value="${item.tvarStarPoint"/> --%></div>
                                </div>
                                <p class="customer-text"><%-- <c:out value="${item.tvarReview}"/> --%></p>

                                <ul>
                                    <li><img src="/resources/user/images/review-img1.jpg" class="img-fluid" alt="#"></li>
                                    <li><img src="/resources/user/images/review-img2.jpg" class="img-fluid" alt="#"></li>
                                    <li><img src="/resources/user/images/review-img3.jpg" class="img-fluid" alt="#"></li>
                                </ul>

                            </div>
                        </div>
                        <hr>
                        <div class="customer-review_wrap">
                            <div class="customer-img">
                                <img src="/resources/user/images/review2.jpg" class="img-fluid" alt="#">
                                <p>선희</p>
                            </div>
                            <div class="customer-content-wrap">
                                <div class="customer-content">
                                    <div class="customer-review">
                                        <h5>신행으로 왔었고 두쌍의 부부가 묵었습니다.</h5>
                                        <span class="customer-rating-red"></span>
                                        <span class="round-icon-blank"></span>
                                        <span class="round-icon-blank"></span>
                                        <span class="round-icon-blank"></span>
                                        <span class="round-icon-blank"></span>
                                        <p>2022년 4월</p>
                                    </div>
                                    <div class="customer-rating customer-rating-red">2.0</div>
                                </div>
                                <p class="customer-text">신행으로 왔었고 두쌍의 부부가 묵었습니다.
									제주스러운 집이었고 감성샷 찍을수 있는 곳이 많아서 완전 만족했습니다~</p>
                            </div>
                        </div>
                        <div class="customer-review_wrap">
                            <div class="customer-img">
                                <img src="/resources/user/images/review3.jpg" class="img-fluid" alt="#">
                                <p>Donghwan</p>
                            </div>r
                            <div class="customer-content-wrap">
                                <div class="customer-content">
                                    <div class="customer-review">
                                        <h5>세자매 여행에 특별한선물같은 숙소였습니다.</h5>
                                        <span class="customer-rating-red"></span>
                                        <span class="round-icon-blank"></span>
                                        <span class="round-icon-blank"></span>
                                        <span class="round-icon-blank"></span>
                                        <span class="round-icon-blank"></span>
                                        <p>2022년 3월</p>
                                    </div>
                                    <div class="customer-rating">4.0</div>
                                </div>
                                <p class="customer-text">세자매 여행에 특별한선물같은 숙소였습니다. 추워서 바베큐는 포기했지만 월풀로 휴식풀고 준비해두신 와인나눠마시고 넘 좋은시간보냈습니다. </p>
                            </div>
                        </div>
                    </div>

					<div class="booking-checkbox_wrap">
                        <h4 style="text-align: left;">알아두어야 할 사항</h4> <br>
                        <h6 style="font-size: 18px;"><b>숙소 이용 규칙</b></h6><br>
                        <div class="row">
                            <div class="col-md-6">
                                <label class="custom-checkbox">
			                        <span class="ti-check-box" style="color: blue;"></span>
			                        <span class="custom-control-description">체크인 : 오후 <c:out value="${item.tvamCheckInTime}"/>이후</span>
			                     </label>
			                 </div>
			             </div>
			             <div class="row">
			                 <div class="col-md-6">    
                                <label class="custom-checkbox">
			                       <span class="ti-check-box" style="color: blue;"></span>
			                       <span class="custom-control-description">체크아웃 : 오전 <c:out value="${item.tvamCheckOutTime}"/>시</span>
		                       </label>
                            </div>
                         </div>
                        <c:if test="${item.tvamSmokeNy eq '1'}">
	                        <div class="row">
		                            <div class="col-md-6">
		                                <label class="custom-checkbox">
					                        <span class="ti-check-box" style="color: blue;"></span>
					                        <span class="custom-control-description">흡연 금지</span>
					                     </label>
					                 </div>
				            </div>
				        </c:if>
			            <c:if test="${item.tvamPetNy eq '1'}">
				            <div class="row">
				                 <div class="col-md-4">     
	                                <label class="custom-checkbox">
				                       <span class="ti-check-box" style="color: blue;"></span>
				                       <span class="custom-control-description">반려동물 동반 불가</span>
			                       </label>
	                            </div>
	                        </div>
                        </c:if>
                        <c:if test="${item.tvamPartyNy eq '1'}">
	                        <div class="row">
	                            <div class="col-md-4">
	                                <label class="custom-checkbox">
				                     <span class="ti-check-box" style="color: blue;"></span>
				                     <span class="custom-control-description">파티나 이벤트 금지</span>
				                   </label>
				                </div>
	                        </div>
	                    </c:if>
                    </div>
                </div>
                
                <div class="col-md-4 responsive-wrap">
                		
                            <div class="contact-info">
                                <div class="booking-summary-box">
                                    <h4><c:out value="${item.tvamLodgingName}"/></h4>
                                    <span style="font-size: 18px;"><c:out value="${item.tvamCity}"/></span>

                                    <div class="booking-summary_contact">
                                        <p style="font-size: 18px;"><c:out value="${item.tvamTelNumber}"/></p>
                                    </div>

                                    <div class="booking-summary_deatail">
                                        <h5>예약 정보</h5>
                                        <div class="row" align=center>
										  <div class="input-group">
										    <input type="text" class="form-control form-control-sm" id="datepicker1" placeholder="시작일" >
										    <input type="text" class="form-control form-control-sm" id="datepicker2" placeholder="종료일">
										  </div>
									    <div class="input-group">
											<select class="form-select" name="selectNumber" id="selectNumber" aria-label="Default select example">
											  <option selected>인원</option>
											  <option value="1">1</option>
											  <option value="2">2</option>
											  <option value="3">3</option>
											  <option value="4">4</option>
											  <option value="5">5</option>
											  <option value="6">6</option>
											</select>									    
									    </div>
							  			</div>
                                        <div class="booking-cost">
                                            <p style="font-size: 16px; ">
                                            	날짜
                                            	<span id="endDate" style="font-size: 16px;"></span>
                                            	<span id="startDate" style="font-size: 16px;"></span>
                                            	<span id="day" style="font-size: 16px;"></span>
                                            </p>
                                            <p style="font-size: 16px;">게스트 <span style="font-size: 16px;" id="outputNumber"></span></p>
                                        </div>
                                        <div class="booking-cost" >
                                            <h5>요금 정보</h5>
<<<<<<< HEAD
                                            <p style="font-size: 16px;"><u id="price"></u> <span style="font-size: 18px;"></span></p>
                                            <p style="font-size: 16px;"><u>서비스 수수료</u> <span style="font-size: 18px;">196,000원</span></p>
                                            <p style="font-size: 16px;"><u>숙소 쿠폰</u> <span style="font-size: 18px;">-20,000원</span></p>
                                            <p style="font-size: 16px;">총 합계 <span class="total-red" style="font-size: 18px;">2,136,000원</span></p>
=======
                                            <p style="font-size: 16px;"><u id="price"></u> <span style="font-size: 18px;" id="price1"></span></p>
                                            <p style="font-size: 16px;"><u>서비스 수수료</u> <span style="font-size: 18px;" id="price2"></span></p>
                                            <p style="font-size: 16px;"><u>숙소 쿠폰</u> <span class="total-red" style="font-size: 18px;" id="couponPrice"></span></p>
                                            <p style="font-size: 16px;">총 합계 <span style="font-size: 18px; color: blue;" id="price3"></span></p>
>>>>>>> branch 'main' of https://github.com/Sjrnfl23/travel_site.git
                                            <br><button type="submit" class="btn btn-danger btn-block" id="btnReservation">예약하기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                    <div class="contact-info">
                        <img src="/resources/user/images/map.jpg" class="img-fluid" alt="#">
                        <div class="address">
                            <span class="icon-location-pin"></span>
                            <p><c:out value="${item.tvamAddressFull}"/></p>
                        </div>
                        <div class="address">
                            <span class="icon-screen-smartphone"></span>
                            <p><c:out value="${item.tvamTelNumber}"/></p>
                        </div>
                        <div class="address">
                            <span class="icon-link"></span>
                            <p><c:out value="${item.tvmmEmailAccount}"/></p>
                        </div>
                        <div class="address">
                            <span class="icon-clock"></span>
                            <p>월 - 일 09:30 am - 05:30 pm </p>
                            <a href="#" class="featured-open">OPEN NOW</a>
                        </div>
                        <a id="btnDm" class="btn btn-outline-danger btn-contact">메시지 보내기</a>
                    </div>
                    <div class="follow">
                        <div class="follow-img">
                            <img src="/resources/user/images/review4.jpg" class="img-fluid" alt="#">
                            <h6><c:out value="${item.tvamHostName}"/></h6>
                            <span><c:out value="${item.tvamState}"/> <c:out value="${item.tvamCity}"/></span>
                        </div>
                        <ul class="d-flex">
                            <li class=" flex-fill">
                                <span><b>후기</b></span>
                                <h6>190개</h6>
                            </li>
                            <li class=" flex-fill">
                            	 <span><b>언어</b></span>
                                <h6>영어, 한국어</h6>
                            </li>
                            <li class=" flex-fill">
                                <h6>본인인증<br>완료</h6>
                            </li>
                        </ul>
                        <br>
                        <div style="margin-left: 20px; margin-right: 20px;">
                        	<span><b>숙박 중 게스트와의 교류</b></span>
                        	<br><br>
							<p>저희 숙소를 찾아주신 분들께 당연히 반갑게 마주하여 감사의 인사를 드려야 하나
							불편하실것 같아 셀프 체크인 하시고
							필요한 점 있으시면 언제든 연락주세요.
							정성을 많이 기울였지만 부족한 부분은 지속적으로 보완해 나가겠습니다.</p>
							<br>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </form>
    <!--//END BOOKING DETAILS -->
    <!--=============================// 컨텐츠 끝 =============================-->
    
 	<!--============================= 공통부분 푸터 시작 =============================-->
    <!--============================= FOOTER =============================-->
    ﻿<%@ include file="../include/footer.jsp" %>
    <!--//END FOOTER -->
	<!--=============================// 공통부분 푸터 끝 =============================-->





    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/resources/user/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/user/js/popper.min.js"></script>
    <script src="/resources/user/js/bootstrap.min.js"></script>

    <!-- Magnific popup JS -->
    <script src="/resources/user/js/jquery.magnific-popup.js"></script>
    <!-- Swipper Slider JS -->
    <script src="/resources/user/js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 3,
            slidesPerGroup: 3,
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
    <script>
        if ($('.image-link').length) {
            $('.image-link').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
        if ($('.image-link2').length) {
            $('.image-link2').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
    </script>
    
    <!-- 날짜 선택 -->
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> <!-- datepicker -->
	<script type="text/javascript">
		$(document).ready(function(){
			
			 $("#datepicker1").datepicker();
			 $('#startDate').empty();
			 $("#datepicker1").val();

			 $("#datepicker1").on("change",function(){

				 $('#hiddenStartDate').empty();
				 $('#hiddenEndDate').empty();
				 
				var selected1 = $(this).val();		// 선택된 시작날짜 값 받아오기
				var stDate = new Date(selected1);	// 받아온 값 stDate로 선언
				var btMs1 = stDate.getTime();		// 받아온 값 시간(밀리세컨드)으로 변환
				
				$('#hiddenDay1').val(btMs1);			// hiddenDay에 btMs1 전역변수 담기

			   /* alert(selected1); */
<<<<<<< HEAD
			   $('#startDate').empty();
			   $('#startDate').append(selected1);
			   $('#hiddenStartDate').val(selected1);
			 });					 
		
=======
			   $('#startDate').empty();				// 날짜 표시 부분 비움
			   $('#startDate').append(selected1);	// 날짜 표시 부분에 날짜넣기
 			   $('#hiddenStartDate').val(selected1);	// hiddenStartDate에 날짜 넣기 (payment 페이지로 전달해야 함)
				$('#couponPrice').empty();
				$('#endDate').empty();
			   $('#price').empty();
			   $('#price1').empty();
			   $('#price2').empty();				
 			   $('#price3').empty();			  
			 });	
		}); 
		
		$(document).ready(function(){
>>>>>>> branch 'main' of https://github.com/Sjrnfl23/travel_site.git
			 $("#datepicker2").datepicker();
			 $("#datepicker2").val();
			 $("#datepicker2").on("change",function(){
				 $('#hiddenEndDate').empty();
				 $('#endDate').empty();
				 
				var selected2 = $(this).val();		// 선택된 종료날짜 값 받아오기
				var btMs1 = $('#hiddenDay1').val();	// hiddenDay에 담은 btMs1 값 가져오기
			   
				var edDate = new Date(selected2);	// 받아온 종료날짜 값 edDate로 선언
				var btMs2 = edDate.getTime() - btMs1;	// 받아온 종료날짜 값 시간(밀리세컨드)으로 변환해서 시작날짜값(밀리세컨드)만큼 차감
				var vtDay = btMs2 / (1000*60*60*24);	// 일수로 계산
				
			   /* alert(selected2); */
			   $('#price').empty();
			   $('#price1').empty();
			   $('#price2').empty();
			   $('#couponPrice').empty();
			   $('#price3').empty();
			   
			   $('#endDate').append(' ~ ' + selected2 + '(' + vtDay + '박)' );
			   $('#hiddenEndDate').val(selected2);
<<<<<<< HEAD
			   
			   /* 날짜 차이 계산 */
			  /*  var btMs = Math.ceil(selected2.getTime() - selected1.getTime())/(1000*3600*24); */
			   
			   $('#price').append( '<fmt:formatNumber value="${item.tvamAdultPrice}"/> x 박'); 
=======
			   $('#hiddenDay').val(vtDay);
			   
			   $('#price').append( '<fmt:formatNumber value="${item.tvamAdultPrice}"/>'+ ' x ' + vtDay + '박' );
			   
			   
			   /* 정상가 */
			   var priceOrigin = '<c:out value="${item.tvamAdultPrice}"/>'*vtDay;
			   var price1 = priceOrigin.toLocaleString();
			   $('#price1').append(price1 + '원');
			   $('#hiddenPriceOrigin').val(price1);
			   
			   /* 수수료 */
			   var priceFee = priceOrigin/10;			
			   var price2 = priceFee.toLocaleString();
			   $('#price2').append(price2 + '원');
			   $('#hiddenPriceFee').val(price2);
			  
			   /* 쿠폰*/
			   var priceCoupon = '<c:out value="${item.tvcpPrice}"/>'
			   $('#couponPrice').append('-' + '<fmt:formatNumber value="${item.tvcpPrice}"/>' + '원');
			   $('#hiddenCoupon').val('<fmt:formatNumber value="${item.tvcpPrice}"/>');		   
			   
			   /* 총 합계 (정상가+수수료-쿠폰) */
			   var priceTotal = priceOrigin + priceFee - priceCoupon;	
			   var price3 = priceTotal.toLocaleString();
			   $('#price3').append(price3 + '원');
			   $('#hiddenPay').val(priceTotal);
			   
>>>>>>> branch 'main' of https://github.com/Sjrnfl23/travel_site.git
			 });				 
		}); 
		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd',
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		    showMonthAfterYear: true,
		    yearSuffix: '년'
		});
		
	</script>
	
	
	<!-- 인원 선택 -->	
	<script>

	$("select[name=selectNumber]").change(function(){
		
		 $('#outputNumber').empty();	
		 var selectNumber = $(this).val(); //value값 가져오기
		 $('#outputNumber').append($("select[name=selectNumber] option:selected").text() + '명');
		 $('#hiddenNumber').val($("select[name=selectNumber] option:selected").text());
		 
		});
	
	</script>
		
	<script type="text/javascript">
	$("#startDate, #endDate").on("change" , function(){
		alert
		var btMs = Math.ceil(selected2.getTime() - selected1.getTime())/(1000*3600*24);	
	
	});
	
	
		<!-- Login Ajax -->
	        
/* 	$("#btnReservation").on("click" , function(){
		
		/* if($("#tvmmEmailAccount").val() == "" || $("#tvmmPassword").val() == ""){
			alert("이메일 또는 비밀번호를 입력해주세요");
			
			return false;
		}else{
			
		} */
		
	 	/* $.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/loginCheck"
			,data : {}
			,success: function(response) {
				if(response.rt == "pass") {
					 location.href = "/payment"; 
					
				}else{			
					var answer=confirm("로그인이 필요합니다. 하시겠습니까?");
					
					if(answer ==true){
						
						location.href="/loginForm"
					}
					}
				}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});   */
	
	</script>
	
	<!-- 스크립트 -->
	<script>
	
	$('#hiddenName').val("<c:out value="${item.tvamLodgingName}"/>");
	$('#hiddenSeq').val("<c:out value="${item.tvamSeq}"/>");
	/* $('#hiddenStartDate').val("2022-08-26"); */
	/* $('#hiddenEndDate').val("2022-09-02"); */
	/* $('#hiddenNumber').val("1"); */
	/* $('#hiddenPay').val("1"); */
	
	</script>
	
	<script>
	$("#btnReservation").on("click" , function(){
		if($('#hiddenStartDate').val() == null || $('#hiddenStartDate').val() == ""){
			alert('시작일을 선택해주세요.');
			return false;
		} 
		
		if($('#hiddenEndDate').val() == null || $('#hiddenEndDate').val() == ""){
			alert('종료일을 선택해주세요.');
			return false;
		} 
		
		if($('#hiddenNumber').val() == null || $('#hiddenNumber').val() == ""){
			alert('인원을 선택해주세요.');
			return false;
		} else {
			return true;
		}
		
	});
	
	</script>
		 <script type="text/javascript">
	        
 	$("#btnDm").on("click" , function(){
		
	 	 $.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/loginCheck"
			,data : {}
			,success: function(response) {
				
				if(response.rt == "pass") {
			
				
					 location.href = "/dm"; 
					
				}else{			
					var answer=confirm("로그인이 필요합니다. 하시겠습니까?");
					
					if(answer ==true){
						
						location.href="/loginForm"
					}
					}
				}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});   
	
	</script>
</body>

</html>