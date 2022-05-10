<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
            
             ﻿<%@ include file="../include/member/header.jsp" %>
             
              <!-- 쿠폰 header e -->
              
              
            <!-- ========== Left Sidebar Start ========== -->
            
             ﻿<%@ include file="../include/member/sideBar.jsp" %>
            
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
                                               <a href="/admin/memberForm"><button type="button" class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2" data-bs-toggle="modal" data-bs-target=".add-new-order">+ 등록</button></a>
                                                <button type="button" class="btn btn-danger btn-rounded waves-effect waves-light mb-2 me-2" data-bs-toggle="modal" data-bs-target=".add-new-order">선택삭제</button>
                                            </div>
                                        </div>
										<div class="table table-responsive" style="white-space:nowrap; margin:auto;">
										 <table class="table table-responsive">
                                        		<div class="gridjs-head">
                                        			<div class="gridjs-search">
                                        				<input type="search" placeholder="Type a keyword..." aria-label="Type a keyword..." class="gridjs-input gridjs-search-input">
                                        			</div>
                                        		</div>										 
											<thead style="background-color: rgb(248,249,250);">
												<tr>
													<th><input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input"></th>
													<th style="text-align: center;">No.</th>
													<th>이름</th>
													<th>이메일</th>
													<th>전화번호</th>
													<th>주소</th>
													<th>등록일</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${list}" var="rt" varStatus="status">
													<tr>
														<td><input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${rt.tvmmSeq}"/>" class="form-check-input"></td>
														<td><c:out value="${rt.tvmmSeq}"/></td>
														<td><c:out value="${rt.tvmmName}"/></td>
														<td><c:out value="${rt.tvmmEmailAccount}"/></td>
														<td><c:out value="${rt.tvmmTelNumber}"/></td>
														<td><c:out value="${rt.tvmmAddressFull}"/></td>
														<td>2022-05-10</td>
														<td>
															<div class="d-flex gap-3">
																<a href="/admin/memberView" data-bs-toggle="tooltip" data-bs-placement="top" title="수정" class="text-success">
																	<i class="mdi mdi-pencil font-size-18"></i>
																</a>
																<a href="" data-bs-toggle="tooltip" data-bs-placement="top" title="삭제" class="text-danger">
																	<i class="mdi mdi-delete font-size-18"></i>
																</a>
															</div>													
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
                                    </div>
                                   	<div class="gridjs-footer">
                                   		<div class="gridjs-pagination">
                                   			<div role="status" aria-live="polite" class="gridjs-summary" title="Page 1 of 4">
                                   				Showing <b>1</b> to <b>7</b> of <b>22</b> results
                                   			</div>
                                   		<div class="gridjs-pages">
                                   			<button tabindex="0" role="button" disabled="" title="Previous" aria-label="Previous" class="">Previous</button>
                                   			<button tabindex="0" role="button" class="gridjs-currentPage" title="Page 1" aria-label="Page 1">1</button>
                                   			<button tabindex="0" role="button" class="" title="Page 2" aria-label="Page 2">2</button>
                                   			<button tabindex="0" role="button" class="" title="Page 3" aria-label="Page 3">3</button>
                                   			<button tabindex="-1" class="gridjs-spread">...</button>
                                   			<button tabindex="0" role="button" title="Page 4" aria-label="Page 4">4</button>
                                   			<button tabindex="0" role="button" title="Next" aria-label="Next" class="">Next</button>
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
                </div>
                <br>
                

