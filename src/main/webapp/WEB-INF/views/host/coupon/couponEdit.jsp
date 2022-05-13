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
        <!-- App Css-->
        <link href="../../resources/host/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />


    </head>

    
    <body>

    <!-- <body data-layout="horizontal"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">

            
             <!-- 쿠폰 header s -->
            
             ﻿<%@ include file="../include/coupon/header.jsp" %>
             
              <!-- 쿠폰 header e -->
              
              
            <!-- ========== Left Sidebar Start ========== -->
            
             ﻿<%@ include file="../include/coupon/sideBar.jsp" %>
            
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

           <form method="get" action="couponUpdate" >
           <input type="hidden" id="tvcpSeq" name="tvcpSeq" value="<c:out value="${rt.tvcpSeq}"/>">
           <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-xxl-5">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <div class="user-profile-img">
                                            <img src="../../resources/host/images/pattern-bg.jpg"
                                                class="profile-img profile-foreground-img rounded-top" style="height: 120px;"
                                                alt="">

                                            </div>
                                        </div>
                                        <!-- end user-profile-img -->


                                        <div class="p-4 pt-0">
                                            
                                            <div class="mt-n5 position-relative text-center border-bottom pb-3">
                                                <br><br><br>
                                              
                                                <div class="mt-3">
                                                   <h5 class="mb-1">봄맞이 쿠폰</h5>
                                                    <p class="text-muted mb-0">
                                                    </p>
                                                </div>

                                            </div>

                                            <div class="table-responsive mt-3 border-bottom pb-3">
                                                <table class="table align-middle table-sm table-nowrap table-borderless table-centered mb-0">
                                                    <tbody>

                                                        <tr>
                                                            <th class="fw-bold">
                                                                숙소이름 :</th>
                                                            <td class="text-muted">
                                                            	<p style="margin-top:18px; margin-left:7px;"><c:out value="${rt.tvamLodgingName}"/></p>
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                쿠폰이름 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="봄맞이 쿠폰" id="tvcpName" name="tvcpName" value="<c:out value="${rt.tvcpName}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                금액 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" placeholder="10,000원" id="tvcpPrice" name="tvcpPrice" value="<c:out value="${rt.tvcpPrice}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">시작일 :</th>
                                                            <td class="text-muted">
                                                            	<input type="date" class="form-control" placeholder="2022-04-30"  id="tvcpStartDate" name="tvcpStartDate" value="<c:out value="${rt.tvcpStartDate}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">종료일 :</th>
                                                            <td class="text-muted">
                                                            	<input type="date" class="form-control" placeholder="2022-05-30" id="tvcpEndDate" name="tvcpEndDate" value="<c:out value="${rt.tvcpEndDate}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">등록일 :</th>
                                                            <td class="text-muted"><c:out value="${rt.regDateTime}"/></td>
                                                        </tr>
                                                        <!-- end tr -->
                                                    </tbody><!-- end tbody -->
                                                </table>
                                            </div>

                                            

                                            <div class="p-3 mt-3">
                                                <div class="row text-center">
                                                    <div class="col-12">
                                                        <div class="p-1">
                                                            <h5 class="mb-1" style="text-align: left;">설명</h5>
                                                            <p class="text-muted mb-0" style="text-align: left;">
                                                            	<textarea class="form-control" id="tvcpDesc" name="tvcpDesc" placeholder="<c:out value="${rt.tvcpDesc}"/>"></textarea>
                                                            </p>                                                            
                                                        </div>
                                                    </div> 
                                                </div>
                                            </div>

                                            <div class="pt-2 text-center border-bottom pb-4">
                                                <a href="" class=""><i class="bx ms-1 align-middle"></i></a>
                                            </div>

                                            <div class="mt-3 pt-1 text-center">
                                                <ul class="list-inline mb-0">
                                                    <li class="list-inline-item">

                                                       <a href="couponView">

                                                       

                                                     		<input type="submit" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order" value="수정">
                                                       
                                                    </li>
                                                    <li class="list-inline-item">

                                                    	<a href="couponView">

                                                    	<a href="/host/couponView?tvcpSeq=<c:out value="${rt.tvcpSeq}"/>">

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
				</div>
        </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

</form>

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

        <!-- apexcharts -->
        <script src="../../resources/host/libs/apexcharts/apexcharts.min.js"></script>

        <!-- gridjs js -->
        <script src="../../resources/host/libs/gridjs/gridjs.umd.js"></script>

        <!-- datepicker js -->
        <script src="../../resources/host/libs/flatpickr/flatpickr.min.js"></script>

        <script src="../../resources/host/js/pages/couponList.init.js"></script>

        <script src="../../resources/host/js/app.js"></script>



    </body>

</html>