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
    
    
    
</head>

<body>
    <!--============================= HEADER =============================-->
    <div class="nav-menu sticky-top">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="mainView.jsp"><img src="/resources/user/images/nowTravel_logo.jpg" alt="logo"></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="ti-menu"></span>
              </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="searchFlex.jsp">유연한검색</a>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    						회원정보
                    						<span class="ti-angle-down"></span>
                  						</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="reservation">예약내역</a>
                                            <a class="dropdown-item" href="../map/mapList">여행지도</a>
                                            <a class="dropdown-item" href="../member/userInfoView">회원정보 수정</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../member/loginForm" data-toggle="modal" data-target="#exampleModal">Login</a>
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
    <!--=============================// 공통부분 헤더 끝 =============================-->
    
    <!--============================= 컨텐츠시작 =============================-->
    
    
    <!--============================= BOOKING =============================-->
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
                    <h3>퀄리티&인테리어, 특별한 독채팬션_[봄보름] #해수욕장5분.돌집독채.월풀.바베큐</h3>
                    <p class="reserve-description" style="font-size: 20px;">최대 인원 5명 * 침실 2개 * 침대 2개 * 욕실 2개</p><br>
                    <p class="reserve-description" style="font-size: 20px;">제주도, 제주시</p>
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
                            <p style="font-size: 18px;">'봄보름'은 '봄바람'의 제주 방언이랍니다.
								봄바람같이 여러분의 얼었던 몸과 마음을 따스히 품고 어우룰수 있는 숙소가 되려 합니다.
								또한 '봄보름'은 제주도의 지리적이고 자연적 감성을 반영하고 Guest와의 충분한 교감을 나누고자 많은 시간과 정성을 기울여 신축한 단독주택입니다.</p>
                            <hr>
                        </div>
                        <h4 style="text-align: left;">숙소 편의시설</h4> <br>
                        <div class="row">
                            <div class="col-md-4">
                                <label class="custom-checkbox">
			                        <span class="ti-check-box"></span>
			                        <span class="custom-control-description">해변과 인접</span>
			                     </label>
			                 </div>
			                 <div class="col-md-4">    
                                <label class="custom-checkbox">
			                       <span class="ti-check-box"></span>
			                       <span class="custom-control-description">주방  </span>
		                       </label>
                            </div>
                            <div class="col-md-4">
                                <label class="custom-checkbox">
			                     <span class="ti-check-box"></span>
			                     <span class="custom-control-description">무선 인터넷  </span>
			                   </label>
			                </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label class="custom-checkbox">
			                        <span class="ti-check-box"></span>
			                        <span class="custom-control-description">건물 내 무료 주차</span>
			                     </label>
			                 </div>
			                 <div class="col-md-4">    
                                <label class="custom-checkbox">
			                       <span class="ti-check-box"></span>
			                       <span class="custom-control-description">자쿠지</span>
		                       </label>
                            </div>
                            <div class="col-md-4">
                                <label class="custom-checkbox">
			                     <span class="ti-check-box"></span>
			                     <span class="custom-control-description">TV</span>
			                   </label>
			                </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label class="custom-checkbox">
			                        <span class="ti-check-box"></span>
			                        <span class="custom-control-description">세탁기</span>
			                     </label>
			                 </div>
			                 <div class="col-md-4">    
                                <label class="custom-checkbox">
			                       <span class="ti-check-box"></span>
			                       <span class="custom-control-description">에어컨</span>
		                       </label>
                            </div>
                            <div class="col-md-4">
                                <label class="custom-checkbox">
			                     <span class="ti-check-box"></span>
			                     <span class="custom-control-description">전용 발코니</span>
			                   </label>
			                </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label class="custom-checkbox">
			                        <span class="ti-check-box"></span>
			                        <span class="custom-control-description">뒷마당</span>
			                     </label>
			                 </div>
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
                                <p>화영</p>
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
                                        <p>2022년 4월</p>
                                    </div>
                                    <div class="customer-rating">5.0</div>
                                </div>
                                <p class="customer-text">게스트를 위한 배려와 센스가 넘치는 너무나도 사랑스러운 숙소입니다.3박4일동안 내 집처럼 편안하게 쉬고 갑니다.다른 계절때도 오고싶어요. 강추드립니다</p>

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
			                        <span class="ti-check-box"></span>
			                        <span class="custom-control-description">체크인 : 오후 4:00 이후</span>
			                     </label>
			                 </div>
			             </div>
			             <div class="row">
			                 <div class="col-md-6">    
                                <label class="custom-checkbox">
			                       <span class="ti-check-box"></span>
			                       <span class="custom-control-description">체크아웃 : 오전 11시</span>
		                       </label>
                            </div>
                         </div>
                         <div class="row">
                            <div class="col-md-6">
                                <label class="custom-checkbox">
			                     <span class="ti-check-box"></span>
			                     <span class="custom-control-description">스마트록으로 셀프 체크인</span>
			                   </label>
			                </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label class="custom-checkbox">
			                        <span class="ti-check-box"></span>
			                        <span class="custom-control-description">흡연 금지</span>
			                     </label>
			                 </div>
			            </div>
			            <div class="row">
			                 <div class="col-md-4">    
                                <label class="custom-checkbox">
			                       <span class="ti-check-box"></span>
			                       <span class="custom-control-description">반려동물 동반 불가</span>
		                       </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label class="custom-checkbox">
			                     <span class="ti-check-box"></span>
			                     <span class="custom-control-description">파티나 이벤트 금지</span>
			                   </label>
			                </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 responsive-wrap">
                    <div class="contact-info">
                        <img src="/resources/user/images/map.jpg" class="img-fluid" alt="#">
                        <div class="address">
                            <span class="icon-location-pin"></span>
                            <p>제주특별자치도<br> 제주시 조천읍 신흥관전길 8</p>
                        </div>
                        <div class="address">
                            <span class="icon-screen-smartphone"></span>
                            <p>065-782-5559</p>
                        </div>
                        <div class="address">
                            <span class="icon-link"></span>
                            <p>https://airbnb.co.kr</p>
                        </div>
                        <div class="address">
                            <span class="icon-clock"></span>
                            <p>월 - 일 09:30 am - 05:30 pm </p>
                            <a href="#" class="featured-open">OPEN NOW</a>
                        </div>
                        <a href="#" class="btn btn-outline-danger btn-contact">메시지 보내기</a>
                    </div>
                    <div class="follow">
                        <div class="follow-img">
                            <img src="/resources/user/images/review4.jpg" class="img-fluid" alt="#">
                            <h6>승인님</h6>
                            <span>제주도 제주시</span>
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
    <!--//END BOOKING DETAILS -->
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

</body>

</html>