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

        <link rel="stylesheet" href="../../resources/host/libs/gridjs/theme/mermaid.min.css">

        <!-- datepicker css -->
        <link rel="stylesheet" href="../../resources/host/libs/flatpickr/flatpickr.min.css">

        <!-- Bootstrap Css -->
        <link href="../../resources/host/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../resources/host/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
        <!-- App Css-->
        <link href="../../resources/host/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
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
    <!-- Icons Css -->
        <link href="../../../../resources/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

    </head>

    
    <body>

    <!-- <body data-layout="horizontal"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">

            
            <!-- 숙소 header s -->
            
             ﻿<%@ include file="../include/lodging/header.jsp" %>
             
              <!-- 숙소 header e -->
              
              
            <!-- ========== Left Sidebar Start ========== -->
            
             ﻿<%@ include file="../include/lodging/sideBar.jsp" %>
            
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
            <!-- Start right Content here -->
            <!-- 컨텐츠 시작 -->
            <!-- ============================================================== -->

           
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-xxl-5">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <div class="user-profile-img">

                                            <%-- <img src="/resources/admin/memberUploaded/admin/<c:out value="${rt.year}"/>/<c:out value="${rt.month}"/>/<c:out value="${rt.day}"/>/<c:out value="${rt.uuidName}"/>"
                                                class="profile-img profile-foreground-img rounded-top" style="height: 120px;"
                                                alt=""> --%>
                                                <!--  <img src="/resources/admin/assets/images/pattern-bg.jpg"> -->

                                            <img src="/resources/admin/assets/images/pattern-bg.jpg"
                                                class="profile-img profile-foreground-img rounded-top" style="height: 120px;"
                                                alt="">

                                            </div>
                                        </div>
                                        <!-- end user-profile-img -->


                                        <div class="p-4 pt-0">
                                            
                                            <div class="mt-n5 position-relative text-center border-bottom pb-3">
                                                <img src="/resources/uploaded/lodging/<c:out value="${rt.year}"/>/<c:out value="${rt.month}"/>/<c:out value="${rt.day}"/>/<c:out value="${rt.uuidName}"/> " alt="" class="avatar-xl rounded-circle img-thumbnail">
                                              
                                                <div class="mt-3">
                                                   <h5 class="mb-1"><c:out value="${rt.tvamLodgingName}"/></h5>
                                                    <p class="text-muted mb-0">
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star-half text-warning font-size-14"></i>
                                                    </p>
                                                </div>

                                            </div>

                                            <div class="table-responsive mt-3 border-bottom pb-3">
                                                <table class="table align-middle table-sm table-nowrap table-borderless table-centered mb-0">
                                                    <tbody>

                                                        <tr>
                                                            <th class="fw-bold">
                                                                숙소이름 :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamLodgingName}"/> </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                카테고리 :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamCategory}"/></td>
                                                        </tr>
                                                        <!-- end tr -->                                                        
                                                        <tr>
                                                            <th class="fw-bold">
                                                                주소 :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamAddressFull}"/></td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">전화번호 :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamTelNumber}"/></td>
                                                        </tr>
                                                        <!-- end tr -->

                                                       <%--  <tr>
                                                            <th class="fw-bold">최대인원 :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamMaxPersonCount}"/></td>
                                                        </tr>
                                                        <!-- end tr --> --%>
                                                        <tr>
                                                            <th class="fw-bold">방 수 :</th>
                                                            <td class="text-muted">거실<c:out value="${rt.tvamRoomCount}"/>/욕실<c:out value="${rt.tvamShowerRoomCount}"/>/방<c:out value="${rt.tvamRoomCount}"/></td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">욕실 수 :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamShowerRoomCount}"/></td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">침대 수 :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamBedCount}"/></td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">금액(1박 기준) :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamAdultPrice}"/></td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">체크인 시간 :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamCheckInTime}"/></td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">체크아웃 시간 :</th>
                                                            <td class="text-muted"><c:out value="${rt.tvamCheckOutTime}"/></td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">영업시간 :</th>
                                                            <td class="text-muted">09:00~18:00</td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">등록일 :</th>
                                                            <td class="text-muted"><c:out value="${rt.regDateTime}"/></td>
                                                        </tr>
                                                        <!-- end tr -->
                                                         <tr>

                                                            <th class="fw-bold" style="margin-top:20px;">편의시설</th>
                                                        <td class="text-muted">
										                        <div class="row">
											                        <c:if test="${rt.tvamSeaNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                        <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                        <span class="custom-control-description">해변과 인접</span>
														                     </label>
														                 </div>
														            </c:if>
														            <c:if test="${rt.tvamCookingNy eq '1'}">
														                 <div class="col-md-4">    
											                                <label class="custom-checkbox">
														                       <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                       <span class="custom-control-description">주방</span>
													                       </label>
											                            </div>
											                       	</c:if>
											                       	<c:if test="${rt.tvamWifiNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                     <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                     <span class="custom-control-description">무선 인터넷</span>
														                   </label>
														                </div>
														            </c:if>
										                        	<c:if test="${rt.tvamParkingRoomNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                        <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                        <span class="custom-control-description">건물 내 무료 주차</span>
														                     </label>
														                 </div>
													                 </c:if>
													                 <c:if test="${rt.tvamJacuzziNy eq '1'}">
														                 <div class="col-md-4">
											                                <label class="custom-checkbox">
														                       <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                       <span class="custom-control-description">자쿠지</span>
													                       </label>
											                            </div>
											                        </c:if>
											                        <c:if test="${rt.tvamTvNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                     <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                     <span class="custom-control-description">TV</span>
														                   </label>
														                </div>
																	</c:if>
																	<c:if test="${rt.tvamMicrowaveNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                        <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                        <span class="custom-control-description">전자레인지</span>
														                     </label>
														                 </div>
																	</c:if>
																	<c:if test="${rt.tvamAirConditionerNy eq '1'}">
														                 <div class="col-md-4">    
											                                <label class="custom-checkbox">
														                       <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                       <span class="custom-control-description">에어컨</span>
													                       </label>
											                            </div>
																	</c:if>
																	<c:if test="${rt.tvamBbqGrillNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                     <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                     <span class="custom-control-description">바베큐</span>
														                   </label>
														                </div>
														           </c:if>
														           <c:if test="${rt.tvamPoolNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                        <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                        <span class="custom-control-description">수영장</span>
														                     </label>
														                 </div>
														           </c:if>
														           <c:if test="${rt.tvamFridgeNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                        <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                        <span class="custom-control-description">냉장고</span>
														                     </label>
														                 </div>
														           </c:if>
														           <c:if test="${rt.tvamHeaterNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                        <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                        <span class="custom-control-description">히터</span>
														                     </label>
														                 </div>
														           </c:if>
														           <c:if test="${rt.tvamSmokeNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                        <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                        <span class="custom-control-description">흡연 금지</span>
														                     </label>
														                 </div>
														           </c:if>														           
														           <c:if test="${rt.tvamPetNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                        <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                        <span class="custom-control-description">반려동물 동반 불가</span>
														                     </label>
														                 </div>
														           </c:if>
														           <c:if test="${rt.tvamPartyNy eq '1'}">
											                            <div class="col-md-4">
											                                <label class="custom-checkbox">
														                        <span style="color: blue;"><i class="bi bi-check2-square"></i></span>
														                        <span class="custom-control-description">파티나 이벤트 금지</span>
														                     </label>
														                 </div>
														           </c:if>														           														           
										                        </div>                                                            
                                                            </td>                                                                                                                                     
                                                        </tr>
                                                        <!-- end tr -->
										                                    

                                                    </tbody><!-- end tbody -->
                                                </table>
                                            </div>

                                            

                                            <div class="p-3 mt-3">
                                                <div class="row text-center">
                                                    <div class="col-12">
                                                        <div class="p-1">
                                                            <h5 class="mb-1" style="text-align: left;">소개</h5>
                                                            <p class="text-muted mb-0" style="text-align: left;"><c:out value="${rt.tvamDesc}"/> </p>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                           

                                            <div class="mt-3 pt-1 text-center">
                                                <ul class="list-inline mb-0">
                                                    <li class="list-inline-item">
                                                       <a href="/host/lodgingEdit?tvamSeq=<c:out value="${rt.tvamSeq}"/>">
                                                     		<button type="button" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order">수정</button>
                                                       </a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                    	<a href="/host/lodgingList">
                                                       		<button type="button" class="btn btn-outline-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order">목록</button>
                                                    	</a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                    	<a href="lodgingDelete?tvamSeq=<c:out value="${rt.tvamSeq}"/>">
                                                       		<button type="button" id="btnDelete"  class="btn btn-danger btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order">삭제</button>
                                                    	</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
						</div>
					</div>
				</div>
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
        <script src="/../../resources/host/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="/../../resources/host/libs/metismenujs/metismenujs.min.js"></script>
        <script src="/../../resources/host/libs/simplebar/simplebar.min.js"></script>
        <script src="/../../resources/host/libs/eva-icons/eva.min.js"></script>

        <!-- apexcharts -->
        <script src="/../../resources/host/libs/apexcharts/apexcharts.min.js"></script>

        <!-- gridjs js -->
        <script src="/../../resources/host/libs/gridjs/gridjs.umd.js"></script>

        <!-- datepicker js -->
        <script src="/../../resources/host/libs/flatpickr/flatpickr.min.js"></script>

        <script src="/../../resources/host/js/pages/a_host_lodgingList.init.js"></script>

        <script src="/../../resources/host/js/app.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

$("#btnDelete").on("click",function(){
	confirm("정말 삭제하시겠습니까?");
	
});

	


</script>


    </body>

</html>