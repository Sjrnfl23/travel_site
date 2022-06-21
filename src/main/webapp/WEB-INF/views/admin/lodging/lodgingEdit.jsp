<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="AdminServiceImpl" class="com.helpme.travel.module.admin.AdminServiceImpl"/>

<% pageContext.setAttribute("br", "\n"); %>
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

	<c:set var="listCodeLodging" value="${AdminServiceImpl.selectListForCacheLodging('1')}"/>	
	
    <form action="/admin/lodgingUpdt" method="post" autocomplete="off" enctype="multipart/form-data">
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
                                               <img src="/resources/uploaded/lodging/<c:out value="${rt.year}"/>/<c:out value="${rt.month}"/>/<c:out value="${rt.day}"/>/<c:out value="${rt.uuidName}"/> " alt="" class="avatar-xl rounded-circle img-thumbnail">
                                              
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
							                                         <div class="fallback">
																		<input class="form-control" id="file0" name="file0" type="file" style="display: none;" onChange="upload(0,2);" multiple>
																		<div class="addScroll" style="overflow: auto;">
																			<ul id="ulFile0" class="list-group">
																			</ul>
																		</div>
																		<label for="file0" class="form-label btn btn-info btn-sm" style="margin-top: 10px;">이미지첨부</label>
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
                                                            	<select id="tvamCategoryCd" class="form-select" name="tvamCategoryCd">
																<option value="">::선택::</option>
 																	<c:forEach items="${listCodeLodging}" var="itemLodging" varStatus="status">
																		<option value="<c:out value="${itemLodging.tvcdSeq}"/>"
																			<c:if test="${rt.tvamCategoryCd eq itemLodging.tvcdSeq}">selected</c:if>><c:out value="${itemLodging.tvcdName}"/>
																		</option>
																	</c:forEach>
                                                            	</select>
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">
                                                                주소 :</th>
                                                            <td class="text-muted">
                                                            	<div class="input-group mb-3">
									        						<input type="text" class="form-control" id="tvamAddress1" name="tvamAddress1" placeholder="주소" value="<c:out value="${rt.tvamAddress1}"/>">
									        						<div class="input-group-append">
									           				 			<button onclick="findAddr()" class="btn btn-outline-secondary" type="button">주소검색</button>
		<!-- 							           				 			<button onClick="sample4_execDaumPostcode()" class="btn btn-outline-secondary" type="button">주소검색</button> -->
									       							</div>
								    							</div>
							    								<div class="input-group mb-3">
							       									<input  type="text" class="form-control" placeholder="상세주소" id="tvamAddress2" name="tvamAddress2" value="<c:out value="${rt.tvamAddress2}"/>">
							                                    	<input type="hidden" id="tvamLat" name="tvamLat" value="<c:out value="${rt.tvamLat}"/>"/>		<!-- 위도 -->
																	<input type="hidden" id="tvamLng" name="tvamLng" value="<c:out value="${rt.tvamLng}"/>"/>		<!-- 경도 -->
																	<input type="hidden" name="tvamState" id="tvamState" value="<c:out value="${rt.tvamState}"/>">	<!-- 시 -->
        															<input type="hidden" name="tvamCity" id="tvamCity" value="<c:out value="${rt.tvamCity}"/>">		<!-- 군,구 -->				       									
							    								</div>
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
                                                            	<fmt:formatDate value="${rt.regDateTime}" pattern="yyyy-MM-dd"/>
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                         <tr>
                                                            <th class="fw-bold" style="margin-top:20px;">편의시설 보기</th>
                                                        	<td>
                                                        		<input type="button" style="margin-top:15px;" class="btn btn-info btn-sm" id="auth-terms-condition-check" data-bs-toggle="modal" data-bs-target="#exampleModal" value="편의시설 선택">
                                           
															<!-- Modal -->
															<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="exampleModalLabel">편의 시설</h5>
																			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																		</div>
																		<div class="modal-body" style="font-size: 17px;">
																			<div class="row">
																				<div class="col-4">
																					<input type="checkbox" id="tvamSeaNy" name="tvamSeaNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamSeaNy eq '1'}">checked</c:if>>
																					<label for="tvamSeaNy">해변과 인접</label>
																				</div>
																				<div class="col-4">
																					<input type="checkbox" id="tvamCookingNy" name="tvamCookingNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamCookingNy eq '1'}">checked</c:if>>
																					<label for="tvamCookingNy">주방</label>
																				</div>
																				<div class="col-4">
																					<input type="checkbox" id="tvamWifiNy" name="tvamWifiNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamWifiNy eq '1'}">checked</c:if>>
																					<label for="tvamWifiNy">무선인터넷</label>
																				</div>
										  									</div>
										     							<div class="row" style="margin-top:5px;">
										    								<div class="col-4">
										    									<input type="checkbox" id="tvamParkingRoomNy" name="tvamParkingRoomNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamParkingRoomNy eq '1'}">checked</c:if>>
										    									<label for="tvamParkingRoomNy">무료 주차</label>
										    								</div>
										    								<div class="col-4">
										    									<input type="checkbox" id="tvamJacuzziNy" name="tvamJacuzziNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamJacuzziNy eq '1'}">checked</c:if>>
																				<label for="tvamJacuzziNy">자쿠지</label>
																			</div>
																			<div class="col-4">
																				<input type="checkbox" id="tvamTvNy" name="tvamTvNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamTvNy eq '1'}">checked</c:if>>
																				<label for="tvamTvNy">TV</label>
																			</div>
																		</div>
																		<div class="row" style="margin-top:5px;">			
																			<div class="col-4">
																				<input type="checkbox" id="tvamMicrowaveNy" name="tvamMicrowaveNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamMicrowaveNy eq '1'}">checked</c:if>>
																				<label for="tvamMicrowaveNy">전자레인지</label>
																			</div>
																			<div class="col-4">
																				<input type="checkbox" id="tvamAirConditionerNy" name="tvamAirConditionerNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamAirConditionerNy eq '1'}">checked</c:if>>
																				<label for="tvamAirConditionerNy">에어컨</label>
																			</div>
																			<div class="col-4">
																				<input type="checkbox" id="tvamBbqGrillNy" name="tvamBbqGrillNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamBbqGrillNy eq '1'}">checked</c:if>>
																				<label for="tvamBbqGrillNy">바베큐</label>
																			</div>
																		</div>
																		<div class="row" style="margin-top:5px;">			
																			<div class="col-4">
																				<input type="checkbox" id="tvamPoolNy" name="tvamPoolNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamPoolNy eq '1'}">checked</c:if>>
																				<label for="tvamPoolNy">수영장</label>
																			</div>
																		<div class="col-4">
																			<input type="checkbox" id="tvamFridgeNy" name="tvamFridgeNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamFridgeNy eq '1'}">checked</c:if>>
																			<label for="tvamFridgeNy">냉장고</label>
																		</div>
																		<div class="col-4">
																			<input type="checkbox" id="tvamHeaterNy" name="tvamHeaterNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamHeaterNy eq '1'}">checked</c:if>>
																			<label for="tvamHeaterNy">히터</label>
																		</div>
										  							</div>
										  						</div>
																<div class="modal-header">
																	<h5 class="modal-title" id="exampleModalLabel">유의 사항</h5>
																</div>
																<div class="modal-body" style="font-size: 17px;">
																	<div class="row">
																		<div class="col-3">
																			<input type="checkbox" id="tvamSmokeNy" name="tvamSmokeNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamSmokeNy eq '1'}">checked</c:if>>
																			<label for="tvamSmokeNy">흡연 불가</label>
																		</div>
																		<div class="col-4">
																			<input type="checkbox" id="tvamPetNy" name="tvamPetNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamPetNy eq '1'}">checked</c:if>>
																			<label for="tvamPetNy">반려동물 동반 불가</label>
																		</div>
																		<div class="col-4" style="margin-left:8px;">
																			<input type="checkbox" id="tvamPartyNy" name="tvamPartyNy" style="margin-right:5px;" value="1" <c:if test="${rt.tvamPartyNy eq '1'}">checked</c:if>>
																			<label for="tvamPartyNy">파티나 이벤트 금지</label>
																		</div>
																	</div>
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary" data-bs-dismiss="modal">저장</button>
																</div>
															</div>
														</div>
													</div>
												</td>
											</tr>                                         
										</tbody><!-- end tbody -->
									</table>
								</div>

                                            <div class="p-3 mt-3">
                                                <div class="row text-center">
                                                    <div class="col-12">
                                                        <div class="p-1">
                                                            <h5 class="mb-1" style="text-align: left;">소개</h5>
                                                            <p class="text-muted mb-0" style="text-align: left;">
                                                            	<textarea class="form-control" name="tvamDesc" ><c:out value="${rt.tvamDesc}"/></textarea>
                                                            </p>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>


                                            <div class="mt-3 pt-1 text-center">
                                                <ul class="list-inline mb-0">
                                                    <li class="list-inline-item">
                                                     		<button type="submit" id="btnSubmit" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md">수정</button>
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
        

	<!-- image -->
	    <script src = "/resources/user/js/common.js"></script><!-- image -->
		<script src = "/resources/user/js/commonXdmin.js"></script><!-- image -->
		<script src = "/resources/user/js/constantsXdmin.js"></script><!-- image -->
    
    
