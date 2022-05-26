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

                                <form action="mapUpdt" method="post" enctype="multipart/form-data">
                                	<div class="form-group">
                                        <label>여행 사진</label>
                                        <input type="hidden" id="tvplSeq" name="tvplSeq" value="<c:out value="${item2.tvplSeq}"/>">
                                        <div class="row">
			                                <div class="col-md-12">
			                                    <div class="custom-file">
			                                        <div class="add-gallery-text">
			                                            <i class="ti-gallery"></i>
			                                            <span>추억을 넣어보세요!</span>
			                                        </div>
													<input class="custom-file-input" id="file0" name="file0" type="file" onChange="upload(0, 2);">
													<ul id="ulFile0" class="list-group">
													</ul>                       
			                                    </div>
			                                </div>
                            			</div>
                                    </div>
                                    <div class="form-group">
                                    	<label>여행 제목</label>
                                    	<input type="text" name="tvplTitle" class="form-control" rows="3" value="<c:out value="${item2.tvplTitle}"/>">
                                    </div>
                                    <div class="form-group">
                                    	<label>여행 기분</label><br>
                                    	<div>
                                    		<input type="radio" name="tvplEmotionCd" id="smile" class="input-hidden" <c:if test="${item2.tvplEmotionCd==1}">checked</c:if> value="1"/>
											<label for="smile">
											  <img src="/resources/user/images/human_emotions/smile.png"  alt="I'm smile"/>
											</label>
											
											<input type="radio" name="tvplEmotionCd" id="smile2" class="input-hidden" <c:if test="${item2.tvplEmotionCd==2}">checked</c:if> value="2"/>
											<label for="smile2">
											  <img src="/resources/user/images/human_emotions/smile2.png" alt="I'm smile2"/>
											</label>
											
											<input type="radio" name="tvplEmotionCd" id="amazed" class="input-hidden" <c:if test="${item2.tvplEmotionCd==3}">checked</c:if> value="3"/>
											<label for="amazed">
											  <img src="/resources/user/images/human_emotions/amazed.png" alt="I'm amazed"/>
											</label>
											
											<input type="radio" name="tvplEmotionCd" id="wink" class="input-hidden" <c:if test="${item2.tvplEmotionCd==4}">checked</c:if> value="4"/>
											<label for="wink">
											  <img src="/resources/user/images/human_emotions/wink.png" alt="I'm wink"/>
											</label>
											
											<input type="radio" name="tvplEmotionCd" id="curious" class="input-hidden" <c:if test="${item2.tvplEmotionCd==5}">checked</c:if> value="5"/>
											<label for="curious">
											  <img src="/resources/user/images/human_emotions/curious.png" alt="I'm curious"/>
											</label>
											
											<input type="radio" name="tvplEmotionCd" id="unhappy" class="input-hidden" <c:if test="${item2.tvplEmotionCd==6}">checked</c:if> value="6"/>
											<label for="unhappy">
											  <img src="/resources/user/images/human_emotions/unhappy.png" alt="I'm unhappy"/>
											</label>
											
											<input type="radio" name="tvplEmotionCd" id="sad" class="input-hidden" <c:if test="${item2.tvplEmotionCd==7}">checked</c:if> value="7"/>
											<label for="sad">
											  <img src="/resources/user/images/human_emotions/sad.png" alt="I'm sad"/>
											</label>
											
											<input type="radio" name="tvplEmotionCd" id="angry" class="input-hidden" <c:if test="${item2.tvplEmotionCd==8}">checked</c:if> value="8"/>
											<label for="angry">
											  <img src="/resources/user/images/human_emotions/angry.png" alt="I'm happy"/>
											</label>
									    </div>
                                    </div>
                                    <div class="form-group">
                                        <label>여행 스토리</label>
                                        <textarea name="tvplDesc" class="form-control" rows="3"><c:out value="${item2.tvplDesc}"/></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="btn-submit" id="js-contact-btn" value="기록하기">
                                    </div>
                                    <div id="js-contact-result" data-success-msg="Success, We will get back to you soon" data-error-msg="Oops! Something went wrong">                            	
                                    	<input type="hidden" id="tvplLat" name="tvplLat" value="<c:out value="${item2.tvplLat}"/>"/>
										<input type="hidden" id="tvplLng" name="tvplLng" value="<c:out value="${item2.tvplLng}"/>"/>
									</div>
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
    <!-- Validate JS -->
    <script src="/resources/user/js/validate.js"></script>
    <!-- Contact JS -->
    <script src="/resources/user/js/contact.js"></script>
    <script src = "/resources/user/js/common.js"></script><!-- image -->
	<script src = "/resources/user/js/commonXdmin.js"></script><!-- image -->
	<script src = "/resources/user/js/constantsXdmin.js"></script><!-- image -->
    <script>
upload = function(seq,div){
	
	$("#ulFile" + seq).children().remove();
	
	var fileCount = $("input[type=file]")[seq].files.length;
	
	if(checkUploadedTotalFileNumber(fileCount, seq) == false) {return false;}
	
	var totalFileSize;
	for(var i = 0; i < fileCount; i++){
		if(div==1){
			if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		}else if(div==2){
			if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		}else {
			return false;
		}
		
		if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		totalFileSize += $("input[type=file]")[seq].files[i].size;
	}
	if(checkUploadedTotalFileSize(totalFileSize, seq) == false) {return false;}
	
	for(var i=0; i<fileCount; i++){
		addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
	}
}
addUploadLi = function(seq,index,name){
	
	var ul_list = $("#ulFile0");
	
	li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-item-center">';
	li = li + name;
	li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+index +')"><i class="bi bi-x-circle"></i></span>';
	li = li + '</li>';
	
	$("#ulFile"+seq).append(li);
}
delLi = function(seq, index){
	$("#li_"+seq+"_"+index).remove();
}
	
</script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7cd4aacffe9949b52780dbc9332fce55"></script>
    <script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(36.458812516698835, 128.16112057538854), // 지도의 중심좌표
        level: 13 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도를 클릭한 위치에 표출할 마커입니다
var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: new kakao.maps.LatLng(<c:out value="${item2.tvplLat}"/>, <c:out value="${item2.tvplLng}"/>)
}); 
// 지도에 마커를 표시합니다
marker.setMap(map);

// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    

    document.getElementById("tvplLat").value=latlng.getLat();
    document.getElementById("tvplLng").value=latlng.getLng();

});
</script>
<script>
// 엔터키 잠금
    $(document).keypress(function(e) { 

    	if (e.keyCode == 13) e.preventDefault(); 

    });

</script>
</body>

</html>