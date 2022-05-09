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
            
             ﻿<%@ include file="../include/reservation/header.jsp" %>
             
              <!-- 쿠폰 header e -->
              
              
            <!-- ========== Left Sidebar Start ========== -->
<<<<<<< HEAD
            
             ﻿<%@ include file="../include/reservation/sideBar.jsp" %>
            
=======
            <div class="vertical-menu">

                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a href="../mainView" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="/resources/admin/assets/images/logo-dark-sm.png" alt="" height="26">
                        </span>
                        <span class="logo-lg">
                            <img src="/resources/admin/assets/images/nowTravel_logo_180.jpg" alt="">
                        </span>
                    </a>

                    <a href="../mainView" class="logo logo-light">
                        <span class="logo-lg">
                            <img src="/resources/admin/assets/images/logo-light-sm.png" alt="" height="26">
                        </span>
                        <span class="logo-sm">
                            <img src="/resources/admin/assets/images/nowTravel_logo_180.jpg" alt="" height="26">
                        </span>
                    </a>
                </div>

                <button type="button" class="btn btn-sm px-3 font-size-24 header-item waves-effect vertical-menu-btn">
                    <i class="bx bx-menu align-middle"></i>
                </button>

                <div data-simplebar class="sidebar-menu-scroll">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu list-unstyled" id="side-menu">
                            <li class="menu-title" data-key="t-menu">Home</li>

                            <li class="menu-title" data-key="t-applications">MANAGEMENT</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-store icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-ecommerce">숙소관리</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="../lodging/lodgingList" data-key="t-products">숙소 리스트</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-receipt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-invoices">쿠폰관리</span>
                                </a>
                                <ul class="sub-menu mm-collapse mm-show" aria-expanded="false">
                                    <li>
                                    	<a href="../admin/couponList" data-key="t-invoice-list">쿠폰 리스트</a>
                                    </li>
                                    <li><a href="../coupon/couponListPermit" data-key="t-invoice-detail">쿠폰 승인</a></li>
                                    <li><a href="../coupon/couponListBak" data-key="t-invoice-detail">쿠폰 내역</a></li>
                                </ul>
                            </li>
                            
                            <li  class="mm-active">
                                <a href="reservationList">
                                    <i class="bx bx-calendar-event icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-calendar"  class="active">예약관리</span>
                                </a>
                            </li>

                            <li class="menu-title" data-key="t-applications">MEMBER</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-user-circle icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-contacts">회원관리</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="../host/hostList" data-key="t-user-grid">호스트 관리</a></li>
                                    <li><a href="../member/memberList" data-key="t-user-list">사용자 관리</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>
>>>>>>> branch 'main' of https://github.com/Sjrnfl23/travel_site.git
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
                        <br>
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="position-relative">
                                            <div class="modal-button mt-2">
                                                <button type="button" class="btn btn-danger btn-rounded waves-effect waves-light mb-2 me-2" data-bs-toggle="modal" data-bs-target=".add-new-order">선택 삭제</button>
                                            </div>
                                        </div>
                                        <!-- js/pages/admin_reservationList.init.js 파일에 테이블 데이터있음 -->
                                        <div id="table-ecommerce-orders"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->
                       

                    </div>
                    <!-- container-fluid -->
                </div>
                <br>
                

<!--                  Extra Large modal example
                <div class="modal fade add-new-order" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="myExtraLargeModalLabel">Add New Order</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                               <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label" for="AddOrder-Product">Choose Product</label>
                                        <select class="form-select">
                                            <option  selected> Select Product </option>
                                            <option>Adidas Running Shoes</option>
                                            <option>Puma P103 Shoes</option>
                                            <option>Adidas AB23 Shoes</option>
                                        </select>
                                    </div>
                                </div>
                                   <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label" for="AddOrder-Billing-Name">Billing Name</label>
                                            <input type="text" class="form-control" placeholder="Enter Billing Name" id="AddOrder-Billing-Name">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label">Date</label>
                                            <input type="text" class="form-control" placeholder="Select Date" id="order-date">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label" for="AddOrder-Total">Total</label>
                                            <input type="text" class="form-control" placeholder="$565" id="AddOrder-Total">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label" for="AddOrder-Payment-Status">Payment Status</label>
                                            <select class="form-select">
                                                <option  selected> Select Card Type </option>
                                                <option>Paid</option>
                                                <option>Chargeback</option>
                                                <option>Refund</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label" for="AddOrder-Payment-Method">Payment Method</label>
                                            <select class="form-select">
                                                <option  selected> Select Payment Method </option>
                                                <option> Mastercard</option>
                                                <option>Visa</option>
                                                <option>Paypal</option>
                                                <option>COD</option>
                                            </select>
                                        </div>
                                    </div>
                               </div>
                               <div class="row mt-2">
                                <div class="col-12 text-end">
                                    <button type="button" class="btn btn-danger me-1" data-bs-dismiss="modal"><i class="bx bx-x me-1"></i> Cancel</button>
                                    <button type="submit" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#success-btn" id="btn-save-event"><i class="bx bx-check me-1"></i> Confirm</button>
                                </div>
                            </div>

                            </div>
                        </div>/.modal-content
                    </div>/.modal-dialog
                </div>/.modal

 -->
<!--                  successfully modal 
                <div id="success-btn" class="modal fade" tabindex="-1" aria-labelledby="success-btnLabel" aria-hidden="true" data-bs-scroll="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-body">
                               <div class="text-center">
                                   <i class="bx bx-check-circle display-1 text-success"></i>
                                   <h4 class="mt-3">Order Completed Successfully</h4>
                               </div>
                            </div>
                        </div>/.modal-content
                    </div>/.modal-dialog
                </div>/.modal -->

                <!-- Modal -->
                <div class="modal fade orderdetailsModal" tabindex="-1" role="dialog" aria-labelledby=orderdetailsModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="orderdetailsModalLabel">Order Details</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p class="mb-2">Product id: <span class="text-primary">#SK2540</span></p>
                                <p class="mb-4">Billing Name: <span class="text-primary">Martin Gurley</span></p>

                                <div class="table-responsive">
                                    <table class="table align-middle table-nowrap">
                                        <thead>
                                            <tr>
                                            <th scope="col">Product</th>
                                            <th scope="col">Product Name</th>
                                            <th scope="col">Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">
                                                    <div>
                                                        <img src="/resources/admin/assets/images/product/img-1.png" alt="" class="rounded avatar-md">
                                                    </div>
                                                </th>
                                                <td>
                                                    <div>
                                                        <h5 class="text-truncate font-size-14">Home & Office Chair Crime</h5>
                                                        <p class="text-muted mb-0">$ 225 x 1</p>
                                                    </div>
                                                </td>
                                                <td>$ 255</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">
                                                    <div>
                                                        <img src="/resources/admin/assets/images/product/img-2.png" alt="" class="rounded avatar-md">
                                                    </div>
                                                </th>
                                                <td>
                                                    <div>
                                                        <h5 class="text-truncate font-size-14">Tuition Classes Chair Crime</h5>
                                                        <p class="text-muted mb-0">$ 145 x 1</p>
                                                    </div>
                                                </td>
                                                <td>$ 145</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-right">Sub Total:</h6>
                                                </td>
                                                <td>
                                                    $ 400
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-right">Shipping:</h6>
                                                </td>
                                                <td>
                                                    Free
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-right">Total:</h6>
                                                </td>
                                                <td>
                                                    $ 400
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end modal -->

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

        <script src="../../../../resources/admin/assets/js/pages/reservationList.init.js"></script>

        <script src="../../../../resources/admin/assets/js/app.js"></script>



    </body>

</html>