<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="kr">

    <head>

        <meta charset="utf-8" />
        <title>now travel 관리자페이지</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="../../../../resources/admin/assets/images/favicon.ico">

        <link rel="stylesheet" href="../../../../resources/admin/assets/libs/gridjs/theme/mermaid.min.css">

        <!-- Plugins css -->
        <link href="../../../../resources/admin/assets/libs/dropzone/min/dropzone.min.css" rel="stylesheet" type="text/css" /> 

        <!-- datepicker css -->
        <link rel="stylesheet" href="../../../../resources/admin/assets/libs/flatpickr/flatpickr.min.css">

        <!-- Bootstrap Css -->
        <link href="../../../../resources/admin/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../../../resources/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../../../resources/admin/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />


    </head>

    
    <body>

    <!-- <body data-layout="horizontal"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">

            
            <!-- 쿠폰 header s -->
            
             ﻿<%@ include file="../include/lodging/header.jsp" %>
             
              <!-- 쿠폰 header e -->
              
              
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

    <form action="/admin/lodgingUpdt" method="get" autocomplete="off" enctype="multipart/form-data">
    	<input type="hidden" name="tvamSeq" value="<c:out value="${rt.tvamSeq}"/>">
           
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-xxl-5">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <div class="user-profile-img">
                                            <img src="/resources/admin/assets/images/pattern-bg.jpg"
                                                class="profile-img profile-foreground-img rounded-top" style="height: 120px;"
                                                alt="">

                                            </div>
                                        </div>
                                        <!-- end user-profile-img -->


                                        <div class="p-4 pt-0">
                                            
                                            <div class="mt-n5 position-relative text-center border-bottom pb-3">
                                                <img src="/resources/admin/assets/images/users/busan.jpg" alt="" class="avatar-xl rounded-circle img-thumbnail">
                                              
                                                <div class="mt-3">
                                                   <h5 class="mb-1">
                                                   	<c:out value="${rt.tvamLodgingName}"/>
                                                   </h5>
                                                    <p class="text-muted mb-0">
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star-half text-warning font-size-14"></i>
                                                    </p>
                                                </div>
							                        <div class="row">
							                            <div class="col-12">
							                                <div class="card">
							                                    <div class="card-body">
							                                        <div>
							                                            <form action="#" class="dropzone">
							                                                <div class="fallback">
							                                                    <input name="file" type="file" multiple="multiple">
							                                                </div>
							                                                <div class="dz-message needsclick">
							                                                    <div class="mb-3">
							                                                        <i class="display-4 text-muted mdi mdi-cloud-upload"></i>
							                                                    </div>
							                                                    
							                                                    <h4>Drop files here or click to upload.</h4>
							                                                </div>
							                                            </form>
							                                        </div>
							        
							                                        <div class="text-center mt-4">
							                                            <button type="button" class="btn btn-primary waves-effect waves-light">사진첨부</button>
							                                        </div>
							                                    </div>
							                                </div>
							                            </div> <!-- end col -->
							                        </div> <!-- end row -->
                                            </div>

                                            <div class="table-responsive mt-3 border-bottom pb-3">
                                                <table class="table align-middle table-sm table-nowrap table-borderless table-centered mb-0">
                                                    <tbody>
                                                        <tr>
                                                            <th class="fw-bold">
                                                                호스트 :</th>
                                                            <td class="text-muted">
                                                            	jeju@gmail.com
                                                            </td>
                                                        </tr>
                                                        <!-- end tr --> 
                                                        <tr>
                                                            <th class="fw-bold">
                                                                숙소이름 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamLodgingName" value="<c:out value="${rt.tvamLodgingName}"/>" placeholder="<c:out value="${rt.tvamLodgingName}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->                                                                                                           
                                                    
                                                        <tr>
                                                            <th class="fw-bold">
                                                                카테고리 :</th>
                                                            <td class="text-muted">
                                                            	<select class="form-select" name="" value="">
                                                            		<option>::카테고리::</option>
                                                            		<option>농장</option>
                                                            		<option>멋진 수영장</option>
                                                            		<option selected>해변 근처</option>
                                                            		<option>호텔</option>
                                                            		<option>펜션</option>
                                                            		<option>전통한옥</option>
                                                            	</select>
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">
                                                                주소 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamAddressFull" value="<c:out value="${rt.tvamAddressFull}"/>" placeholder="<c:out value="${rt.tvamAddressFull}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">전화번호 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamTelNumber" value="<c:out value="${rt.tvamTelNumber}"/>" placeholder="<c:out value="${rt.tvamTelNumber}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">최대인원 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamMaxPersonCount" value="<c:out value="${rt.tvamMaxPersonCount}"/>" placeholder="<c:out value="${rt.tvamMaxPersonCount}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">방 수 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamRoomCount" value="<c:out value="${rt.tvamRoomCount}"/>" placeholder="<c:out value="${rt.tvamRoomCount}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">욕실 수 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamShowerRoomCount" value="<c:out value="${rt.tvamShowerRoomCount}"/>" placeholder="<c:out value="${rt.tvamShowerRoomCount}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">침대 수 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamBedCount" value="<c:out value="${rt.tvamBedCount}"/>" placeholder="<c:out value="${rt.tvamBedCount}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">금액(1박 기준) :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamAdultPrice" value="<c:out value="${rt.tvamAdultPrice}"/>" placeholder="<c:out value="${rt.tvamAdultPrice}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">체크인 시간 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamCheckInTime" value="<c:out value="${rt.tvamCheckInTime}"/>" placeholder="<c:out value="${rt.tvamCheckInTime}"/>">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th class="fw-bold">체크아웃 시간 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvamCheckOutTime" value="<c:out value="${rt.tvamCheckOutTime}"/>" placeholder="<c:out value="${rt.tvamCheckOutTime}"/>">
                                                            </td>
                                                        </tr>

                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">등록일 :</th>
                                                            <td class="text-muted">
                                                            	2022-04-26
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
                                                            <p class="text-muted mb-0" style="text-align: left;">
                                                            	<textarea class="form-control" name="tvamDesc" value="<c:out value="${rt.tvamDesc}"/>" placeholder="<c:out value="${rt.tvamDesc}"/>"></textarea>
                                                            </p>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>


                                            <div class="mt-3 pt-1 text-center">
                                                <ul class="list-inline mb-0">
                                                    <li class="list-inline-item">
                                                     		<button type="submit" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md">수정</button>
                                                    </li>
                                                    <li class="list-inline-item">
                                                    	<a href="/admin/lodgingView">
                                                       		<button type="button" class="btn btn-outline-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order">취소</button>
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
				</form>
        </div>
        <!-- END layout-wrapper -->



        <!-- JAVASCRIPT -->
        <script src="../../../../resources/admin/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../../../resources/admin/assets/libs/metismenujs/metismenujs.min.js"></script>
        <script src="../../../../resources/admin/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="../../../../resources/admin/assets/libs/eva-icons/eva.min.js"></script>

        <!-- apexcharts -->
        <script src="../../../../resources/admin/assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- gridjs js -->
        <script src="../../../../resources/admin/assets/libs/gridjs/gridjs.umd.js"></script>

        <!-- datepicker js -->
        <script src="../../../../resources/admin/assets/libs/flatpickr/flatpickr.min.js"></script>

        <script src="../../../../resources/admin/assets/js/pages/admin_lodgingList.init.js"></script>

        <script src="../../../../resources/admin/assets/js/app.js"></script>

        <!-- Plugins js -->
        <script src="../../../../resources/admin/assets/libs/dropzone/min/dropzone.min.js"></script>

    </body>

</html>