<!--                  Extra Large modal example
                <div class="modal fade add-new-order" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="myExtraLargeModalLabel">Add New Order</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                               <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label" for="AddOrder-Product">Choose Product</label>
                                        <select class="form-select">
                                            <option  selected> Select Product </option>
                                            <option>Adidas Running Shoes</option>
                                            <option>Puma P103 Shoes</option>
                                            <option>Adidas AB23 Shoes</option>
                                        </select>
                                    </div>
                                </div>
                                   <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label" for="AddOrder-Billing-Name">Billing Name</label>
                                            <input type="text" class="form-control" placeholder="Enter Billing Name" id="AddOrder-Billing-Name">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label">Date</label>
                                            <input type="text" class="form-control" placeholder="Select Date" id="order-date">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label" for="AddOrder-Total">Total</label>
                                            <input type="text" class="form-control" placeholder="$565" id="AddOrder-Total">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label" for="AddOrder-Payment-Status">Payment Status</label>
                                            <select class="form-select">
                                                <option  selected> Select Card Type </option>
                                                <option>Paid</option>
                                                <option>Chargeback</option>
                                                <option>Refund</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label" for="AddOrder-Payment-Method">Payment Method</label>
                                            <select class="form-select">
                                                <option  selected> Select Payment Method </option>
                                                <option> Mastercard</option>
                                                <option>Visa</option>
                                                <option>Paypal</option>
                                                <option>COD</option>
                                            </select>
                                        </div>
                                    </div>
                               </div>
                               <div class="row mt-2">
                                <div class="col-12 text-end">
                                    <button type="button" class="btn btn-danger me-1" data-bs-dismiss="modal"><i class="bx bx-x me-1"></i> Cancel</button>
                                    <button type="submit" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#success-btn" id="btn-save-event"><i class="bx bx-check me-1"></i> Confirm</button>
                                </div>
                            </div>

                            </div>
                        </div>/.modal-content
                    </div>/.modal-dialog
                </div>/.modal

 -->
<!--                  successfully modal 
                <div id="success-btn" class="modal fade" tabindex="-1" aria-labelledby="success-btnLabel" aria-hidden="true" data-bs-scroll="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-body">
                               <div class="text-center">
                                   <i class="bx bx-check-circle display-1 text-success"></i>
                                   <h4 class="mt-3">Order Completed Successfully</h4>
                               </div>
                            </div>
                        </div>/.modal-content
                    </div>/.modal-dialog
                </div>/.modal -->

                <!-- Modal -->
                <div class="modal fade orderdetailsModal" tabindex="-1" role="dialog" aria-labelledby=orderdetailsModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="orderdetailsModalLabel">Order Details</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p class="mb-2">Product id: <span class="text-primary">#SK2540</span></p>
                                <p class="mb-4">Billing Name: <span class="text-primary">Martin Gurley</span></p>

                                <div class="table-responsive">
                                    <table class="table align-middle table-nowrap">
                                        <thead>
                                            <tr>
                                            <th scope="col">Product</th>
                                            <th scope="col">Product Name</th>
                                            <th scope="col">Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">
                                                    <div>
                                                        <img src="/resources/admin/assets/images/product/img-1.png" alt="" class="rounded avatar-md">
                                                    </div>
                                                </th>
                                                <td>
                                                    <div>
                                                        <h5 class="text-truncate font-size-14">Home & Office Chair Crime</h5>
                                                        <p class="text-muted mb-0">$ 225 x 1</p>
                                                    </div>
                                                </td>
                                                <td>$ 255</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">
                                                    <div>
                                                        <img src="/resources/admin/assets/images/product/img-2.png" alt="" class="rounded avatar-md">
                                                    </div>
                                                </th>
                                                <td>
                                                    <div>
                                                        <h5 class="text-truncate font-size-14">Tuition Classes Chair Crime</h5>
                                                        <p class="text-muted mb-0">$ 145 x 1</p>
                                                    </div>
                                                </td>
                                                <td>$ 145</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-right">Sub Total:</h6>
                                                </td>
                                                <td>
                                                    $ 400
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-right">Shipping:</h6>
                                                </td>
                                                <td>
                                                    Free
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-right">Total:</h6>
                                                </td>
                                                <td>
                                                    $ 400
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end modal -->

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

        <script src="../../../../resources/admin/assets/js/pages/memberList.init.js"></script>

        <script src="../../../../resources/admin/assets/js/app.js"></script>



    </body>

</html>