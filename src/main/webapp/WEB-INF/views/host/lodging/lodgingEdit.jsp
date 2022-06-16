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

        <!-- Plugins css -->
        <link href="../../resources/host/libs/dropzone/min/dropzone.min.css" rel="stylesheet" type="text/css" />     

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

            
             <!-- 숙소 header s -->
            
             ﻿<%@ include file="../include/lodging/header.jsp" %>
             
              <!-- 숙소 header e -->
              
              
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

               
                   <form method="post" action="lodgingUpdate" enctype="multipart/form-data">
                   <input type="hidden" name="tvamSeq" id="tvamSeq" value="<c:out value="${rt.tvamSeq}"/>">
                   
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
                                                                숙소이름 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" id="tvamLodgingName" name="tvamLodgingName"  value="<c:out value="${rt.tvamLodgingName}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->                                                                                                           
                                                    
                                                        <tr>
                                                            <th class="fw-bold">
                                                                카테고리 :</th>
                                                            <td class="text-muted">
                                                            	<select class="form-select" id="">
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
                                                            	
                                                 			<div class="input-group mb-3">
		 
	        
							        						<input type="text" class="form-control" id="tvamAddress1" name="tvamAddress1" placeholder="주소" value="<c:out value="${rt.tvamAddress1}"/>">
							        						
							        						<div class="input-group-append">
							           				 			<button onClick="sample4_execDaumPostcode()" class="btn btn-outline-secondary" type="button">주소검색</button>
							       							</div>
						    								</div>
						
						    								<div class="input-group mb-3">
						       									<input  type="text" class="form-control" placeholder="상세주소" id="tvamAddress2" name="tvamAddress2" value="<c:out value="${rt.tvamAddress2}"/>">
						    								</div>
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">전화번호 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" id="tvamTelNumber" name="tvamTelNumber" value="<c:out value="${rt.tvamTelNumber}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">최대인원 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" id="tvamMaxPersonCount" name="tvamMaxPersonCount" placeholder="8인" value="<c:out value="${rt.tvamMaxPersonCount}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">방 수 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" id="tvamRoomCount" name="tvamRoomCount"  value="<c:out value="${rt.tvamRoomCount}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">욕실 수 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" id="tvamShowerRoomCount" name="tvamShowerRoomCount" placeholder="1" value="<c:out value="${rt.tvamShowerRoomCount}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">침대 수 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" id="tvamBedCount" name="tvamBedCount" value="<c:out value="${rt.tvamBedCount}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">금액(1박 기준) :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" id="tvamAdultPrice" name="tvamAdultPrice" value="<c:out value="${rt.tvamAdultPrice}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">체크인 시간 :</th>
                                                            <td class="text-muted">
                                                            	<input type="time" class="form-control" id="tvamCheckInTime" name="tvamCheckInTime" placeholder="15:00" value="<c:out value="${rt.tvamCheckInTime}"/>">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th class="fw-bold">체크아웃 시간 :</th>
                                                            <td class="text-muted">
                                                            	<input type="time" class="form-control" id="tvamCheckOutTime" name="tvamCheckOutTime" placeholder="11:00" value="<c:out value="${rt.tvamCheckOutTime}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">영업시간 :</th>
                                                            <td class="text-muted">
                                                            	<input type="time" class="form-control" placeholder="09:00~18:00">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                       
                                                         <tr>
                                                            <th class="fw-bold" style="margin-top:20px;">편의 시설</th>
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
										      
										  <div class="col-4"><input type="checkbox" id="tvamSeaNy" name="tvamSeaNy" style="margin-right:5px;" value="1" <c:if test="${not empty tvamSeaNy}">checked</c:if> >
										  <label for="tvamSeaNy">해변과 인접</label></div>
										  
										  <div class="col-4"><input type="checkbox" id="tvamCookingNy" name="tvamCookingNy" style="margin-right:5px;" value="1">
										  <label for="tvamCookingNy">주방</label>
										  </div>
										  
										  <div class="col-4"><input type="checkbox" id="tvamWifiNy" name="tvamWifiNy" style="margin-right:5px;" value="1">
										  <label for="tvamWifiNy">무선인터넷</label>
										  </div>
										  
										  </div>
										  
										     <div class="row" style="margin-top:5px;">
										    <div class="col-4"><input type="checkbox" id="tvamParkingRoomNy" name="tvamParkingRoomNy" style="margin-right:5px;" value="1">
										    <label for="tvamParkingRoomNy">무료 주차</label>
										    </div>
										  <div class="col-4"><input type="checkbox" id="tvamJacuzziNy" name="tvamJacuzziNy" style="margin-right:5px;" value="1">
										  <label for="tvamJacuzziNy">자쿠지</label>
										  </div>
										  <div class="col-4"><input type="checkbox" id="tvamTvNy" name="tvamTvNy" style="margin-right:5px;" value="1">
										  <label for="tvamTvNy">TV</label>
										  </div>
										  
										  </div>
										  
										     <div class="row" style="margin-top:5px;">			
										  <div class="col-4"><input type="checkbox" id="tvamMicrowaveNy" name="tvamMicrowaveNy" style="margin-right:5px;" value="1">
										  <label for="tvamMicrowaveNy">전자레인지</label>
										  </div>
										  <div class="col-4"><input type="checkbox" id="tvamAirConditionerNy" name="tvamAirConditionerNy" style="margin-right:5px;" value="1">
										  <label for="tvamAirConditionerNy">에어컨</label>
										  </div>
										  <div class="col-4"><input type="checkbox" id="tvamBbqGrillNy" name="tvamBbqGrillNy" style="margin-right:5px;" value="1">
										  <label for="tvamBbqGrillNy">바베큐</label>
										  </div>
										  
										  </div>
										  
										   <div class="row" style="margin-top:5px;">			
										  <div class="col-4"><input type="checkbox" id="tvamPoolNy" name="tvamPoolNy" style="margin-right:5px;" value="1">
										  <label for="tvamPoolNy">수영장</label>
										  </div>
										  <div class="col-4"><input type="checkbox" id="tvamFridgeNy" name="tvamFridgeNy" style="margin-right:5px;" value="1">
										  <label for="tvamFridgeNy">냉장고</label>
										  </div>
										  <div class="col-4"><input type="checkbox" id="tvamHeaterNy" name="tvamHeaterNy" style="margin-right:5px;" value="1">
										  <label for="tvamHeaterNy">히터</label>
										  </div>
										  
										  </div>
										  
										  </div>
										  
										  <div class="modal-header">
										        <h5 class="modal-title" id="exampleModalLabel">유의 사항</h5>
										        
										      </div>
										       <div class="modal-body" style="font-size: 17px;">
										       
										       <div class="row">
										  <div class="col-3"><input type="checkbox" id="tvamSmokeNy" name="tvamSmokeNy" style="margin-right:5px;" value="1" checked><label for="tvamSmokeNy">흡연 불가</label></div>
										  <div class="col-4"><input type="checkbox" id="tvamPetNy" name="tvamPetNy" style="margin-right:5px;" value="1"><label for="tvamPetNy">반려동물 동반 불가</label></div>
										  <div class="col-4" style="margin-left:8px;"><input type="checkbox" id="tvamPartyNy" name="tvamPartyNy" style="margin-right:5px;" value="1"><label for="tvamPartyNy">파티나 이벤트 금지</label></div>
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
                                                            	<textarea class="form-control" id="tvamDesc" name="tvamDesc"><c:out value="${tvamDesc}"/></textarea>
                                                            </p>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>


                                            <div class="mt-3 pt-1 text-center">
                                                <ul class="list-inline mb-0">
                                                    <li class="list-inline-item">
                                                       <input type="submit" id="btnSubmit" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order" value="수정">
                                                    </li>
                                                    <li class="list-inline-item">
                                                    	<a href="/host/lodgingView?tvamSeq=<c:out value="${rt.tvamSeq}"/>">
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
				  <input type="hidden" name="tvamState" id="tvamState">
        <input type="hidden" name="tvamCity" id="tvamCity">
        
          </form>
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

        <script src="../../resources/host/js/pages/a_host_lodgingList.init.js"></script>

        <script src="../../resources/host/js/app.js"></script>
        
        <!-- Plugins js -->
        <script src="../../resources/host/libs/dropzone/min/dropzone.min.js"></script>
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

<script>

    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.

  var roadAddr;
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
               
                document.getElementById("tvamAddress1").value = roadAddr;
                var sido = data.sido;
                var sigungu = data.sigungu
                if(sido == "서울" || sido == "대구" || sido == "대전" || sido == "광주" || sido == "부산" || sido == "울산"  ){
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
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                
                </script>
                
    </body>

</html>