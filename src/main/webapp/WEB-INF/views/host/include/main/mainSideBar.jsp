  <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  
  <div class="vertical-menu">

                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a href="../main/mainView.html" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="../../resources/host/images/logo-dark-sm.png" alt="" height="26">
                        </span>
                        <span class="logo-lg">
                            <img src="../../resources/host/images/nowtravel_logo_180.jpg" alt="">
                        </span>
                    </a>

                    <a href="../main/mainView.html" class="logo logo-light">
                        <span class="logo-lg">
                            <img src="../../resources/host/images/logo-light-sm.png" alt="" height="26">
                        </span>
                        <span class="logo-sm">
                            <img src="../../resources/host/images/nowtravel_logo_180.jpg" alt="" height="26">
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

                               <li class="mm-active">
                                <a href="../main/mainView.html">
                                    <i class="bx bx-home-alt icon nav-icon"></i>
                                    <span class="menu-item active" data-key="t-dashboard">Home</span>
                                </a>
                            </li>


                            <li class="menu-title" data-key="t-applications">MANAGEMENT</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-store icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-ecommerce">숙소관리</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="../lodging/lodgingList.html" data-key="t-products">숙소 리스트</a></li>
                                    <li><a href="../lodging/lodgingForm.html" data-key="t-products">숙소 등록</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-receipt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-invoices">쿠폰관리</span>
                                </a>
                                <ul class="sub-menu mm-collapse mm-show" aria-expanded="false">
                                    <li>
                                    	<a href="../coupon/couponList.html" data-key="t-invoice-list">쿠폰 리스트</a>
                                    </li>
                                    <li><a href="../coupon/couponForm.html" data-key="t-invoice-list">쿠폰 등록</a></li>
                                    <li><a href="../coupon/couponListPermit.html" data-key="t-invoice-detail">쿠폰 승인</a></li>
                                    <li><a href="../coupon/couponListBak.html" data-key="t-invoice-detail">쿠폰 내역</a></li>
                                </ul>
                            </li>
                            
                             <li>
                                <a href="../reservation/reservationList.html">
                                    <i class="bx bx-calendar-event icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-calendar">예약관리</span>
                                </a>
                            </li>

                            <li class="menu-title" data-key="t-applications">MESSENGER</li>

                            <li>
                                <a href="../dm/hostDm.html">
                                    <i class="bx bx-user-circle icon nav-icon"></i>
                                    <span class="menu-item" data-key="t">문의관리</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>