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

 		<!-- Themify Icon -->
	    <link rel="stylesheet" href="/resources/user/css/themify-icons.css">
	    <!-- Font Awesome -->
	    <link rel="stylesheet" href="/resources/user/css/font-awesome.min.css">
	    
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

            
         <!-- 예약 header s -->
            
             ﻿<%@ include file="../include/main/mainHostHeader.jsp" %>
             
              <!-- 예약 header e -->
              
              
            <!-- ========== Left Sidebar Start ========== -->
            
             ﻿<%@ include file="../include/main/mainHostSideBar.jsp" %>
            
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

           <form method="post" action="hostInfoUpdate" enctype="multipart/form-data">
           <input type="hidden" name="tvmmSeq" value="<c:out value="${rt.tvmmSeq}"/>">
           
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
                                               <img src="/resources/uploaded/member/<c:out value="${rt2.year}"/>/<c:out value="${rt2.month}"/>/<c:out value="${rt2.day}"/>/<c:out value="${rt2.uuidName}"/> " alt="" class="avatar-xl rounded-circle img-thumbnail">
                                              
                                                <div class="mt-3">
                                                   <h5 class="mb-1"><c:out value="${rt.tvmmName}"/></h5>
                                                    <p class="text-muted mb-0">
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star text-warning font-size-14"></i>
                                                        <i class="bx bxs-star-half text-warning font-size-14"></i>
                                                    </p>
                                                
                                                    
							                        <div class="row">
							                            <div class="col-12">
							                                <div class="card">
							                                    <div class="card-body">
					                                                <div class="fallback">
																		<input class="form-control" id="file0" name="file0" type="file" style="display: none;" onChange="upload(0,2);">
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

                                            </div>

                                            <div class="table-responsive mt-3 border-bottom pb-3">
                                                <table class="table align-middle table-sm table-nowrap table-borderless table-centered mb-0">
                                                    <tbody>
                                                        <tr>
                                                            <th class="fw-bold">
                                                                이름 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvmmName" value="<c:out value="${rt.tvmmName}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                이메일 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvmmEmailAccount" value="<c:out value="${rt.tvmmEmailAccount}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                비밀번호 :</th>
                                                            <td class="text-muted">
                                                            	<input type="password" class="form-control" name="tvmmPassword" value="<c:out value="${rt.tvmmPassword}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                비밀번호 확인 :</th>
                                                            <td class="text-muted">
                                                            	<input type="password" class="form-control" value="<c:out value="${rt.tvmmPassword}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">
                                                                전화번호 :</th>
                                                            <td class="text-muted">
                                                            	<input type="text" class="form-control" name="tvmmTelNumber" value="<c:out value="${rt.tvmmTelNumber}"/>">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                        <tr>
                                                            <th class="fw-bold">주소 :</th>
                                                            <td class="text-muted">
                                                            	 
                                            
                                         
                                                
                                                 			<div class="input-group mb-3">
		 
	        
							        						<input type="text" class="form-control" id="tvmmAddress1" name="tvmmAddress1" placeholder="주소" value="<c:out value="${rt.tvmmAddress1}"/>">
							        						
							        						<div class="input-group-append">
							           				 			<button onClick="sample4_execDaumPostcode()" class="btn btn-outline-secondary" type="button">주소검색</button>
							       							</div>
						    								</div>
						
						    								<div class="input-group mb-3">
						       									<input  type="text" class="form-control" placeholder="상세주소" id="tvmmAddress2" name="tvmmAddress2" value="<c:out value="${rt.tvmmAddress2}"/>">
						    								</div>
                                            
                                       
                                                           	</td>
                                                        </tr>
                                                        <!-- end tr -->

                                                        <tr>
                                                            <th class="fw-bold">생년월일 :</th>
                                                            <td class="text-muted">
                                                            	<input type="date" class="form-control" value="<c:out value="${rt.tvmmDob}"/>" name="tvmmDob">
                                                            </td>
                                                        </tr>
                                                        <!-- end tr -->
                                                       

                                                        <tr>
                                                            <th class="fw-bold">등록일 :</th>
                                                            <td class="text-muted"><c:out value="${rt.regDateTime}"/></td>
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
                                                            <p class="text-muted mb-0" style="text-align: left;">
                                                            	<textarea class="form-control" placeholder="...." name="tvmmDesc"></textarea>
                                                            </p>                                                            
                                                            </p>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="mt-3 pt-1 text-center">
                                                <ul class="list-inline mb-0">
                                                    <li class="list-inline-item">
                                                       
                                                     		<button type="submit" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 w-md" data-bs-toggle="modal" data-bs-target=".add-new-order">수정</button>
                                                      
                                                    </li>
                                                    <li class="list-inline-item">
                                                    	<a href="/host/hostInfoView">
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
        </div>
        <!-- END layout-wrapper -->

</form>

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
        
         <!-- jQuery, Bootstrap JS. -->
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	    <script src="/resources/user/js/jquery-3.2.1.min.js"></script>
	    <script src="/resources/user/js/popper.min.js"></script>
	    <script src="/resources/user/js/bootstrap.min.js"></script>
	    <script src="/resources/user/js/script.js"></script>
	    
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