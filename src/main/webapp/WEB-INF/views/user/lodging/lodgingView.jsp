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
<style>
.starpoint_wrap{display:inline-block;}
.starpoint_box{position:relative;background:url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0 0 no-repeat;font-size:0;}
.starpoint_box .starpoint_bg{display:block;position:absolute;top:0;left:0;height:18px;background:url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0 -20px no-repeat;pointer-events:none;}
.starpoint_box .label_star{display:inline-block;width:10px;height:13px;box-sizing:border-box;}
.starpoint_box .star_radio{opacity:0;width:0;height:0;position:absolute;}
.starpoint_box .star_radio:nth-of-type(1):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(1):checked ~ .starpoint_bg{width:10%;}
.starpoint_box .star_radio:nth-of-type(2):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(2):checked ~ .starpoint_bg{width:20%;}
.starpoint_box .star_radio:nth-of-type(3):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(3):checked ~ .starpoint_bg{width:30%;}
.starpoint_box .star_radio:nth-of-type(4):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(4):checked ~ .starpoint_bg{width:40%;}
.starpoint_box .star_radio:nth-of-type(5):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(5):checked ~ .starpoint_bg{width:50%;}
.starpoint_box .star_radio:nth-of-type(6):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(6):checked ~ .starpoint_bg{width:60%;}
.starpoint_box .star_radio:nth-of-type(7):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(7):checked ~ .starpoint_bg{width:70%;}
.starpoint_box .star_radio:nth-of-type(8):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(8):checked ~ .starpoint_bg{width:80%;}
.starpoint_box .star_radio:nth-of-type(9):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(9):checked ~ .starpoint_bg{width:90%;}
.starpoint_box .star_radio:nth-of-type(10):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(10):checked ~ .starpoint_bg{width:100%;}

.blind{position:absolute;clip:rect(0 0 0 0);margin:-1px;width:1px;height: 1px;overflow:hidden;}


</style>
    
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
 <form action="/payment" id="formReservation" autocomplete=off>
	
	<input type="hidden" id="hiddenName" name="tvamLodgingName"/>
	<input type="hidden" id="hiddenSeq" name="tvamSeq" value="<c:out value="${item.tvamSeq}"/>"/>
	<input type="hidden" id="hiddenStartDate" name="hiddenStartDate"/>
	<input type="hidden" id="hiddenDay" name="hiddenDay"/>
	<input type="hidden" id="hiddenDay1" name="hiddenDay1"/>
	<input type="hidden" id="hiddenEndDate" name="hiddenEndDate"/>
	<input type="hidden" id="hiddenNumber" name="hiddenNumber"/>	
	<input type="hidden" id="hiddenPriceOrigin" name="hiddenPriceOrigin"/> 
	<input type="hidden" id="hiddenPriceFee" name="hiddenPriceFee"/> 
	<input type="hidden" id="hiddenCoupon" name="hiddenCoupon"/> 
	<input type="hidden" id="hiddenPay" name="hiddenPay"/>
	<input type="hidden" id="hiddenHostName" name="hiddenHostName" value="<c:out value="${item.tvmmName}"/>"/>
	
 
    <div>
        <!-- Swiper -->
        
        <div class="swiper-container justify-content-center">
            <div class="swiper-wrapper justify-content-center">
            
	            <div class="swiper-slide justify-content-center">
	                	<table>
	                		
	                		<tr>
		                	<c:forEach items="${lodglist}" var="rt" varStatus="status">
			                		<td>
					                    <a href="/resources/uploaded/lodging/<c:out value="${rt.year}"/>/<c:out value="${rt.month}"/>/<c:out value="${rt.day}"/>/<c:out value="${rt.uuidName}"/>" class="grid image-link">
					                        <img src="/resources/uploaded/lodging/<c:out value="${rt.year}"/>/<c:out value="${rt.month}"/>/<c:out value="${rt.day}"/>/<c:out value="${rt.uuidName}"/>" style="height: 370px; width:635px;" alt="#">
					                    </a>
			                		</td>
		               			</c:forEach>
	               			</tr>
	               			  
	               		</table>
	               </div>
	             
             </div>
        </div>
            <!-- Add Pagination -->
          <!--   <div class="swiper-pagination swiper-pagination-white"></div> -->
            <!-- Add Arrows -->
  <!--           <div class="swiper-button-next swiper-button-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div> -->
        </div> 
        
        </div> 
        
       
        <%-- <div id="carouselExampleIndicators"  class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators" style="width:100px; height:100px;">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
  	<c:forEach items="${lodglist}" var="rt" varStatus="status">
               <div class="carousel-item active">
      <img src="/resources/uploaded/lodging/<c:out value="${rt.year}"/>/<c:out value="${rt.month}"/>/<c:out value="${rt.day}"/>/<c:out value="${rt.uuidName}"/>" class="d-block w-100" alt="...">
    </div>

                </c:forEach>
    
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>  --%>
        
    
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
                            <span><c:out value="${avg}"/></span>
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
                       

