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
    <!-- PhotomapEmotion -->
    <link rel="stylesheet" href="/resources/user/css/PhotomapEmotion.css">
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
    <section class="subpage-bg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block title-block_subpage">
                    <div class="listing-title">
                    	<span class="ti-map"></span>
                        <h2>여행 지도 수정</h2>
                    </div>
                        <p><a href="../map/mapList"> Home</a> / PhotoMap</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SUBPAGE HEADER BG -->
    <!--============================= CONTACT =============================-->
    <section class="main-block">
        <div class="container-fluid">
            <div class="row justify-content-center mb-5">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="address-box">
                                <span class="ti-map-alt"></span>
                                <h5>여행 지도</h5>
                                <p>나만의 여행지도를 완성해보세요.</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="address-box">
                                <span class="ti-pencil"></span>
                                <h5>여행 스토리</h5>
                                <p>여행에서의 나만의 추억을 기록해보세요.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h3 class="text-center pt-5 mb-5"><strong>여행 지도 정보 수정</strong></h3>
            <div class="row no-gutters justify-content-center">

                <div class="col-md-10 gray">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="contact-form pl-4 py-4">

                                <form action="php/contact.php" id="phpcontactform" method="post">
                                	<div class="form-group">
                                        <label>여행 사진</label>
                                        <div class="row">
			                                <div class="col-md-12">
			                                    <div class="custom-file">
			                                        <div class="add-gallery-text">
			                                            <i class="ti-gallery"></i>
			                                            <span>이미지 변경</span>
			                                        </div>
			                                        <input type="file" class="custom-file-input" id="customFile">
			                                    </div>
			                                </div>
                            			</div>
                                    </div>
                                    <div class="form-group">
                                    	<label>여행 제목</label>
                                    	<input type="text" name="title" class="form-control" rows="3">
                                    </div>
                                    <div class="form-group">
                                    	<label>여행 기분</label><br>
                                    	<div>
                                    		<input type="radio" name="emotion" id="smile" class="input-hidden" value="1"/>
											<label for="smile">
											  <img src="/resources/user/images/human_emotions/smile.png"  alt="I'm smile"/>
											</label>
											
											<input type="radio" name="emotion" id="smile2" class="input-hidden" value="2"/>
											<label for="smile2">
											  <img src="/resources/user/images/human_emotions/smile2.png" alt="I'm smile2"/>
											</label>
											
											<input type="radio" name="emotion" id="amazed" class="input-hidden" value="3"/>
											<label for="amazed">
											  <img src="/resources/user/images/human_emotions/amazed.png" alt="I'm amazed"/>
											</label>
											
											<input type="radio" name="emotion" id="wink" class="input-hidden" value="4"/>
											<label for="wink">
											  <img src="/resources/user/images/human_emotions/wink.png" alt="I'm wink"/>
											</label>
											
											<input type="radio" name="emotion" id="curious" class="input-hidden" value="5"/>
											<label for="curious">
											  <img src="/resources/user/images/human_emotions/curious.png" alt="I'm curious"/>
											</label>
											
											<input type="radio" name="emotion" id="unhappy" class="input-hidden" value="6"/>
											<label for="unhappy">
											  <img src="/resources/user/images/human_emotions/unhappy.png" alt="I'm unhappy"/>
											</label>
											
											<input type="radio" name="emotion" id="sad" class="input-hidden" value="7"/>
											<label for="sad">
											  <img src="/resources/user/images/human_emotions/sad.png" alt="I'm sad"/>
											</label>
											
											<input type="radio" name="emotion" id="angry" class="input-hidden" value="8"/>
											<label for="angry">
											  <img src="/resources/user/images/human_emotions/angry.png" alt="I'm happy"/>
											</label>

									    </div>
                                    </div>
                                    <div class="form-group">
                                        <label>여행 스토리</label>
                                        <textarea name="message" class="form-control" rows="3"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn-submit" id="js-contact-btn">기록하기</button>
                                    </div>
                                    <div id="js-contact-result" data-success-msg="Success, We will get back to you soon" data-error-msg="Oops! Something went wrong"></div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <!-- Google map will appear here! Edit the Latitude, Longitude and Zoom Level below using data-attr-*  -->
                            <div id="map" class="contact-map" data-lat="40.674" data-lon="-73.945" data-zoom="12"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <!--=============================//컨텐츠 끝 =============================-->
    
    
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
    <script src="/resources/user/js/script.js"></script>
    <!-- Map JS (Please change the API key below. Read documentation for more info) -->
    <script src="https://maps.googleapis.com/maps/api/js?callback=myMap&key=AIzaSyDMTUkJAmi1ahsx9uCGSgmcSmqDTBF9ygg"></script>
    <!-- Validate JS -->
    <script src="/resources/user/js/validate.js"></script>
    <!-- Contact JS -->
    <script src="/resources/user/js/contact.js"></script>
</body>

</html>