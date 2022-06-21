<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">

    <head>

        <meta charset="utf-8" />
        <title>여행을 떠나요. now travel!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="/resources/user/assets/images/favicon.ico">

        <!-- Bootstrap Css -->
        <link href="/resources/user/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="/resources/user/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="/resources/user/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    
    <body>

    <!-- <body data-layout="horizontal"> -->

    <div class="authentication-bg min-vh-100">
        <div class="bg-overlay bg-light"></div>
        <div class="container">
            <div class="d-flex flex-column min-vh-100 px-3 pt-4">
                <div class="row justify-content-center my-auto">
                    <div class="col-md-8 col-lg-6 col-xl-5">

                        <div class="mb-4 pb-2">
                            <a href="../" class="d-block auth-logo">
                                <img src="/resources/user/assets/images/nowTravel_logo_200.jpg" alt="" class="auth-logo-dark me-start">
                                <img src="/resources/user/assets/images/logo-light.png" alt="" height="30" class="auth-logo-light me-start">
                            </a>
                        </div>

                        <div class="card">
                            <div class="card-body p-4"> 
                                <div class="text-center mt-2">
                                    <h5>회원가입</h5>
                                    <p class="text-muted">now travel 계정을 만들어보세요.</p>
                                </div>
                                <div class="p-2 mt-4">
                                    <form method="get" action="userInst">

        
                                        <div class="mb-3">
                                            <label class="form-label" for="username">이름</label>
                                            <div class="position-relative input-custom-icon">
                                                <input type="text" class="form-control" id="tvmmName" name="tvmmName" placeholder="이름을 입력해주세요.">
                                                 <span class="bx bx-user"></span>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="useremail">이메일주소</label>
                                            <div class="position-relative input-custom-icon">
                                                <input type="email" class="form-control" id="tvmmEmailAccount" name="tvmmEmailAccount" <c:if test="${not empty email}">value="<c:out value="${email}"/>" readonly</c:if> placeholder="이메일주소를 입력해주세요.">  
                                                <span class="bx bx-mail-send"></span>
                                            </div>     
                                        </div>                
                                        <div class="mb-3">
                                            <label class="form-label" for="userpassword">비밀번호</label>
                                            <div class="position-relative auth-pass-inputgroup input-custom-icon">
                                                <span class="bx bx-lock-alt"></span>
                                                <input type="password" class="form-control" id="password-input" name="tvmmPassword" placeholder="비밀번호를 입력해주세요.">
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="userpassword">비밀번호 확인</label>
                                            <div class="position-relative auth-pass-inputgroup input-custom-icon">
                                                <span class="bx bx-lock-alt"></span>
                                                <input type="password" class="form-control" id="password-input" placeholder="비밀번호를 입력해주세요.">
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="userpassword">전화번호</label>
                                            <div class="position-relative auth-pass-inputgroup input-custom-icon">
                                                <span class="bx bx-lock-alt"></span>
                                                <input type="text" class="form-control" id="password-input" name="tvmmTelNumber" placeholder="전화번호를 입력해주세요.">
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="userpassword">주소</label>
                                           <div class="input-group mb-3">
		 
        
        						<input type="text" class="form-control" id="tvmmAddress1" name="tvmmAddress1" placeholder="주소">
        						
        						<div class="input-group-append">
           				 			<button onClick="sample4_execDaumPostcode()" class="btn btn-outline-secondary" type="button">주소검색</button>
       							</div>
 									</div>

    								<div class="input-group mb-3">
       									<input  type="text" class="form-control" placeholder="상세주소" id="tvmmAddress2" name="tvmmAddress2">
    								</div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="userpassword">생년월일</label>
                                            <div class="position-relative auth-pass-inputgroup input-custom-icon">
                                                <span class="bx bx-lock-alt"></span>
                                                <input type="date" class="form-control" id="password-input" name="tvmmDob" placeholder="생년월일을 입력해주세요.">
                                            </div>
                                        </div>

                                        <div class="form-check py-1">
                                            <input type="checkbox" class="form-check-input" id="auth-terms-condition-check">
                                            <label class="form-check-label" for="auth-terms-condition-check">now travel의 <a href="" data-bs-toggle="modal" data-bs-target="#exampleModal">회원약관</a>에 동의합니다.</label>
                                            
                                            <!-- Modal -->
										<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										  <div class="modal-dialog">
										    <div class="modal-content">
										      <div class="modal-header">
										        <h5 class="modal-title" id="exampleModalLabel">회원 약관</h5>
										        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										      </div>
										      <div class="modal-body" style="font-size: 17px;">
										        <p>now travle(이하 ‘회사’라 한다)는 개인정보 보호법 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리지침을 수립․공개합니다.</p>
