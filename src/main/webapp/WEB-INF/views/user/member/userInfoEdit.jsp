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
</head>

<body>
    <!--============================= HEADER =============================-->
   <%@ include file="../include/header.jsp" %>
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
                            <h5 class="modal-title"><img src="images/logo.png" alt="logo"></h5>
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
    <!--============================= SUBPAGE HEADER BG =============================-->
  <!--   <section class="subpage-bg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block title-block_subpage">
                        <h2>정보 확인</h2>
                        <p> <a href="index.html"> Home</a> / Add Listing</p>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!--// SUBPAGE HEADER BG -->
    <!--============================= ADD LISTING =============================-->
    <section class="main-block">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="listing-wrap">
                        <form action="memberUpdate">
                            <!-- General Information -->
                            <div class="listing-title">
                                <span class="ti-files"></span>
                                <h4>내 정보 수정</h4>
                                <!-- <p>Write Something General Information About Your Listing</p> -->
                            </div>


                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>이름</label>
                                        <input type="text" class="form-control"  name="tvmmName" id="tvmmName" value="<c:out value="${item.tvmmName}"/>"> 
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>전화번호</label>
                                          <input type="text" class="form-control"  name="tvmmTelNumber" id="tvmmTelNumber" value="<c:out value="${item.tvmmTelNumber}"/>">  
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>비밀번호</label>
                                          <input type="password" class="form-control" id="tvmmPassword" name="tvmmPassword" value="<c:out value="${item.tvmmPassword}"/>">  
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>비밀번호 확인</label>
                                          <input type="password" class="form-control"  id="tvmmPassword2" name="tvmmPassword2" value="<c:out value="${item.tvmmPassword}"/>">  
                                    </div>
                                </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                        <label>이메일</label>
                                        <input type="text" class="form-control" id="tvmmEmailAccount" name="tvmmEmailAccount" value="<c:out value="${item.tvmmEmailAccount}"/>"> 
                                    </div>
                                </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                        <label>주소</label>
                                        <div class="input-group mb-3" >
											<input type="text" class="form-control" id="tvmmAddress1" name="tvmmAddress1"  value="<c:out value="${item.tvmmAddress1}"/>">
											<button onClick="sample4_execDaumPostcode()" class="btn btn-outline-secondary" type="button">주소검색</button>
										</div>
											<input  type="text"	class="form-control" id="tvmmAddress2" name="tvmmAddress2"	placeholder="상세주소" value="<c:out value="${item.tvmmAddress2}"/>"> 
                                    </div>
                                </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                        <label>생년월일</label>
                                         <input type="date" class="form-control"  name="tvmmDob" id="tvmmDob" value="<c:out value="${item.tvmmDob}"/>"> 
                                    </div>
                                    
                                       <button type="submit" id="btnSubmit" style="margin-top:10px;" class="btn btn-primary float-right">수정</button>
                                </div>
                             
                            </div>

                         
                            <!--//End General Information -->
                            <!-- Add Location -->
                           

                          </form>
                                    </div>
                                </div>
                            </div>

                            
                            <!--//End Opening Hours -->

                     
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/vaildation/vaildation.js"></script>


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
               
                document.getElementById("tvmmAddress1").value = roadAddr;
            }                     
        }).open();
        
        }
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                
                </script>
               <script>
               
               </script>
            <!-- vaildation -->
               <script>
               
               $("#btnSubmit").on("click",function(){
            	   if(!checkNull($("#tvmmName"),$("#tvmmName").val(),"이름을 입력해주세요")) {
           			return false;
           		}
            	   
            	if(!checkNull($("#tvmmEmailAccount"),$("#tvmmEmailAccount").val(),"이메일을 입력해주세요")) {
            		return false;
            	}
            	if(!checkNull($("#tvmmAddress1"),$("#tvmmAddress1").val(),"주소를 입력해주세요")) {
        			return false;
        		}
            	if($("#tvmmPassword").val() != $("#tvmmPassword2").val()){
            		alert("비밀번호가 서로 다릅니다.");
            		return false;
            	}
            	if(!checkNull($("#tvmmTelNumber"),$("#tvmmTelNumber").val(),"전화번호를 입력해주세요")) {
        			return false;
        		}
            	if(!checkNull($("#tvmmDob"),$("#tvmmDob").val(),"생년월일을 입력해주세요")) {
        			return false;
        		}
            	   
            	   
            	   
               })
               
               </script>

</body>

</html>