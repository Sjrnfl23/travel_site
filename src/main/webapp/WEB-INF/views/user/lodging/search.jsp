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
    <!-- Line Icon -->
    <link rel="stylesheet" href="/resources/user/css/simple-line-icons.css">
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
    <!--============================= FEATURED LISTING =============================-->
    <section class="featured-wrap">
        <div class="container-fluid container-subpage">
            <div class="row">
                <div class="col-md-7 responsive-wrap">
                    <div class="row detail-filter-wrap">
                        <div class="col-md-7 featured-responsive">
                            <div class="detail-filter-text">
                                <p><b>서울에 위치한 숙소</b></p>
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="col-md-5 featured-responsive">
                            <div class="detail-filter">
                                <form class="filter-dropdown">
									<div class="row">
									  <div class="col">
									    <input type="date" class="form-control" placeholder="출발일" aria-label="" style="height: 40px;">
									  </div>
									</div>
                                </form>
                                <form class="filter-dropdown">
									<div class="row">
									  <div class="col">
									    <a href="" class="btn btn-danger top-btn" style="margin-left: 10px;">검색</a>
									  </div>
									</div>
                                </form>
                            </div>
                        </div>

                    </div>
                    <div class="map-responsive-wrap">
                        <a class="map-icon btn btn-block" href="#"><i class="icon-location-pin"></i> <small>OPEN LISTING IN MAP</small></a>
                    </div>

                    <div class="row">
                        <div class="col-md-6 card-2">
                            <!-- card-1 -->
                            <div class="card">
                                <a href="../lodging/lodgingView.jsp"><img class="card-img-top" src="/resources/user/images/searchflex1.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">헬로반디vandi룸/수플레팬케잌&빠네 등(조식무료), 도자기컵체험무료,넷플릭스(55인치)</h5>
                                    <ul class="card-rating">
                                        <li>5.0</li>
                                    </ul>
                                    <p class="card-text">
                                    '달에물들다 힐링스테이 김녕'은 아름다운 석양으로 유명한 김녕 성세기해변 근처에 있습니다.
                                    </p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>제주도, 제주시, 구좌읍</p>
                                    <span>Closed Now</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 card-2">
                            <div class="card">
                                <a href="lodgingView.html"><img class="card-img-top" src="/resources/user/images/searchflex2.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">사랑하는 가족들과 일상에서 벗어나 소중한 추억을 만들 수 있는 숙소의 ROOM 301</h5>
                                    <ul class="card-rating">
                                        <li>4.0</li>
                                    </ul>
                                    <p class="card-text">
                                    이 숙소의 전체 숙박 인원은 2세 미만 유아를 포함하여 결정됩니다.
									 </p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>제주도 제주시 한경면</p>
                                    <span class="open-close_green">Open Now</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 card-2">
                            <div class="card">
                                <a href="lodgingView.html"><img class="card-img-top" src="/resources/user/images/searchflex3.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">바다전망 프라이빗 풀빌라[하도스테이] #하루한팀#깨끗한침구#셀프체크인
									</h5>
                                    <ul class="card-rating">
                                        <li class="card-rating-yellow">3.5</li>
                                    </ul>
                                    <p class="card-text">hellovandi(헬로반디) 펜션은 제주곶자왈반딧불이로 유명한 청수리평화동 청정귤밭에 위치한 편안한 휴식과 자연속의 힐링공간을</p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>제주도 제주시 한경면</p>
                                    <span class="open-close_green">Open Now</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 card-2">
                            <div class="card">
                                <a href="lodgingView.html"><img class="card-img-top" src="/resources/user/images/searchflex4.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">농촌의 한옥을 느낄 수 있는 부여농부의집
</h5>
                                    <ul class="card-rating">
                                        <li>4.5</li>
                                    </ul>
                                    <p class="card-text">한 독채로 하루에 한 팀만 받고 있으며 다른 게스트 없이 조용하고 한적한 공간을 원하시는 분들이 오시기에 좋습니다. </p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>충청남도 부여시 장암면</p>
                                    <span>Closed Now</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 card-2">
                            <div class="card">
                                <a href="lodgingView.html"><img class="card-img-top" src="/resources/user/images/searchflex5.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">몽상가의 시골집, LP and ART Stay
</h5>
                                    <ul class="card-rating">
                                        <li>4.5</li>
                                    </ul>
                                    <p class="card-text">강원도 평창, 700미터 고도 위 쉼여행 최적지. 산과 구름, 몇 채의 민가와 고랭지 채소밭 말고는 아무것도 없는 진짜 시골 여행!  </p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>강원도 평창군</p>
                                    <span class="open-close_green">Open Now</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 card-2">
                            <div class="card">
                                <a href="lodgingView.html"><img class="card-img-top" src="/resources/user/images/searchflex7.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">장산리 밭가운데 집</h5>
                                    <ul class="card-rating">
                                        <li class="card-rating-yellow">2.5</li>
                                        <li>3 ratings</li>
                                    </ul>
                                    <p class="card-text">시골에 있는 조용한 집입니다. 주인 부부가 함께 살고 있는 공간이며,