<div class="starpoint_wrap">
  <div class="starpoint_box">
    <label for="starpoint_1" class="label_star" title="0.5"><span class="blind">0.5점</span></label>
    <label for="starpoint_2" class="label_star" title="1"><span class="blind">1점</span></label>
    <label for="starpoint_3" class="label_star" title="1.5"><span class="blind">1.5점</span></label>
    <label for="starpoint_4" class="label_star" title="2"><span class="blind">2점</span></label>
    <label for="starpoint_5" class="label_star" title="2.5"><span class="blind">2.5점</span></label>
    <label for="starpoint_6" class="label_star" title="3"><span class="blind">3점</span></label>
    <label for="starpoint_7" class="label_star" title="3.5"><span class="blind">3.5점</span></label>
    <label for="starpoint_8" class="label_star" title="4"><span class="blind">4점</span></label>
    <label for="starpoint_9" class="label_star" title="4.5"><span class="blind">4.5점</span></label>
    <label for="starpoint_10" class="label_star" title="5"><span class="blind">5점</span></label>
    <input type="radio" value="1" name="starpoint" id="starpoint_1" class="star_radio">
    <input type="radio" value="2" name="starpoint" id="starpoint_2" class="star_radio">
    <input type="radio" value="3" name="starpoint" id="starpoint_3" class="star_radio">
    <input type="radio" value="4" name="starpoint" id="starpoint_4" class="star_radio">
    <input type="radio" value="5" name="starpoint" id="starpoint_5" class="star_radio">
    <input type="radio" value="6" name="starpoint" id="starpoint_6" class="star_radio">
    <input type="radio" value="7" name="starpoint" id="starpoint_7" class="star_radio">
    <input type="radio" value="8" name="starpoint" id="starpoint_8" class="star_radio">
    <input type="radio" value="9" name="starpoint" id="starpoint_9" class="star_radio">
    <input type="radio" value="10" name="starpoint" id="starpoint_10" class="star_radio">
    <span class="starpoint_bg"></span>
  </div>
