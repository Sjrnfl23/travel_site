<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

  <header id="page-topbar" class="isvertical-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
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
	
	                    <a href="/admin/mainView" class="logo logo-light">
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

                        <!-- start page title -->
                        <div class="page-title-box align-self-center d-none d-md-block">
                            <h4 class="page-title mb-0">예약 관리</h4>
                        </div>
                        <!-- end page title -->

                    </div>

                    <div class="d-flex">

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-search icon-sm align-middle"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0">
                                <form class="p-2">
                                    <div class="search-box">
                                        <div class="position-relative">
                                            <input type="text" class="form-control rounded bg-light border-0" placeholder="Search...">
                                            <i class="bx bx-search search-icon"></i>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon" id="page-header-notifications-dropdown-v"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-bell icon-sm align-middle"></i>
                                <span class="noti-dot bg-danger rounded-pill">2</span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-xl dropdown-menu-end p-0"
                                aria-labelledby="page-header-notifications-dropdown-v">
                                <div class="p-3">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <h5 class="m-0 font-size-15"> 알림 </h5>
                                        </div>
                                        <div class="col-auto">
                                            <a href="#!" class="small fw-semibold text-decoration-underline"> 모두 읽음으로 표시</a>
                                        </div>
                                    </div>
                                </div>
                                <div data-simplebar style="max-height: 250px;">

                                    <a href="#!" class="text-reset notification-item">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 avatar-sm me-3">
                                                <span class="avatar-title bg-success rounded-circle font-size-18">
                                                    <i class="bx bx-badge-check"></i>
                                                </span>
                                            </div>
                                            <div class="flex-grow-1">
                                                <p class="text-muted font-size-13 mb-0 float-end">2022-05-02</p>
                                                <h6 class="mb-1">쿠폰 승인 요청</h6>
                                                <div>
                                                    <p class="mb-0">쿠폰승인 요청이 들어왔습니다. 쿠폰승인 메뉴를 확인해주세요.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <a href="#!" class="text-reset notification-item">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <img src="../../resources/host/images/users/avatar-6.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                            </div>
                                            <div class="flex-grow-1">
                                                <p class="text-muted font-size-13 mb-0 float-end">2022-05-02</p>
                                                <h6 class="mb-1">신규 관리자 등록</h6>
                                                <div>
                                                    <p class="mb-1">새로운 관리자가 등록되었습니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="p-2 border-top d-grid">
                                    <a class="btn btn-sm btn-link font-size-14 btn-block text-center" href="javascript:void(0)">
                                        <i class="uil-arrow-circle-right me-1"></i> <span>더 보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
            
                         <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item user text-start d-flex align-items-center" id="page-header-user-dropdown-v"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="rounded-circle header-profile-user" src="/resources/uploaded/member/<c:out value="${sessYear2}"/>/<c:out value="${sessMonth2}"/>/<c:out value="${sessDay2}"/>/<c:out value="${sessUuidName2}"/> "
                                alt="Header Avatar">
                                <span class="d-none d-xl-inline-block ms-2 fw-medium font-size-15"> <c:out value="${adminSessUserType}"/> </span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end pt-0">
                                <div class="p-3 border-bottom">
                                    <h6 class="mb-0"> <c:out value="${adminSessName}"/></h6>
                                    <p class="mb-0 font-size-11 text-muted"><c:out value="${adminSessEmail}"/></p>
                                </div>
                                <a class="dropdown-item" href="adminInfoView"><i class="mdi mdi-account-circle text-muted font-size-16 align-middle me-2"></i> <span class="align-middle">회원정보</span></a>
<!--                                 <a class="dropdown-item" href="apps-chat.html"><i class="mdi mdi-message-text-outline text-muted font-size-16 align-middle me-2"></i> <span class="align-middle">Messages</span></a> -->
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-2"></i> <span class="align-middle" id="logOut">로그아웃</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

$("#logOut").on("click",function(){
	
	 $.ajax({
 		async: true 
 		,cache: false
 		,type: "post"
 		,url: "/admin/logoutProc"
 		,data : {}
 		,success: function(response) {
 			if(response.rt == "success") {
 				location.href = "/admin/loginForm";
 			} else {
 				alert("에러");
 			}
 		}
 		,error : function(jqXHR, textStatus, errorThrown){
 			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
 		}
 		
 	}); 
	
	
	
})

</script>