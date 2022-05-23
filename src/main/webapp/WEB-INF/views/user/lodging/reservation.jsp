<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Surjith S M">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Favicons -->
    <link rel="shortcut icon" href="#">
    <!-- Page Title -->
    <link rel="shortcut icon" href="/resources/user/images/nowTravel_logo_browser.jpg" type="image/x-icon" />
    <title id="ctl00_headerTitle">여행을 떠나요. now travel!</title> 
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/user/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="/resources/user/css/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/resources/user/css/font-awesome.min.css">
    <!-- Hover Effects -->
    <link href="/resources/user/css/set1.css" rel="stylesheet">
    <!-- Main CSS -->
    <link rel="stylesheet" href="/resources/user/css/style.css">
    
        <link rel="stylesheet" href="/resources/user/assets/libs/gridjs/theme/mermaid.min.css">

        <!-- datepicker css -->
        <link rel="stylesheet" href="/resources/user/assets/libs/flatpickr/flatpickr.min.css">

        <!-- Bootstrap Css -->
        <link href="/resources/user/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="/resources/user/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="/resources/user/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
    
</head>

<body style="background-color: white;">
    <!--============================= HEADER =============================-->
    ﻿<%@ include file="../include/header.jsp" %>
    <!-- Log In & Signup -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="login" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">LOGIN</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="sign-up" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">SIGN UP</a>
                    </li>
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="login">
                        <div class="modal-header">
                            <h5 class="modal-title"><img src="/resources/user/images/logo.png" alt="logo"></h5>
                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span class="ti-close"></span>
        </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control add-listing_form" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control add-listing_form" placeholder="Password">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-primary">LOG IN</button>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="sign-up">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel"><img src="/resources/user/images/logo.png" alt="logo"></h5>
                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span class="ti-close"></span>
        </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control add-listing_form" id="name" placeholder="Your name">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control add-listing_form" id="email" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control add-listing_form" id="username" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control add-listing_form" id="password" placeholder="Password">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-primary">CREATE ACCOUNT</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Log In & Signup -->
    <!--//END HEADER -->
    <!--=============================// 공통부분 헤더 끝 =============================-->
    
    <!--============================= 컨텐츠시작 =============================-->
    <section class="subpage-bg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block title-block_subpage">
                        <h2>예약 내역</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SUBPAGE HEADER BG -->
    <!--============================= ADD LISTING =============================-->
    <section class="main-block">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="listing-wrap">
                        <form action="#">
                            <!-- General Information -->
                            <div class="listing-title">
                                <span class="ti-gift"></span>
                            </div>
	                        <div class="row">
	                            <div class="col-12">
	                                <div class="card">
	                                    <div class="card-body">
	                                    <div class="position-relative">
                                            <!-- <div class="modal-button mt-2">
                                                <button type="button" class="btn btn-danger btn-rounded waves-effect waves-light mb-2 me-2" data-bs-toggle="modal" data-bs-target=".add-new-order">선택삭제</button>
                                            </div> -->
                                        </div>
	                                        <div class="table table-responsive" style="white-space:nowrap; margin:auto;">
										 <table class="table table-responsive">
<%--                                         		<div class="gridjs-head">
                                        		 	<div class="gridjs-search">
                                        				<div style ="display: inline-block; padding-right: 0;">
				                            				<select name="shOption" id="shOption" class="form-select form-select-sm">
																<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>::검색구분::
																<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>숙소이름
																<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>사용자메일
																<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>사용자이름
															</select>                                         			
                                        				</div> 
                                        				<div style ="display: inline-block; padding-right: 0;">
                                        					<input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>" class="gridjs-input gridjs-search-input" placeholder="검색어를 입력해주세요.">
                                        				</div>
		                             	   				<button type="submit" class="btn btn-outline-secondary" name="search" id="btnSubmit">
															<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
																<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
															</svg>   				
			   											</button>           				
                                        			</div>
                                        		</div>	 --%>									 
											<thead style="background-color: rgb(248,249,250);">
												<tr>
													<th><input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input"></th>
													<th style="text-align: center;">No.</th>
													<th>예약현황</th>
													<th>숙소이름</th>
													<th>호스트</th>
													<th>사용자</th>
													<th>이름</th>
													<th>연락처</th>
													<th>인원</th>
													<th>시작일</th>
													<th>종료일</th>
													<th>가격</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
										<c:choose>
											<c:when test="${fn:length(list) eq 0}">
												<tr>
													<td class="text-center" colspan="12">검색된 내용이 없습니다.</td>
												</tr>	
											</c:when>
											<c:otherwise>												
												
													<tr>
														<td><input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${list.tvmmSeq}"/>" class="form-check-input"></td>
														<td><c:out value="${list.tvmmSeq}"/></td>
														<td>예약현황</td>
														<td><c:out value="${list.tvamLodgingName}"/></td>
														<td><c:out value="${list.hostEmail}"/></td>
														<td><c:out value="${list.tvmmEmailAccount}"/></td>
														<td><c:out value="${list.tvmmName}"/></td>
														<td><c:out value="${list.tvmmTelNumber}"/></td>
														<td><c:out value="${list.tvpmAdNumber}"/>명</td>
														<td><c:out value="${list.tvpmStartDate}"/></td>
														<td><c:out value="${list.tvpmEndDate}"/></td>
														<td><c:out value="${list.tvpmtotalPrice}"/>원</td>
														<td>
															<div class="d-flex gap-3">
																<a href="/reservation?tvmmSeq=<c:out value="${list.tvmmSeq}"/>" data-bs-toggle="tooltip" data-bs-placement="top" title="상세" class="text-success">
																	<i class="mdi mdi-pencil font-size-18"></i>
																</a>
																<button type="button" class="btn" id="btnDelete" value="<c:out value="${list.tvmmSeq}"/>" aria-label="Close" style="color: red; padding: 0;"><i class="mdi mdi-delete font-size-18"></i></button>
															</div>													
														</td>
													</tr>
												
											</c:otherwise>
										</c:choose>
											</tbody>
										</table>
                                    </div>	                                       
	                                    </div>
	                                </div>
	                            </div>
	                        </div>

                        <!-- end row -->
                    <!-- container-fluid -->
                        </form>
                    </div>               
                </div>
            </div>
        </div>
    </section>
    <!--//END ADD LISTING -->
    <!--=============================// 컨텐츠 끝 =============================-->
    
 	<!--============================= 공통부분 푸터 시작 =============================-->
    <!--============================= FOOTER =============================-->
    <%@ include file="../include/footer.jsp" %>
    <!--//END FOOTER -->
	<!--=============================// 공통부분 푸터 끝 =============================-->





    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/resources/user/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/user/js/popper.min.js"></script>
    <script src="/resources/user/js/bootstrap.min.js"></script>

        <!-- JAVASCRIPT -->
        <script src="/resources/user/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="/resources/user/assets/libs/metismenujs/metismenujs.min.js"></script>
        <script src="/resources/user/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="/resources/user/assets/libs/eva-icons/eva.min.js"></script>

        <!-- apexcharts -->
        <script src="/resources/user/assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- gridjs js -->
        <script src="/resources/user/assets/libs/gridjs/gridjs.umd.js"></script>

        <!-- datepicker js -->
        <script src="/resources/user/assets/libs/flatpickr/flatpickr.min.js"></script>

        <script src="/resources/user/assets/js/pages/reservationList.init.js"></script>

        <script src="/resources/user/assets/js/app.js"></script>


</body>

</html>