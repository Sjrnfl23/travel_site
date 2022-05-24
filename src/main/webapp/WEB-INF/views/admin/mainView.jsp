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
    <link rel="shortcut icon" href="/resources/admin/assets/images/favicon.ico">

    <!-- fullcalendar css -->
    <link href="/resources/admin/assets/libs/fullcalendar/main.min.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Css -->
    <link href="/resources/admin/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="/resources/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="/resources/admin/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
    
     <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/dashboard/">
	<!-- Custom styles for this template -->
	<link href="/resources/admin/assets/css/dashboard.css" rel="stylesheet">

<style>
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
  }

  @media (min-width: 768px) {
    .bd-placeholder-img-lg {
      font-size: 3.5rem;
    }
  }
</style>



</head>


<body>

<!-- <body data-layout="horizontal"> -->

	<!-- Begin page -->
	<div id="layout-wrapper">
	
	    
	    <!-- 쿠폰 header s -->
	    
	     ﻿<%@ include file="./include/main/header.jsp" %>
	     
	      <!-- 쿠폰 header e -->
	      
	      
	    <!-- ========== Left Sidebar Start ========== -->
	    
	     ﻿<%@ include file="./include/main/sideBar.jsp" %>
	    
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
	    <!-- 컨텐츠 시작 -->
	    <!-- ============================================================== -->
	    <div class="main-content">
	        <div class="page-content">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-xl-12">
	                        <div class="row">
	                            <div class="col-xl-3">
	                                <div class="card">
	                                    <div class="card-body">
	                                        <div>
	                                            <div class="d-flex align-items-center">
	                                                <div class="avatar">
	                                                    <div class="avatar-title rounded bg-soft-primary">
	                                                        <i class="bx bx-check-shield font-size-24 mb-0 text-primary"></i>
	                                                    </div>
	                                                </div>
	
	                                                <div class="flex-grow-1 ms-3">
	                                                    <h6 class="mb-0 font-size-15">총 매출(월간)</h6>
	                                                </div>
	                                            </div>
	
	                                            <div>
	                                                <h4 class="mt-4 pt-1 mb-0 font-size-22"><fmt:formatNumber value="${rt.sales}"/>원 <span class="text-success fw-medium font-size-13 align-middle"> <i class="mdi mdi-arrow-up"></i> 8.34% </span> </h4>
	                                                <div class="d-flex mt-1 align-items-end overflow-hidden">
	                                                    <div class="flex-grow-1">
	                                                        <p class="text-muted mb-0 text-truncate">모든 호스트 총 매출</p>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	
	                            <div class="col-xl-3">
	                                <div class="card">
	                                    <div class="card-body">
	                                        <div>
	                                            <div class="d-flex align-items-center">
	                                                <div class="avatar">
	                                                    <div class="avatar-title rounded bg-soft-primary">
	                                                        <i class="bx bx-cart-alt font-size-24 mb-0 text-primary"></i>
	                                                    </div>
	                                                </div>
	
	                                                <div class="flex-grow-1 ms-3">
	                                                    <h6 class="mb-0 font-size-15">총 수수료(월간)</h6>
	                                                </div>
	                                            </div>
	
	                                            <div>
	                                                <h4 class="mt-4 pt-1 mb-0 font-size-22"><fmt:formatNumber value="${rt.fees}"/>원<span class="text-danger fw-medium font-size-13 align-middle"> <i class="mdi mdi-arrow-down"></i> 3.68% </span> </h4>
	                                                <div class="d-flex mt-1 align-items-end overflow-hidden">
	                                                    <div class="flex-grow-1">
	                                                        <p class="text-muted mb-0 text-truncate">모든 호스트 총 수수료</p>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                       
	                            <div class="col-xl-3">
	                                <div class="card">
	                                    <div class="card-body">
	                                        <div>
	                                            <div class="d-flex align-items-center">
	                                                <div class="avatar">
	                                                    <div class="avatar-title rounded bg-soft-primary">
	                                                        <i class="bx bx-package font-size-24 mb-0 text-primary"></i>
	                                                    </div>
	                                                </div>
	
	                                                <div class="flex-grow-1 ms-3">
	                                                    <h6 class="mb-0 font-size-15">예약수(월간)</h6>
	                                                </div>
	                                            </div>
	
	                                            <div>
	                                                <h4 class="mt-4 pt-1 mb-0 font-size-22"><fmt:formatNumber value="${rt.reservationCount}"/>건 <span class="text-danger fw-medium font-size-13 align-middle"> <i class="mdi mdi-arrow-down"></i> 2.64% </span> </h4>
	                                                <div class="d-flex mt-1 align-items-end overflow-hidden">
	                                                    <div class="flex-grow-1">
	                                                        <p class="text-muted mb-0 text-truncate">월간 예약수</p>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <div class="col-xl-3">
	                                <div class="card">
	                                    <div class="card-body">
	                                        <div>
	                                            <div class="d-flex align-items-center">
	                                                <div class="avatar">
	                                                    <div class="avatar-title rounded bg-soft-primary">
	                                                        <i class="bx bx-rocket font-size-24 mb-0 text-primary"></i>
	                                                    </div>
	                                                </div>
	
	                                                <div class="flex-grow-1 ms-3">
	                                                    <h6 class="mb-0 font-size-15">회원수</h6>
	                                                </div>
	                                            </div>
	
	                                            <div>
	                                                <h4 class="mt-4 pt-1 mb-0 font-size-22"><fmt:formatNumber value="${rt.memberCount}"/>명 <span class="text-success fw-medium font-size-13 align-middle"> <i class="mdi mdi-arrow-down"></i> 5.79% </span> </h4>
	                                                 <div class="d-flex mt-1 align-items-end overflow-hidden">
	                                                     <div class="flex-grow-1">
	                                                         <p class="text-muted mb-0 text-truncate">총 사용자 수</p>
	                                                     </div>
	                                                 </div>
	                                             </div>
	                                         </div>
	                                     </div>
	                                 </div>
	                             </div>
							</div>
	                 	</div>
	             	</div>
	             
					<div class="row">
						<div class="col-xl-12">
							<div class="card">
								<div class="card-body">
									<div class="container-fluid">
										<div class="row">
											<main class="col-md-9 ms-sm-auto col-lg-12 px-md-4">
												<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					 								<h1 class="h4">Dashboard (매출)</h4>
												</div>
												<canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
											</main>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	
	
	
	
	<!--                        <div class="row">
	                           <div class="col-12">
	                               <div class="row">
	                                   <div class="col-xl-3">
	                                       <div class="card card-h-100">
	                                           <div class="card-body">
	                                               <button class="btn btn-primary w-100" id="btn-new-event"><i class="mdi mdi-plus"></i>새 일정 등록하기</button>
	                                               
	                                               <div id="external-events">
	                                                   <br>
	                                                   <p class="text-muted">일정을 끌어다 놓거나 클릭해서 새 일정을 만들 수 있습니다.</p>
	                                                   <div class="external-event fc-event bg-success" data-class="bg-success">
	                                                       <i class="mdi mdi-checkbox-blank-circle font-size-11 me-2"></i>기본일정
	                                                   </div>
	                                                   <div class="external-event fc-event bg-info" data-class="bg-info">
	                                                       <i class="mdi mdi-checkbox-blank-circle font-size-11 me-2"></i>회의
	                                                   </div>
	                                                   <div class="external-event fc-event bg-warning" data-class="bg-warning">
	                                                       <i class="mdi mdi-checkbox-blank-circle font-size-11 me-2"></i>업무
	                                                   </div>
	                                                   <div class="external-event fc-event bg-danger" data-class="bg-danger">
	                                                       <i class="mdi mdi-checkbox-blank-circle font-size-11 me-2"></i>기타
	                                                   </div>
	                                               </div>
	
	                                               <div class="row justify-content-center mt-5">
	                                                   <img src="/resources/admin/assets/images/calendar-img.png" alt="" class="img-fluid d-block">
	                                               </div>
	
	                                           </div>
	                                       </div>
	                                   </div> end col
	
	                                   <div class="col-xl-9">
	                                       <div class="card card-h-100">
	                                           <div class="card-body">
	                                               <div id="calendar"></div>
	                                           </div>
	                                       </div>
	                                   </div> end col
	                               </div> 
	
	                               <div style='clear:both'></div>
	                                   
	                               Add New Event MODAL
	                               <div class="modal fade" id="event-modal" tabindex="-1">
	                                   <div class="modal-dialog modal-dialog-centered">
	                                       <div class="modal-content">
	                                           <div class="modal-header py-3 px-4 border-bottom-0">
	                                               <h5 class="modal-title" id="modal-title">Event</h5>
	
	                                               <button type="button" class="btn-close" data-bs-dismiss="modal"
	                                                   aria-hidden="true"></button>
	
	                                           </div>
	                                           <div class="modal-body p-4">
	                                               <form class="needs-validation" name="event-form" id="form-event" novalidate>
	                                                   <div class="row">
	                                                       <div class="col-12">
	                                                           <div class="mb-3">
	                                                               <label class="form-label">일정 이름</label>
	                                                               <input class="form-control" placeholder="일정 이름을 입력해주세요."
	                                                                   type="text" name="title" id="event-title" required value="" />
	                                                               <div class="invalid-feedback">일정 이름을 입력해주세요.</div>
	                                                           </div>
	                                                       </div>
	                                                       <div class="col-12">
	                                                           <div class="mb-3">
	                                                               <label class="form-label">카테고리</label>
	                                                               <select class="form-select shadow-none" name="category"
	                                                                   id="event-category" required>
	                                                                   <option value=""  selected> --카테고리-- </option>
	                                                                   <option value="bg-danger">기본일정</option>
	                                                                   <option value="bg-success">회의</option>
	                                                                   <option value="bg-primary">종일일정</option>
	                                                                   <option value="bg-info">업무</option>
	                                                                   <option value="bg-dark">기타</option>
	                                                                   <option value="bg-warning">Warning</option>
	                                                               </select>
	                                                               <div class="invalid-feedback">Please select a valid event category</div>
	                                                           </div>
	                                                       </div>
	                                                   </div>
	                                                   <div class="row mt-2">
	                                                       <div class="col-6">
	                                                           <button type="button" class="btn btn-danger" id="btn-delete-event">삭제</button>
	                                                       </div>
	                                                       <div class="col-6 text-end">
	                                                           <button type="button" class="btn btn-light me-1" data-bs-dismiss="modal">취소</button>
	                                                           <button type="submit" class="btn btn-success" id="btn-save-event">저장</button>
	                                                       </div>
	                                                   </div>
	                                               </form>
	                                           </div>
	                                       </div> end modal-content
	                                   </div> end modal dialog
	                               </div>
	                               end modal
	                           </div>
	                       </div> -->
	                <!-- end row -->
	
	            </div>
	            <!-- container-fluid -->
	        </div>
	        <!-- End Page-content -->
	
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
	<script src="/resources/admin/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> -->
	<script src="/resources/admin/assets/libs/metismenujs/metismenujs.min.js"></script>
	<script src="/resources/admin/assets/libs/simplebar/simplebar.min.js"></script>
	<script src="/resources/admin/assets/libs/eva-icons/eva.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
	<script src="dashboard.js"></script>
	
	
	<!-- plugin js -->
	<script src="/resources/admin/assets/libs/fullcalendar/main.min.js"></script>
	
	<!-- Calendar init -->
	<script src="/resources/admin/assets/js/pages/calendar.init.js"></script>
	
	<script src="/resources/admin/assets/js/app.js"></script>