</div>



                                <div class="your-comment-wrap">
                                    <textarea name="tvarReview" name="tvarReview" class="your-rating-content" placeholder="리뷰를 입력해주세요."></textarea>
                                    <h6 class="your-rating-notify">140자 이상 작성해주세요.</h6>
                                </div>

                                <div class="row">
                                    <div class="col-md-4 mr-auto">
                                       
                                    </div>
                                    <div class="col-md-4">
                                        <div class="your-rating-btn">
                                        
                                            <input type="submit" id="insertReview" name="insertReview" class="btn btn-danger btn-block" value="리뷰작성">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  
                 
                    <div class="booking-checkbox_wrap my-4">
                        <h4><c:out value="${vo.totalRows}"/>개 리뷰</h4>
                        <hr>
                             <c:forEach items="${rt}" var="item" varStatus="status">
                        <div class="customer-review_wrap">
                            <div class="customer-img">
                                <img src="/resources/user/images/review1.jpg" class="img-fluid" alt="#">
                           
                                <p><c:out value="${item.tvmmName}"/></p>
                               
                            </div>
                            <div class="customer-content-wrap">
                                <div class="customer-content">
                                    <div class="customer-review">
                                        
 <%--                                      
 <div class="starpoint_wrap">
  <div class="starpoint_box">
    <label for="starpoint1" class="label_star" title="0.5"><span class="blind">0.5점</span></label>
    <label for="starpoint2" class="label_star" title="1"><span class="blind">1점</span></label>
    <label for="starpoint3" class="label_star" title="1.5"><span class="blind">1.5점</span></label>
    <label for="starpoint4" class="label_star" title="2"><span class="blind">2점</span></label>
    <label for="starpoint5" class="label_star" title="2.5"><span class="blind">2.5점</span></label>
    <label for="starpoint6" class="label_star" title="3"><span class="blind">3점</span></label>
    <label for="starpoint7" class="label_star" title="3.5"><span class="blind">3.5점</span></label>
    <label for="starpoint8" class="label_star" title="4"><span class="blind">4점</span></label>
    <label for="starpoint9" class="label_star" title="4.5"><span class="blind">4.5점</span></label>
    <label for="starpoint10" class="label_star" title="5"><span class="blind">5점</span></label>
   <input type="ra	dio" name="starpoint" id="starpoint1" class="star_radio" disabled <c:if test="${item.starpoint eq 1}"> checked</c:if> >
    <input type="radio" name="starpoint" id="starpoint2" class="star_radio" disabled <c:if test="${item.starpoint eq 2}"> checked</c:if> >
    <input type="radio" name="starpoint" id="starpoint3" class="star_radio" disabled <c:if test="${item.starpoint eq 3}"> checked</c:if> >
    <input type="radio" name="starpoint" id="starpoint4" class="star_radio" disabled <c:if test="${item.starpoint eq 4}"> checked</c:if> >
    <input type="radio" name="starpoint" id="starpoint5" class="star_radio" disabled <c:if test="${item.starpoint eq 5}"> checked</c:if> >
    <input type="radio" name="starpoint" id="starpoint6" class="star_radio" disabled <c:if test="${item.starpoint eq 6}"> checked</c:if> >
    <input type="radio" name="starpoint" id="starpoint7" class="star_radio" disabled <c:if test="${item.starpoint eq 7}"> checked</c:if> >
    <input type="radio" name="starpoint" id="starpoint8" class="star_radio" disabled <c:if test="${item.starpoint eq 8}"> checked</c:if> >
    <input type="radio" name="starpoint" id="starpoint9" class="star_radio" disabled <c:if test="${item.starpoint eq 9}"> checked</c:if> >
    <input type="radio" name="starpoint" id="starpoint10" class="star_radio" disabled <c:if test="${item.starpoint eq 10}"> checked</c:if> > 
    
    <span class="starpoint_bg"></span>
  </div>
