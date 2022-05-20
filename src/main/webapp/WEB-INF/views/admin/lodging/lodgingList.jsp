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

<form id="formList" name="formList" action="/admin/lodgingList">

	<input type="hidden" id="thisPage" name="thisPage"  value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" id="rowNumToShow" name="rowNumToShow"  value="<c:out value="${vo.rowNumToShow}" default="1"/>">
	<input type="hidden" id="tvamSeq" name="tvamSeq">
	<input type="hidden" id="checkboxSeqArray" name="checkboxSeqArray">
           
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
                        <br>
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                    	<div class="position-relative">
                                            <div class="modal-button mt-2">
                                                 <button type="button" class="btn btn-danger btn-rounded waves-effect waves-light mb-2 me-2" data-bs-toggle="modal" data-bs-target="#modalConfirm">선택삭제</button>
                                            </div>
                                        </div>
                                        
				                		<!-- 삭제버튼 Modal -->
										<div class="modal fade" id="modalConfirm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										  <div class="modal-dialog">
										    <div class="modal-content">
										      <div class="modal-header">
										        <h5 class="modal-title" id="exampleModalLabel">숙소 삭제</h5>
										        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										      </div>
										      <div class="modal-body">
										        삭제 하시겠습니까? 삭제된 내용은 복구되지 않습니다.
										      </div>
										      <div class="modal-footer">
										        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
										        <button type="button" id ="btnModalDelete" class="btn btn-primary">삭제</button>
										      </div>
										    </div>
										  </div>
										</div>                        
                                        
										<div class="table table-responsive" style="white-space:nowrap; margin:auto;">
										 <table class="table table-responsive">
                                        		<div class="gridjs-head">
                                        			<div class="gridjs-search">
                                        				<div style ="display: inline-block; padding-right: 0;">
				                            				<select name="shOption" id="shOption" class="form-select form-select-sm">
																<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>::검색구분::
																<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>숙소이름
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
                                        		</div>										 
											<thead style="background-color: rgb(248,249,250);">
												<tr>
													<th><input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input"></th>
													<th style="text-align: center;">No.</th>
													<th>카테고리</th>
													<th>숙소이름</th>
													<th>호스트</th>
													<th>주소</th>
													<th>전화번호</th>
													<th>최대인원</th>
													<th>등록일</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
										<c:choose>
											<c:when test="${fn:length(list) eq 0}">
												<tr>
													<td class="text-center" colspan="9">검색된 내용이 없습니다.</td>
												</tr>	
											</c:when>
											<c:otherwise>											
												<c:forEach items="${list}" var="rt" varStatus="status">
													<tr>
														<td><input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${rt.tvamSeq}"/>" class="form-check-input"></td>
														<td><c:out value="${rt.tvamSeq}"/></td>
														<td><c:out value="${rt.category}"/></td>
														<td><c:out value="${rt.tvamLodgingName}"/></td>
														<td><c:out value="${rt.host}"/></td>
														<td><c:out value="${rt.tvamAddressFull}"/></td>
														<td><c:out value="${rt.tvamTelNumber}"/></td>
														<td><c:out value="${rt.tvamMaxPersonCount}"/></td>
														<td>2022-05-10</td>
														<td>
															<div class="d-flex gap-3">
																<a href="/admin/lodgingView?tvamSeq=<c:out value="${rt.tvamSeq}"/>" data-bs-toggle="tooltip" data-bs-placement="top" title="수정" class="text-success">
																	<i class="mdi mdi-pencil font-size-18"></i>
																</a>
																<button type="button" class="btn" id="btnDelete" value="<c:out value="${rt.tvamSeq}"/>"  data-bs-toggle="modal" data-bs-target="#modalConfirm<c:out value="${rt.tvamSeq}"/>" aria-label="Close" style="color: red; padding: 0;"><i class="mdi mdi-delete font-size-18"></i></button>
																					
										                		<!-- 삭제버튼 Modal -->
																<div class="modal fade" id="modalConfirm<c:out value="${rt.tvamSeq}"/>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">숙소 삭제</h5>
																        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																      </div>
																      <div class="modal-body">
																        삭제 하시겠습니까? 삭제된 내용은 복구되지 않습니다.
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
																        <button type="button" onclick="location.href='javascript:goFelete(<c:out value="${rt.tvamSeq}"/>);'" id ="" class="btn btn-primary">삭제</button>
																      </div>
																    </div>
																  </div>
																</div> 
															</div>													
														</td>
													</tr>
												</c:forEach>
										</c:otherwise>
									</c:choose>	
											</tbody>
										</table>
                                    </div>
                                   	<div class="gridjs-footer">
                                   		<div class="gridjs-pagination">
                                   			<div role="status" aria-live="polite" class="gridjs-summary" title="Page 1 of 4">
                                   				Showing <b><c:out value="${vo.startRnumForOracle}"/></b> to <b><c:out value="${vo.endRnumForOracle}"/></b> of <b><c:out value="${vo.totalRows}"/></b> results
                                   			</div>
                                   		<div class="gridjs-pages">
											<nav aria-label="...">
											  <ul class="pagination">
											<c:if test="${vo.startPage gt vo.pageNumToShow}">
											     <li class="page-item"><a class="page-link" href="/admin/lodgingList?thisPage=${vo.startPage - 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">Previous</a></li>
											</c:if>
											<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
												<c:choose>
													<c:when test="${i.index eq vo.thisPage}">
											                <li class="page-item active"><a class="page-link" href="/admin/lodgingList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">${i.index}</a></li>
													</c:when>
													<c:otherwise>             
											            <li class="page-item"><a class="page-link" href="/admin/lodgingList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">${i.index}</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>     
											<c:if test="${vo.endPage ne vo.totalPages}">                
											    <li class="page-item"><a class="page-link" href="/admin/lodgingList?thisPage=${vo.endPage + 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">Next</a></li>
											</c:if>  
											  </ul>
											</nav>
                                   		</div>
                                   	</div>
                                   </div>                                    
                                </div>
                            </div>
                        </div>
                        <!-- end row -->
                        
                        

                       

                    </div>
                    <!-- container-fluid -->
                </div>
                <br>

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
            <!-- end main content-->

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

        <script src="/resources/admin/assets/js/pages/lodgingList.init.js"></script>

        <script src="../../../../resources/admin/assets/js/app.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/javascript">
	
