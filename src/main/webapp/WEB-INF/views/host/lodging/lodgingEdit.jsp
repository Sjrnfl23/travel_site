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
                                                <img src="../../resources/host/images/users/busan.jpg" alt="" class="avatar-xl rounded-circle img-thumbnail">
                                              
                                                <div class="mt-3">
                                                   <h5 class="mb-1">
                                                   제주하르방
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
                                                            	<input type="text" class="form-control" id="tvamAddressFull" name="tvamAddressFull"  value="<c:out value="${rt.tvamAddressFull}"/>">
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
                                                            	<input type="time" class="form-control" id="tvamCheckInTime" name="tvamCheckInTime" placeholder="15:00" value="<c:out value="${tvamCheckInTime}"/>">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th class="fw-bold">체크아웃 시간 :</th>
                                                            <td class="text-muted">
                                                            	<input type="time" class="form-control" id="tvamCheckOutTime" name="tvamCheckOutTime" placeholder="11:00" value="<c:out value="${tvamCheckInTime}"/>">
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
                                                       <input type="submit" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order" value="수정">
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

    </body>

</html>