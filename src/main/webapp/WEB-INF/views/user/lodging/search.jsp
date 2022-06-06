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
    	<form name="formList" id="formList" method="post">
	        <div class="container-fluid container-subpage">
 	        <input type="hidden" id="neLat" name="neLat">
	        <input type="hidden" id="neLng" name="neLng"> 
	        <input type="hidden" id="swLat" name="swLat"> 
	        <input type="hidden" id="swLng" name="swLng"> 
	            <div class="row">
	                <div class="col-md-7 responsive-wrap">
	                    <div class="row detail-filter-wrap">
	                        <div class="col-md-7 featured-responsive">
	                            <div class="detail-filter-text">
	                                <p><b>숙소</b></p>
	                            </div>
	                        </div>
	                        <br>
	                        <br>
	                        <div class="col-md-5 featured-responsive">
	                            <div class="detail-filter">
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
	
	                    <div class="row" id="lodgingapnd">
	                	</div>
	
	                <div class="col-md-5 responsive-wrap map-wrap">
	                    <div class="map-fix">
	                        <!-- Google map will appear here! Edit the Latitude, Longitude and Zoom Level below using data-attr-*  -->
	                        <a href="javascript:void(0);" class="map-close"><span class="ti-close"></span></a>
	                        <div id="map" data-lat="40.674" data-lon="-73.945" style="margin-top: 25px;"></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	      </div>
	   </form>
    </section>
    <!--//END FEATURED LISTING -->
    <!--============================= FOOTER =============================-->
    <%-- <%@ include file="../include/footer.jsp" %>  임시 주석처리--%>
    <!--//END FOOTER -->





    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/resources/user/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/user/js/popper.min.js"></script>
    <script src="/resources/user/js/bootstrap.min.js"></script>
    <script src="/resources/user/js/script.js"></script>
    <!-- Map JS (Please change the API key below. Read documentation for more info) -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7cd4aacffe9949b52780dbc9332fce55&libraries=services"></script>
    <script>
    
    $(document).ready(function(){
		 
		 getNowLatLng();
	});
    
		function getNowLatLng(){
			if (navigator.geolocation) {
				var options = {timeout:60000};
				navigator.geolocation.getCurrentPosition(showLocation, errorHandler, options);
			} else {
				alert("현재 위치 정보 사용이 불가능합니다.");
			}
		}

		function showLocation(position) {
			lat = position.coords.latitude;
			lng = position.coords.longitude;

			/* kakao source s */
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(33.452613,126.570888),
			level: 9
			};
				
			map = new kakao.maps.Map(container, options);
			map.setMaxLevel(13);	// level 13 이하로 제한
			


			/* kakao source e */

		// 지도 영역 변경시 실행되는 이벤트
		kakao.maps.event.addListener(map, 'bounds_changed', function() {             
		    	    
		    var neLat = this.getBounds().getNorthEast().getLat();
		    var neLng = this.getBounds().getNorthEast().getLng();
		    var swLat = this.getBounds().getSouthWest().getLat();
		    var swLng = this.getBounds().getSouthWest().getLng();
		    
			document.getElementById("neLat").value=neLat;
			document.getElementById("neLng").value=neLng;
			document.getElementById("swLat").value=swLat;
			document.getElementById("swLng").value=swLng;
			
			// 아작스
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/locationAjaxList"
				,data : {"neLat" : neLat, "neLng" : neLng, "swLat" : swLat, "swLng" : swLng}
				,success: function(response) {
					if(response.rt == "success") {
						var listHtml = "";

						if (response.count == 0) {
							listHtml += '<tr>';
							listHtml += '	<td class="text-center" colspan="11">There is no data!</td>';
							listHtml += '</tr>';
							$("#lodgingapnd").empty();	//초기화
							$("#lodgingapnd").append(listHtml);
						} else {
							for(var i in response.lodglist) {
							    listHtml += '<div class="col-md-6 card-2">';
							    listHtml += '<div class="card">';
							    listHtml += '<a href="/lodgingView?tvamSeq='+nullToEmpty(response.lodglist[i].tvamSeq)+'"><img class="card-img-top" src="/resources/user/images/searchflex1.jpg"  alt="Card image cap"></a>';
							    listHtml += '<div class="card-body" style="height: 269px;">';
							    listHtml += '<h5 class="card-title">'+nullToEmpty(response.lodglist[i].tvamLodgingName)+'</h5>';
							    listHtml += '<ul class="card-rating">';
							    listHtml += '<li>5.0</li>';
							    listHtml += '</ul>';
							    listHtml += '<p class="card-text">';
 							    listHtml += response.lodglist[i].tvamDesc;
							    listHtml += '</p>';
							    listHtml += '</div>';
							    listHtml += '<div class="card-bottom">';
							    listHtml += '<p><i class="ti-location-pin"></i>'+nullToEmpty(response.lodglist[i].tvamAddressFull)+'</p>';
							    listHtml += '</div>';
							    listHtml += '</div>';
							    listHtml += '</div>';
							    
							    // 마커
							    var markerPosition  = new kakao.maps.LatLng(response.lodglist[i].tvamLat, response.lodglist[i].tvamLng); 
								var marker = new kakao.maps.Marker({ position: markerPosition });
								marker.setMap(null);   
								marker.setMap(map);
							}
							$("#lodgingapnd").empty();	//초기화
							$("#lodgingapnd").append(listHtml);				
							
						}
					} else {
						/* by pass */
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
			
	    var moveLatLon = new kakao.maps.LatLng(lat, lng);
	    
	    // 지도 중심을 부드럽게 이동시킵니다
	    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
	    map.panTo(moveLatLon);
		}	
		
		function nullToEmpty (paramData) {
			if(paramData == null) {
				paramData = '';
			}
			return rtData = paramData;
		}
		
		function errorHandler(error) {
			if(error.code == 1) {
				alert("접근차단");
			} else if( err.code == 2) {
				alert("위치를 반환할 수 없습니다.");
			}
		}
		
		
	</script>

</body>

</html>