</div>  --%>

                                         <div class="customer-rating" style="margin-bottom:10px;"><c:out value="${item.starpoint/2}"/></div>
                                    </div>
                                    <div class="customer-rating"> <c:out value="${item.tvarDate}"/></div>
                                   
                                </div>
                                <p class="customer-text"><c:out value="${item.tvarReview}"/></p>

                             

                            </div>
                        </div>
                        <hr>
                        
                         </c:forEach>
                         
                        <div class="gridjs-pagination">
                                   			
                                   		<div class="gridjs-pages">
											<nav aria-label="...">
											  <ul class="pagination justify-content-center">
											<c:if test="${vo.startPage gt vo.pageNumToShow}">
											     <li class="page-item"><a class="page-link" href="lodgingView?tvamSeq=${item.tvamSeq}&thisPage=${vo.startPage - 1}">Previous</a></li>
											</c:if>
											<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
												<c:choose>
													<c:when test="${i.index eq vo.thisPage}">
											                <li class="page-item active"><a class="page-link" href="lodgingView?tvamSeq=${item.tvamSeq}&thisPage=${i.index}">${i.index}</a></li>
													</c:when>
													<c:otherwise>             
											            <li class="page-item"><a class="page-link" href="lodgingView?tvamSeq=${item.tvamSeq}&thisPage=${i.index}">${i.index}</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>     
											<c:if test="${vo.endPage ne vo.totalPages}">                
											    <li class="page-item"><a class="page-link" href="lodgingView?tvamSeq=${item.tvamSeq}&thisPage=${vo.endPage + 1}">Next</a></li>
											</c:if>  
											  </ul>
											</nav>
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
                                           <p style="font-size: 16px;"><u id="price"></u> <span style="font-size: 18px;" id="price1"></span></p>
                                           <p style="font-size: 16px;"><u>서비스 수수료</u> <span style="font-size: 18px;" id="price2"></span></p>
                                           <p style="font-size: 16px;"><u>숙소 쿠폰</u> <span class="total-red" style="font-size: 18px;" id="couponPrice"></span></p>
                                           <p style="font-size: 16px;">총 합계 <span style="font-size: 18px; color: blue;" id="price3"></span></p>
                                           <br><button type="submit" class="btn btn-danger btn-block" id="btnReservation">예약하기</button>
                                       </div>
                                   </div>
                               </div>
                           </div>
                        

                    <div class="follow" style="padding-bottom: 8px;">
                        <div class="follow-img">
                            <img src="/resources/uploaded/member/<c:out value="${item.year2}"/>/<c:out value="${item.month2}"/>/<c:out value="${item.day2}"/>/<c:out value="${item.uuidName2}"/>" width="200px" height="200px"  alt="#">
                        </div>
                        <ul class="d-flex">
                            <li class=" flex-fill">
                                <span><b>호스트</b></span>
                                <h6><c:out value="${item.tvmmName}"/></h6>
                            </li>
                            <li class=" flex-fill">
                            	 <span><b>지역</b></span>
                                <h6><c:out value="${item.tvamCity}"/></h6>
                            </li>
                            <li class=" flex-fill">
                            	 <span><b>후기</b></span>
                                <h6><%-- <c:out value="${rt.tvarCount}"/> --%><c:out value="${vo.totalRows}"/>개</h6>
                            </li>
                        </ul>
                        <a id="btnDm" class="btn btn-outline-danger btn-contact">메시지 보내기</a>
                    </div>              
                	<br>

                    <div class="contact-info">
                        <div id="map" style="height:300px;"></div>
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
                        </div>
                    </div>
                 <%--    <div class="follow">
                        <div class="follow-img">
                            <img src="/resources/user/images/review4.jpg" class="img-fluid" alt="#">
                            <h6><c:out value="${item.tvamHostName}"/></h6>
                            <span><c:out value="${item.tvamState}"/> <c:out value="${item.tvamCity}"/></span>
                        </div>
                        <ul class="d-flex">
                            <li class=" flex-fill">
                                <span><b>후기</b></span>
                                <h6><c:out value="${rt.tvarCount}"/>개</h6>
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
                    </div> --%>
                   <%--   <div class="follow">
                        <div class="follow-img">
                            <img src="/resources/user/images/review4.jpg" class="img-fluid" alt="#">
                            <h6><c:out value="${item.tvamHostName}"/></h6>
                            <span style="margin-top:10px;"><c:out value="${item.tvamState}"/> <c:out value="${item.tvamCity}"/></span>
                        </div>
                        <ul class="d-flex">
                            <li class=" flex-fill">
                                <span><b>후기</b></span>
                                <h6><c:out value="${rt.tvarCount}"/>개</h6>
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
                    </div> --%>

                    </div>                	
                	
                          <%--  <div class="contact-info">
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
                                           <p style="font-size: 16px;"><u id="price"></u> <span style="font-size: 18px;" id="price1"></span></p>
                                           <p style="font-size: 16px;"><u>서비스 수수료</u> <span style="font-size: 18px;" id="price2"></span></p>
                                           <p style="font-size: 16px;"><u>숙소 쿠폰</u> <span class="total-red" style="font-size: 18px;" id="couponPrice"></span></p>
                                           <p style="font-size: 16px;">총 합계 <span style="font-size: 18px; color: blue;" id="price3"></span></p>
                                           <br><button type="button" class="btn btn-danger btn-block" id="btnReservation">예약하기</button>
<!--                                            <br><button type="submit" class="btn btn-danger btn-block" id="btnReservation">예약하기</button> -->
                                       </div>
                                   </div>
                               </div>
                           </div> --%>
                        


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
	
	$('#hiddenName').val("<c:out value="${item.tvamLodgingName}"/>");
	$('#hiddenSeq').val("<c:out value="${item.tvamSeq}"/>");
	
a
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
			
		}
	});
	

	
	
	$('#hiddenName').val("<c:out value="${item.tvamLodgingName}"/>");
	$('#hiddenSeq').val("<c:out value="${item.tvamSeq}"/>");

	
 	$("#btnReservation").on("click" , function(){
		
	 	 $.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/loginCheck"
			,data : {}
			,success: function(response) {
				
				if(response.rt == "pass") {
				
					 /* location.href = "/dm" */
					$("#formReservation").submit();
					
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
			
				
					location.href = "/dm?tvmmSeq=<c:out value="${item.tvmmSeq}"/>"; 
					
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
	
	<script type="text/javascript">
	
	$("#insertReview").click(function () {
	       $("form").attr("action", "insertReview");
	});
	 
	
	</script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7cd4aacffe9949b52780dbc9332fce55"></script>
		<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(${item.tvamLat}, ${item.tvamLng}),
			level: 7
		};

		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(${item.tvamLat}, ${item.tvamLng}); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		marker.setMap(map);
	</script>
</body>

</html>