<!-- 이미지, 파일 업로드 -->
<script>
upload = function(seq,div){
	
	$("#ulFile" + seq).children().remove();
	
	var fileCount = $("input[type=file]")[seq].files.length;
	
	if(checkUploadedTotalFileNumber(fileCount, seq) == false) {return false;}
	
	var totalFileSize;
	for(var i = 0; i < fileCount; i++){
		if(div==1){
			if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		}else if(div==2){
			if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		}else {
			return false;
		}
		
		if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		totalFileSize += $("input[type=file]")[seq].files[i].size;
	}
	if(checkUploadedTotalFileSize(totalFileSize, seq) == false) {return false;}
	
	for(var i=0; i<fileCount; i++){
		addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
	}
}
addUploadLi = function(seq,index,name){
	
	var ul_list = $("#ulFile0");
	
	li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-item-center">';
	li = li + name;
	li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+index +')"><i class="bi bi-x-circle"></i></span>';
	li = li + '</li>';
	
	$("#ulFile"+seq).append(li);
}
delLi = function(seq, index){
	$("#li_"+seq+"_"+index).remove();
}
</script>


        
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- appkey : 윤이나 -->
<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=e24be1770ff2a2001f5be79543c7a214&libraries=services"></script>
  
 <!-- 우편번호 찾기 -->