새벽 1시 이후에는 조용히 해주시길 바랍니다.</p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>충청남도 태안군 태안읍</p>
                                    <span class="open-close_green">Open Now</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 card-2">
                            <div class="card">
                                <a href="lodgingView.html"><img class="card-img-top" src="/resources/user/images/searchflex1.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">슬로우리제주A, 애월펜션,테라스한라산뷰,아늑하고깨끗한실내,욕조</h5>
                                    <ul class="card-rating">
                                        <li class="card-rating-yellow">2.5</li>
                                    </ul>
                                    <p class="card-text">슬로우리제주는 제주올레길 16코스 -수산봉,수산저수지- 를 끼고 있는 조용한 제주도 마을 애월읍 구엄리에 위치해있어요.</p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>제주도 제주시 애월읍</p>
                                    <span class="open-close_green">Open Now</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 card-2">
                            <div class="card">
                                <a href="lodgingView.html"><img class="card-img-top" src="/resources/user/images/searchflex1.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">슬로우리제주A, 애월펜션,테라스한라산뷰,아늑하고깨끗한실내,욕조</h5>
                                    <ul class="card-rating">
                                        <li class="card-rating-yellow">2.5</li>
                                    </ul>
                                    <p class="card-text">슬로우리제주는 제주올레길 16코스 -수산봉,수산저수지- 를 끼고 있는 조용한 제주도 마을 애월읍 구엄리에 위치해있어요.</p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>제주도 제주시 애월읍</p>
                                    <span class="open-close_green">Open Now</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 card-2">
                            <div class="card">
                                <a href="lodgingView.html"><img class="card-img-top" src="/resources/user/images/searchflex2.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">섬진강 시골집...매화.벚꽃.텃밭이 있는</h5>
                                    <ul class="card-rating">
                                        <li class="card-rating-yellow">2.5</li>
                                    </ul>
                                    <p class="card-text">
                                    귀촌을 꿈꾸는 호스트가 관리하는 소박한 시골집입니다. 섬진강이 내려다보이는 시골집 마루에서 새소리를 들으며 휴식을 취해보세요.
									</p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>전라남도 광양시 답면</p>
                                    <span class="open-close_green">Open Now</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 card-2">
                            <div class="card">
                                <a href="lodgingView.html"><img class="card-img-top" src="/resources/user/images/searchflex3.jpg" alt="Card image cap"></a>
                                <div class="card-body" style="height: 269px;">
                                    <h5 class="card-title">감귤밭안 작은독채-작은집-제주 맑은 별을 가장가까이 볼수있는 침실 옆 낭만다락테라스,
</h5>
                                    <ul class="card-rating">
                                        <li class="card-rating-yellow">2.5</li>
                                    </ul>
                                    <p class="card-text">
                                     프라이빗한 머뭄 / 작은독채, 	저희가 친환경으로 가꾸고 있는 귤밭위에 그림부부가 2년간 만들고 손질한 수공예집입니다.
									</p>
                                </div>
                                <div class="card-bottom">
                                    <p><i class="ti-location-pin"></i>제주도 서귀포시 남원읍</p>
                                    <span class="open-close_green">Open Now</span>
                                </div>
                            </div>
                        </div>                    
                    </div>
                </div>

                <div class="col-md-5 responsive-wrap map-wrap">
                    <div class="map-fix">
                        <!-- Google map will appear here! Edit the Latitude, Longitude and Zoom Level below using data-attr-*  -->
                        <a href="javascript:void(0);" class="map-close"><span class="ti-close"></span></a>
                        <div id="map" data-lat="40.674" data-lon="-73.945" data-zoom="12"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END FEATURED LISTING -->
    <!--============================= FOOTER =============================-->
    <%@ include file="../include/footer.jsp" %>
    <!--//END FOOTER -->





    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/resources/user/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/user/js/popper.min.js"></script>
    <script src="/resources/user/js/bootstrap.min.js"></script>
    <script src="/resources/user/js/script.js"></script>
    <!-- Map JS (Please change the API key below. Read documentation for more info) -->
    <script src="https://maps.googleapis.com/maps/api/js?callback=myMap&key=AIzaSyDMTUkJAmi1ahsx9uCGSgmcSmqDTBF9ygg"></script>

</body>

</html>