<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<div class="nav-menu sticky-top">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="/user/mainView"><img src="/resources/user/images/nowTravel_logo.jpg" alt="logo"></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="ti-menu"></span>
              </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="/user/searchFlex">유연한검색</a>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    						회원정보
                    						<span class="ti-angle-down"></span>
                  						</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="/user/reservation">예약내역</a>
                                            <a class="dropdown-item" href="/user/mapList">여행지도</a>
                                            <a class="dropdown-item" href="/user/userInfoView">회원정보 수정</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/user/loginForm">Login</a>
                                    </li>
                                    <li><a href="../../host/loginForm" class="btn btn-outline-danger top-btn"><span class="ti-plus"></span>호스트 되기</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>