<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            /* document.getElementById('member_post').value = data.zonecode; */
            if(roadAddr !== ''){
                document.getElementById("tvamAddress1").value = roadAddr;
				
            } 
            else if(jibunAddr !== ''){
                document.getElementById("tvamAddress1").value = jibunAddr;
            }
        	/* lat and lng from address s */
			
    		// 주소-좌표 변환 객체를 생성
    		var geocoder = new daum.maps.services.Geocoder();
    		
    		// 주소로 좌표를 검색
    		geocoder.addressSearch(roadAddr, function(result, status) {
    		 
    			// 정상적으로 검색이 완료됐으면,
    			if (status == daum.maps.services.Status.OK) {
    				
    				document.getElementById("tvamLat").value=result[0].y;
    				document.getElementById("tvamLng").value=result[0].x;
    				
    			}
    		});
    		/* lat and lng from address e */
    		
            var sido = data.sido;
            var sigungu = data.sigungu
            if(sido == "서울" || sido == "대구" || sido == "대전" || sido == "광주" || sido == "부산" || sido == "울산"){
            	sigungu = sido;
            }
            console.log(sido);
            console.log(sigungu);
           	console.log(data.x)
            document.getElementById("tvamState").value = sido;
            document.getElementById("tvamCity").value = sigungu;
    		
        }
    }).open();
}
</script> 
<script>
$("#btnSubmit").on("click",function(){
	
	var fileCount = $("#file0")[0].files.length; 
	if(fileCount<3){
		alert("사진을 3장 이상 넣어주세요");
		return false;	
	}
	
	if($("#tvamCategoryCd").val() == 0){
		alert("카테고리를 선택해주세요.");
		return false;
	}
	
	if(document.getElementById("tvamAddress1").value == null || document.getElementById("tvamAddress1").value == "" ){
		alert("주소를 입력해주세요");
		return false;
	}
	
	
	
})


</script>  

</body>

</html>