goFelete = function(seq){
	
	var goUrlDel = "/admin/lodgingDel";
	
	$("#tvamSeq").val(seq);
	
	$("#formList").attr("action", goUrlDel);
	$("#formList").submit();
};

</script>



<script type="text/javascript">
	var goUrlList = "/admin/lodgingList";
	var goUrlForm = "/admin/lodgingForm";
	var goUrlMultiDel = "/admin/lodgingMultiDel";
	
	var seq = $("input:hidden[name=tvamSeq]");
	var form = $("form[name=formList]");
	
	var checkboxSeqArray = [];

	$("#checkboxAll").click(function() {
		if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
		else $("input[name=checkboxSeq]").prop("checked", false);
	});

	$("input[name=checkboxSeq]:checked").each(function() { 
		var total = $("input[name=checkboxSeq]").length;
		var checked = $("input[name=checkboxSeq]:checked").length;
		
		if(total != checked) $("#checkboxAll").prop("checked", false);
		else $("#checkboxAll").prop("checked", true);
	});
	

	$("#btnModalDelete").on("click", function(){
		
		$("input[name=checkboxSeq]:checked").each(function() {
			checkboxSeqArray.push($(this).val());	
		});
		
		
		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
		
		/* $("#modalConfirm").modal("hide"); */
		
		/* $("#formList").attr("action", "memberMultiUele").submit(); */
 		$("#formList").attr("action", goUrlMultiDel).submit();
	});
		
	
	
</script>


    </body>

</html>