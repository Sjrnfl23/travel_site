<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
 <div class="vertical-menu">

                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a href="/host/mainView" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="/resources/admin/assets/images/logo-dark-sm.png" alt="" height="26">
                        </span>
                        <span class="logo-lg">
                            <img src="/resources/admin/assets/images/nowTravel_logo_180.jpg" alt="">
                        </span>
                    </a>

                    <a href="/host/mainView" class="logo logo-light">
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

                            <li>
                                <a href="/host/mainView">
                                    <i class="bx bx-home-alt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-dashboard">Home</span>
                                </a>
                            </li>


                            <li class="menu-title" data-key="t-applications">MANAGEMENT</li>

                            <li>
                                <a href="/host/lodgingList" >
                                    <i class="bx bx-store icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-ecommerce">숙소관리</span>
                                </a>
                            </li>

                            <li class="mm-active">
                                <a href="/host/couponList">
                                    <i class="bx bx-receipt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-invoices">쿠폰관리</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="/host/reservationList">
                                    <i class="bx bx-calendar-event icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-calendar">예약관리</span>
                                </a>
                            </li>

                            <li class="menu-title" data-key="t-applications">MESSENGER</li>

                            <li>
                                <a href="/host/hostDm">
                                    <i class="bx bx-user-circle icon nav-icon"></i>
                                    <span class="menu-item" data-key="t">문의관리</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>