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
    <!-- 부트스트랩 CSS -->
<!-- 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">   -->  
    
    
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
    <form id="selectListSearchFlex" name="selectListSearchFlex" method="post" action="/user/searchFlex">
	    <section class="featured-wrap" >
	        <div class="container-fluid">
	            <div class="row">
	                <div class="col-md-12 responsive-wrap">
	                    <div class="row detail-filter-wrap"> 
	                        <div class="col-md-4 featured-responsive">
	                            <div class="detail-filter-text">
	                                <p>34개의 결과</p>
	                            </div>
	                        </div>
	                        <div class="col-md-8 featured-responsive">
	                            <div class="detail-filter">
	                                <form class="filter-dropdown">
	                                </form>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="map-responsive-wrap">
	                        <a class="map-icon btn btn-block" href="#"><i class="icon-location-pin"></i> <small>OPEN LISTING IN MAP</small></a>
	                    </div>
	                    <form name="subm">
		                    <div class="row detail-checkbox-wrap" style="margin: 20px;">
		                        <div class="col-xs-12 col-sm-12 col-md-12">
		                            <div class="detail-checkbox">
		                            	<div class="row">
			                            	<div class="col">
				                                <div class="md-checkbox">
				                                    <input id="i20" type="checkbox" name="shCheck" value="1" onclick='checkOnlyOne(this)' <c:if test="${vo.shCheck eq 1 }">checked</c:if>>
				                                    <label for="i20" style="font-size: 18px;">농장</label>
				                                </div>
			                                </div>
			                            	<div class="col">
				                                <div class="md-checkbox">
				                                    <input id="i21" type="checkbox" name="shCheck" onclick='checkOnlyOne(this)' value="2" <c:if test="${vo.shCheck eq 2 }">checked</c:if>>
				                                    <label for="i21" style="font-size: 18px;">멋진 수영장</label>
				                                </div>
			                                </div>
			                            	<div class="col">
				                                <div class="md-checkbox">
				                                    <input id="i22" type="checkbox" name="shCheck" onclick='checkOnlyOne(this)' value="3" <c:if test="${vo.shCheck eq 3 }">checked</c:if>>
				                                    <label for="i22" style="font-size: 18px;">해변 근처</label>
				                                </div>
			                                </div>
			                            	<div class="col">
				                                <div class="md-checkbox">
				                                    <input id="i23" type="checkbox" name="shCheck" value="4" onclick='checkOnlyOne(this)' <c:if test="${vo.shCheck eq 4 }">checked</c:if>>
				                                    <label for="i23" style="font-size: 18px;">호텔</label>
				                                </div>
			                                </div>
			                            	<div class="col">
				                                <div class="md-checkbox">
				                                    <input id="i24" type="checkbox" name="shCheck" value="5" onclick='checkOnlyOne(this)' <c:if test="${vo.shCheck eq 5 }">checked</c:if>>
				                                    <label for="i24" style="font-size: 18px;">펜션</label>
				                                </div>
			                                </div>
			                            	<div class="col">
				                                <div class="md-checkbox">
				                                    <input id="i25" type="checkbox" name="shCheck" value="6" onclick='checkOnlyOne(this)' <c:if test="${vo.shCheck eq 6 }">checked</c:if>>
				                                    <label for="i25" style="font-size: 18px;">전통한옥</label>
				                                </div>
			                                </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
								<input type="hidden" name="tmpInput">
							</form>
	                    <div class="row">
	                    <c:forEach items="${list}" var="item" varStatus="status">
	                        <div class="col-md-4 card-2">
	                            <!-- card-1 -->
	                            <div class="card">
	                                <a href="/lodgingView?tvamSeq=<c:out value="${item.tvamSeq}"/>"><img class="card-img-top" src="/resources/user/images/searchflex1.jpg" alt="Card image cap"></a>
	                                <div class="card-body" style="height: 269px;">
	                                    <h5 class="card-title"><c:out value="${item.tvamLodgingName}"/></h5>
	                                    <ul class="card-rating">
	                                        <li>5.0</li>
	                                    </ul>
	                                    <p class="card-text">
	                                    <c:out value="${item.tvamDesc}"/>
	                                    </p>
	                                </div>
	                                <div class="card-bottom">
	                                    <p><i class="ti-location-pin"></i><c:out value="${item.tvamAddress1}"/></p>
	                                </div>
	                            </div>
	                        </div>
	                      </c:forEach>
	            		</div>
	        		</div>
	        	</div>
	        </div>
	    </section>
    </form>
    <!--//END FEATURED LISTING -->
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
    <script src="/resources/user/js/script.js"></script>
    <!-- Map JS (Please change the API key below. Read documentation for more info) -->
    <script src="https://maps.googleapis.com/maps/api/js?callback=myMap&key=AIzaSyDMTUkJAmi1ahsx9uCGSgmcSmqDTBF9ygg"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
  function checkOnlyOne(element){
	  const checkboxes 
      = document.getElementsByName("shCheck");
	  
	  checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
    // 체크박스 선택 시
    if( $(element).is(':checked') ){
      document.subm.tmpInput.value = "checked";		

      // form submit
      document.subm.submit();	
    }
  }
</script>
</body>

</html>