<p>
제1조 (개인정보의 처리목적)
회사는 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
</p>
<p>
1. 홈페이지 회원 가입 및 관리
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별․인증, 회원자격 유지․관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 만 14세 미만 아동의 개인정보처리시 법정대리인의 동의여부 확인, 각종 고지․통지, 고충처리 등을 목적으로 개인정보를 처리합니다.
</p>
<p>
2. 재화 또는 서비스 제공
물품배송, 서비스 제공, 계약서․청구서 발송, 콘텐츠 제공, 맞춤서비스 제공, 본인인증, 연령인증, 요금결제․정산, 채권추심 등을 목적으로 개인정보를 처리합니다.
</p>
<p>
3. 고충처리
민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락․통지, 처리결과 통보 등의 목적으로 개인정보를 처리합니다.
</p>
										      </div>
										      
										    </div>
										  </div>
										</div>
										
                                        </div>
                                        
                                        <div class="mt-3">
                                            <button class="btn btn-primary w-100 waves-effect waves-light" id="btnSubmit" type="submit">가입완료</button>
                                        </div>

                                        <div class="mt-4 text-center">
                                            <div class="signin-other-title">
                                                <h5 class="font-size-14 mb-3 mt-2 title"></h5>
                                            </div>
            
<!--                                            <ul class="list-inline mt-2">
                                                <li class="list-inline-item">
                                                    <a href="javascript:void()" class="social-list-item bg-primary text-white border-primary">
                                                        <i class="bx bxl-facebook"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item">
                                                    <a href="javascript:void()" class="social-list-item bg-info text-white border-info">
                                                        <i class="bx bxl-linkedin"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item">
                                                    <a href="javascript:void()" class="social-list-item bg-danger text-white border-danger">
                                                        <i class="bx bxl-google"></i>
                                                    </a>
                                                </li>
                                            </ul> -->
                                        </div>

                                        <div class="mt-4 text-center">
                                            <p class="mb-0">이미 계정이 존재합니까 ? <a href="loginForm" class="fw-medium text-primary">로그인하기</a></p>
                                        </div>
                                    </form>
                                </div>
            
                            </div>
                        </div>

                    </div><!-- end col -->
                </div><!-- end row -->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center p-4">
                            <p>© <script>document.write(new Date().getFullYear())</script> now travel. Created <i class="mdi mdi-heart text-danger"></i> by 살려조</p>
                        </div>
                        
                    </div>
                </div>

            </div>
        </div><!-- end container -->
    </div>
    <!-- end authentication section -->

        <!-- JAVASCRIPT -->
        <script src="/resources/user/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="/resources/user/assets/libs/metismenujs/metismenujs.min.js"></script>
        <script src="/resources/user/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="/resources/user/assets/libs/eva-icons/eva.min.js"></script>

    </body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
            	if($("#tvmmPassword1").val() != $("#tvmmPassword2").val()){
            		alert("비밀번호가 서로 다릅니다.");
            		return false;
            	}
            	if(!checkNull($("#tvmmTelNumber"),$("#tvmmTelNumber").val(),"전화번호를 입력해주세요")) {
        			return false;
        		}
            	if(!checkNull($("#tvmmDob"),$("#tvmmDob").val(),"생년월일을 입력해주세요")) {
        			return false;
        		}
            	if($("#auth-terms-condition-check").val() != 1){
            		alert("회원 약관에 동의해주세요");
            		return false;
            	}      
            	   
            	   
               })
               
               </script>
               
</html>