<script>
(function () {
	  'use strict'

	  feather.replace({ 'aria-hidden': 'true' })

	  // Graphs
/* 	  var ctx = document.getElementById('myChart')
	  // eslint-disable-next-line no-unused-vars
	  var myChart = new Chart(ctx, {
	    type: 'line',
	    data: {
	      labels: [
	        'Jan',
	        'Feb',
	        'mar',
	        'Apr',
	        'May',
	        'Jun',
	        'Jul'
	      ],
	      datasets: [{
	        data: [
	          15339,
	          21345,
	          18483,
	          24003,
	          23489,
	          24092,
	          12034
	        ],
	        lineTension: 0,
	        backgroundColor: 'transparent',
	        borderColor: '#007bff',
	        borderWidth: 4,
	        pointBackgroundColor: '#007bff'
	      }]
	    }, */
	    
	  var ctx = document.getElementById('myChart').getContext('2d');
	  // eslint-disable-next-line no-unused-vars
	  var myChart = new Chart(ctx, {
	    type: 'bar',
	    data: {
	      labels: [
	        'Jan',
	        'Feb',
	        'mar',
	        'Apr',
	        'May',
	        'Jun',
	        'Jul',
	        'Aug',
	        'Sep',
	        'Oct'
	      ],
	      datasets: [{
	        data: [
	        	<c:out value="${rt.sales}"/>,
	        	<c:out value="${rt.fees}"/>,
	        	<c:out value="${rt.sales}"/>,
	        	<c:out value="${rt.fees}"/>,
	        	<c:out value="${rt.sales}"/>,
	        	<c:out value="${rt.fees}"/>,
	        	<c:out value="${rt.sales}"/>,
	        	<c:out value="${rt.fees}"/>,
	        	<c:out value="${rt.sales}"/>,
	        	<c:out value="${rt.fees}"/>,
	        ],
	        backgroundColor: ['rgba(255,99,132,0.2)','rgba(54,162,235,0.2)','rgba(255,206,86,0.2)','rgba(75,192,192,0.2)','rgba(153,102,255,0.2)', 'rgba(255,159,64,0.1)', 'rgba(255,99,132,0.2)','rgba(54,162,235,0.2)','rgba(255,206,86,0.2)','rgba(75,192,192,0.2)'],
	        borderColor: ['rgba(255,99,132,1)','rgba(54,162,235,1)','rgba(255,206,86,1)','rgba(75,192,192,1)','rgba(153,102,255,1)', 'rgba(255,159,64,1)', 'rgba(255,99,132,1)','rgba(54,162,235,1)','rgba(255,206,86,1)','rgba(75,192,192,1)']
	      }]
	    },
	    options: {
	      scales: {
	        yAxes: [{
	          ticks: {
	            beginAtZero: true
	          }
	        }]
	      },
	      legend: {
	        display: false
	      }
	    }
	  })
	})()

</script>

    </body>

</html>