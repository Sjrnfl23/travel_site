<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">

    <head>

        <meta charset="utf-8" />
        <title>now travel 호스트페이지</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="../../resources/host/images/favicon.ico">

        <!-- fullcalendar css -->
        <link href="../../resources/host/libs/fullcalendar/main.min.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap Css -->
        <link href="../../resources/host/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../resources/host/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../resources/host/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    
    <body>

    <!-- <body data-layout="horizontal"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">
	
            
           
              <!-- 예약 header s -->
            
             ﻿<%@ include file="../include/main/mainHeader.jsp" %>
             
              <!-- 예약 header e -->
              
              
            <!-- ========== Left Sidebar Start ========== -->
            
            ﻿<%@ include file="../include/main/mainSideBar.jsp" %>
            
            <!-- Left Sidebar End -->
            
	            <header class="ishorizontal-topbar">
	                <div class="topnav">
	                </div>
	            </header>
            </div>


            
            <!-- ============================================================== -->
            <!-- Left Sidebar End -->
            <!-- 공통부분 끝 -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- 컨텐츠 시시작 -->
            <!-- ============================================================== -->
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">

                            <div class="col-xl-12">
                                <div class="row">
                                    <div class="col-xl-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <div>
                                                    <div class="d-flex align-items-center">
                                                        <div class="avatar">
                                                            <div class="avatar-title rounded bg-soft-primary">
                                                                <i class="bx bx-check-shield font-size-24 mb-0 text-primary"></i>
                                                            </div>
                                                        </div>

                                                        <div class="flex-grow-1 ms-3">
                                                            <h6 class="mb-0 font-size-15">총 매출(월간)</h6>
                                                        </div>

                                                    </div>

                                                    <div>
                                                        <h4 class="mt-4 pt-1 mb-0 font-size-22"><c:out value="${item.sales}"/>원</h4>
                                                        <div class="d-flex mt-1 align-items-end overflow-hidden">
                                                            <div class="flex-grow-1">
                                                                <p class="text-muted mb-0 text-truncate">월간 총 매출</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- <div class="col-xl-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <div>
                                                    <div class="d-flex align-items-center">
                                                        <div class="avatar">
                                                            <div class="avatar-title rounded bg-soft-primary">
                                                                <i class="bx bx-cart-alt font-size-24 mb-0 text-primary"></i>
                                                            </div>
                                                        </div>

                                                        <div class="flex-grow-1 ms-3">
                                                            <h6 class="mb-0 font-size-15">총 수수료(월간)</h6>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <h4 class="mt-4 pt-1 mb-0 font-size-22">63,234원 <span class="text-danger fw-medium font-size-13 align-middle"> <i class="mdi mdi-arrow-down"></i> 3.68% </span> </h4>
                                                        <div class="d-flex mt-1 align-items-end overflow-hidden">
                                                            <div class="flex-grow-1">
                                                                <p class="text-muted mb-0 text-truncate">월간 총 수수료</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->
                               
                                    <div class="col-xl-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <div>
                                                    <div class="d-flex align-items-center">
                                                        <div class="avatar">
                                                            <div class="avatar-title rounded bg-soft-primary">
                                                                <i class="bx bx-package font-size-24 mb-0 text-primary"></i>
                                                            </div>
                                                        </div>

                                                        <div class="flex-grow-1 ms-3">
                                                            <h6 class="mb-0 font-size-15">예약수(월간)</h6>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <h4 class="mt-4 pt-1 mb-0 font-size-22"><c:out value="${item.reservationCount}"/>건</h4>
                                                        <div class="d-flex mt-1 align-items-end overflow-hidden">
                                                            <div class="flex-grow-1">
                                                                <p class="text-muted mb-0 text-truncate">월간 예약수</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

								</div>
                        </div>

                    </div>

                        <div class="row">
                            <div class="col-12">
                                <h4 class="mt-2 mb-4">실전을 위한 호스팅 팁</h4>
                                <div class="card-deck-wrapper">
                                    <div class="card-group">
                                        <div class="card mb-4">
                                            <img class="card-img-top img-fluid" src="../../resources/host/images/small/img-4.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h2 class="card-title" style="font-size: 20px;">숙소에 적합한 환불 정책 선택하기</h2>
                                                <p class="card-text">
                                                	<b>*유연 환불 정책 :</b> 게스트가 체크인 24시간 전까지 예약을 취소하면 전액 환불받을 수 있습니다.<br>
                                                	<b>*일반 환불 정책 :</b> 게스트가 체크인 5일 전까지 예약을 취소하면 전액 환불받을 수 있습니다. <br>
                                                	<b>*일반 환불 정책 :</b> 게스트가 체크인 14일 전, 예약 후 48시간까지 예약을 취소하면 전액 환불받을 수 있습니다. 
                                                </p>
                                            </div>
                                        </div>
                                        <div class="card mb-4">
                                            <img class="card-img-top img-fluid" src="../../resources/host/images/small/img-5.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title" style="font-size: 20px;">now travel이 호스트를 지원하는 방법</h4>
                                                <p class="card-text">
													<b><u>*호스트를 위한 손해배상</u></b> 가입 시 1,000,000원 이상의 호스트 손해보상이 포함되어 있어, 숙박 중 사용자가 호스트의 숙소나 물품을 파손하는 경우에
													피해를 보상받으실 수 있습니다. <br>
													<b>*</b>게스트는 예약에 앞서 성명, 생년월일, 전화번호, 이메일주소, 결제정보 등 <b><u>신원정보</u></b>를 now travel에 제공해야 합니다.
												</p>

                                            </div>
                                        </div>
                                        <div class="card mb-4">
                                            <img class="card-img-top img-fluid" src="../../resources/host/images/small/img-6.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title" style="font-size: 20px;">호스트가 직접 정하는 숙소 이용규칙</h4>
                                                <p class="card-text">
                                                	숙소 이용규칙을 통해 게스트에게 기대치를 명확히 전달함으로써 호스트와 게스트 모두에게 더 나은 경험을 제공할 수 있습니다. <br>
                                                	숙소 이용규칙에는 숙소에서 신발을 벗어야 하는지, 쓰레기 분리수거일에 쓰레기를 직접 비워야 하는지 등과 같은 자세한 내용을 담을 수도 있고, 
                                                	단순히 게스트에게 가족처럼 편하게 지내라는 메시지를 담을 수 있습니다. 
                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->
                        </div>        
                        <!-- end row -->
                        
				     <section class="main-block featured-wrap">
				        <div class="container-fluid"  style="margin: 0; padding: 0;">
				            <div class="row justify-content-center">
				                <div class="col-md-12">
				                    <div class="titile-block" style="position: relative;">
				                        <img src="../../resources/host/images/hostHome.jpg" width="100%">
				                        <span style="color:white; font-size:70px; font-weight:600; position: absolute; right:60%; top: 20%;">호스팅에 관해<br>궁금하신 점이<br>있나요?</span>
				                        <a href="hostDm"><button type="button" class="btn btn btn-light btn-lg" style="position: absolute; right:73%; top: 80%;">관리자에게 문의하세요</button></a>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </section>                       


                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->
				<br>
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © now travel.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Created <i class="mdi mdi-heart text-danger"></i> by <a href="https://Themesdesign.com/" target="_blank" class="text-reset">살려조</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->



        <!-- chat offcanvas -->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasActivity" aria-labelledby="offcanvasActivityLabel">
            <div class="offcanvas-header border-bottom">
              <h5 id="offcanvasActivityLabel">Offcanvas right</h5>
              <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              ...
            </div>
        </div>

        <!-- JAVASCRIPT -->
        <script src="../../resources/host/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../resources/host/libs/metismenujs/metismenujs.min.js"></script>
        <script src="../../resources/host/libs/simplebar/simplebar.min.js"></script>
        <script src="../../resources/host/libs/eva-icons/eva.min.js"></script>
        
        <!-- plugin js -->
        <script src="../../resources/host/libs/fullcalendar/main.min.js"></script>

        <!-- Calendar init -->
        <script src="../../resources/host/js/pages/calendar.init.js"></script>

        <script src="../../resources/host/js/app.js"></script>

    </body>

</html>