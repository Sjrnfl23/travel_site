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
    <!-- MapList CSS -->
    <link rel="stylesheet" href="/resources/user/css/styleMaplist.css">
</head>

<body>
	

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
    <!--============================= FEATURED LISTING =============================-->
    <section class="featured-wrap">
        <div class="container-fluid container-subpage">
            <div class="row" align=center>
                <div class="col-md-7 responsive-wrap">
                    <div class="row detail-filter-wrap">
                        <div class="col-md-4 featured-responsive">
                            <div class="detail-filter-text">
                                <p>34개의 <span>여행기록</span></p>
                            </div>
                        </div>
						<div class="col-md-8 featured-responsive">
                            <div class="detail-filter">
                                <a class="btn btn-outline-danger" href="/user/mapForm" role="button"><span class="ti-pencil"></span>기록</a>
                            </div>
                        </div>
                    </div>
                    	<div class="bgt">
	                        <div class="col-md-6">
	                            <!-- card-1 -->
	                            <div class="card input-form">
	                            <div id="List1">
                                	<a href="/resources/user/images/cherryblossom.jpg"><img class="card-img-top img_inside" src="/resources/user/images/cherryblossom.jpg" alt="Card image cap"></a>
                                </div>
	                                <div class="card-body">
	                                <div id="List2">
	                                    <a class="nav-link jal" href="mapEdit"><h2>굴포천 반월공원</h2><img src="/resources/user/images/human_emotions/smile.png" width="50px" height="50px" alt="I'm smile"/></a>
	                                </div>
	                                <div id="List3">
	                                    <div class="h3 ft">지도에 있는 마커를 선택하세요</div>
	                                </div>
	                                    <a class="btn btn-outline-danger" href="mapForm" role="button">삭제</a>
	                                </div>
                            </div>
	                        </div>
	                    </div>
                    </div>
                </div>
                    </div>
                </div>
 				<form id="formList" name="formList" method="post" action="/user/mapList">
				  <input type="hidden" id="tvplLat" name="tvplLat" > 
				  <input type="hidden" id="tvplLng" name="tvplLng" > 
				  <input type="hidden" id="tvplTitle" name="tvplTitle" > 
				  <input type="hidden" id="tvplDesc" name="tvplDesc" >
				  <input type="hidden" id="year" name="year" > 
				  <input type="hidden" id="month" name="month" > 
				  <input type="hidden" id="day" name="day" > 
				  <input type="hidden" id="uuidName" name="uuidName" >
                <div class="col-md-5 responsive-wrap map-wrap">
                    <div class="map-fix">
                        <!-- Google map will appear here! Edit the Latitude, Longitude and Zoom Level below using data-attr-*  -->
                        <a href="javascript:void(0);" class="map-close"><span class="ti-close"></span></a>
                        <div id="map" data-lat="40.674" data-lon="-73.945" data-zoom="12"></div>
                    </div>
                </div>
                 </form> 
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

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7cd4aacffe9949b52780dbc9332fce55&libraries=clusterer"></script> 
<script>
    var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
        center : new kakao.maps.LatLng(36.458812516698835, 128.16112057538854), // 지도의 중심좌표 
        level : 13 // 지도의 확대 레벨 
    });
    map.setMaxLevel(13);	// level 13 이하로 제한
    // 마커 클러스터러를 생성합니다 
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
        minLevel: 10 // 클러스터 할 최소 지도 레벨 
    }); 
 	
    
     var markers =[];	//markers 배열 생성 

     <c:forEach items='${list}' var='item' varStatus='status'>	//for문으로 position배열 안에 있는 좌표에 마커 입력
	 	var name = '${item.tvplTitle}';
	 	var desc = '${item.tvplDesc}';
	 	var lat = ${item.tvplLat};
	 	var lng = ${item.tvplLng};
	 	
	 	
	       var markerPosition  = new kakao.maps.LatLng(lat,lng);
	    
	       var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png'; // 마커이미지 주소
	       imageSize = new kakao.maps.Size(35, 35);                // 마커이미지의 크기
	       imageOption = {offset: new kakao.maps.Point(27, 69)};   // 마커의 좌표와 일치시킬 이미지 안에서의 좌표설정
	       
		   // 마커의 이미지정보를 가지고 있는 마커이미지를 생성 
		   var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
	    
	        var marker	= new kakao.maps.Marker({
	    		position: markerPosition,
	    		image: markerImage,
	    		map: map,
	    		clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정
	    	});
	        markers.push(marker);	//marker객체를 markers에 추가
	        
			 
			 kakao.maps.event.addListener(marker, 'click', function() {
			        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
			        $("#List1").empty();
			        $("#List2").empty();
			        $("#List3").empty();
				 $('#List1').append('<a href="/resources/user/Photomapuploaded/user/<c:out value="${item.year}"/>/<c:out value="${item.month}"/>/<c:out value="${item.day}"/>/<c:out value="${item.uuidName}"/>"><img class="card-img-top img_inside" src="/resources/user/Photomapuploaded/user/<c:out value="${item.year}"/>/<c:out value="${item.month}"/>/<c:out value="${item.day}"/>/<c:out value="${item.uuidName}"/>" alt="Card image cap"></a>');
				 $('#List2').append('<a class="nav-link jal" href="/user/mapEdit"><h2><c:out value="${item.tvplTitle}"/></h2><img src="/resources/user/images/human_emotions/smile.png" width="50px" height="50px" alt="Im smile"/></a>');
				 $('#List3').append('<div class="h3 ft"><c:out value="${item.tvplDesc}"/></div>');
			    });

	     </c:forEach>	// for문 끝 
    
    clusterer.addMarkers(markers);

</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>

</html>