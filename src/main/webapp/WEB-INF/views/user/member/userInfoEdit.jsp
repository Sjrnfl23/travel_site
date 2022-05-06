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
    <!-- Hover Effects -->
    <link href="/resources/user/css/set1.css" rel="stylesheet">
    <!-- Main CSS -->
    <link rel="stylesheet" href="/resources/user/css/style.css">
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
                            <h5 class="modal-title"><img src="images/logo.png" alt="logo"></h5>
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
    <!--============================= SUBPAGE HEADER BG =============================-->
  <!--   <section class="subpage-bg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block title-block_subpage">
                        <h2>정보 확인</h2>
                        <p> <a href="index.html"> Home</a> / Add Listing</p>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!--// SUBPAGE HEADER BG -->
    <!--============================= ADD LISTING =============================-->
    <section class="main-block">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="listing-wrap">
                        <form action="#">
                            <!-- General Information -->
                            <div class="listing-title">
                                <span class="ti-files"></span>
                                <h4>내 정보 수정</h4>
                                <!-- <p>Write Something General Information About Your Listing</p> -->
                            </div>


                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>이름</label>
                                        <input type="text" class="form-control" value="김이젠"> 
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>전화번호</label>
                                          <input type="text" class="form-control" value="010-2324-2342" >  
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>비밀번호</label>
                                          <input type="password" class="form-control" value="010-2324-2342" >  
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>비밀번호 확인</label>
                                          <input type="password" class="form-control" value="010-2324-2342" >  
                                    </div>
                                </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                        <label>이메일</label>
                                        <input type="text" class="form-control" value="ezen@gmail.com"> 
                                    </div>
                                </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                        <label>주소</label>
                                        <div class="input-group mb-3" >
											<input type="text" class="form-control" id="ifmaAddress1" name="ifmaAddress1" placeholder="서울시 서초구 서초로 234">
											<button onClick="sample4_execDaumPostcode()" class="btn btn-outline-secondary" type="button">주소검색</button>
										</div>
											<input  type="text"	class="form-control" id="ifmaAddress1" name="ifmaAddress1"	placeholder="상세주소"> 
                                    </div>
                                </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                        <label>생년월일</label>
                                         <input type="date" class="form-control" value="1969-09-09"> 
                                    </div>
                                    
                                       <a href="userInfoEdit"  style="margin-top:10px;" class="btn btn-primary float-right">수정</a>
                                </div>
                             
                            </div>

                         
                            <!--//End General Information -->
                            <!-- Add Location -->
                           

                          </form>
                                    </div>
                                </div>
                            </div>

                            
                            <!--//End Opening Hours -->

                     
                    </div>
             
    </section>
    <!--//END ADD LISTING -->
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