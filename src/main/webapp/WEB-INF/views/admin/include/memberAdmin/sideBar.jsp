<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
 <div class="vertical-menu">

                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a href="/admin/mainView" class="logo logo-dark">
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
                                <a href="/admin/mainView">
                                    <i class="bx bx-home-alt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-dashboard">Home</span>
                                </a>
                            </li>


                            <li class="menu-title" data-key="t-applications">MANAGEMENT</li>

                            <li>
                                <a href="/admin/lodgingList">
                                    <i class="bx bx-store icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-ecommerce">????????????</span>
                                </a>
                            </li>

                            <li>
                                <a href="/admin/couponList">
                                    <i class="bx bx-receipt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-invoices">????????????</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="/admin/reservationList">
                                    <i class="bx bx-calendar-event icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-calendar">????????????</span>
                                </a>
                            </li>

                            <li class="menu-title" data-key="t-applications">MEMBER</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow">
                                    <i class="bx bx-user-circle icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-contacts">????????????</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/admin/hostList" data-key="t-user-grid">????????? ??????</a></li>
                                    <li><a href="/admin/memberList" data-key="t-user-list">????????? ??????</a></li>
                                </ul>
                            </li>
                            
                            <li class="menu-title" data-key="t-applications">????????????</li>

                            <li>
                                <a href="/">
                                    <i class="bx bx-share-alt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-contacts">now travel ????????????</span>
                                </a>
                            </li>
                            <li>
                                <a href="/host/loginForm">
                                    <i class="bx bx-share-alt icon nav-icon"></i>
                                    <span class="menu-item" data-key="t-contacts">?????????????????? ????????????</span>
                                </a>
                            </li>                            
                            
                        </ul>
                     </div>
                    <!-- Sidebar -->
                </div>
            </div>