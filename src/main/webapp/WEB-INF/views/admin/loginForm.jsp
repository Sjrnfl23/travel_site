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
        <link rel="shortcut icon" href="../../../resources/admin/assets/images/favicon.ico">

        <!-- Bootstrap Css -->
        <link href="../../../resources/admin/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../../resources/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../../resources/admin/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

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
                                <img src="../../resources/admin/assets/images/nowTravel_logo_200.jpg" alt="" class="auth-logo-dark me-start">
                                <img src="../../resources/admin/assets/images/logo-light.png" alt="" height="30" class="auth-logo-light me-start">
                            </a>
                        </div>

                        <div class="card">
                            <div class="card-body p-4"> 
                                <div class="text-center mt-2">
                                    <h5>환영합니다 !</h5>
                                    <p class="text-muted">관리자 페이지 사용을 위해 로그인해주세요.</p>
                                </div>
                                <div class="p-2 mt-4">
                                  
        
                                       <div class="mb-3">
                                            <label class="form-label" for="username">이메일</label>
                                            <div class="position-relative input-custom-icon">
                                                <input type="text" class="form-control"  name="tvmmEmailAccount" id="tvmmEmailAccount" placeholder="가입하신 이메일주소를 입력해주세요" value="admin@travel.com">
                                                 <span class="bx bx-user"></span>
                                            </div>
                                        </div>
                
                                        <div class="mb-3">
<!--                                             <div class="float-end">
                                                <a href="password" class="text-muted text-decoration-underline">비밀번호 찾기</a>
                                            </div> -->
                                            <label class="form-label" for="password-input" >Password</label>
                                            <div class="position-relative auth-pass-inputgroup input-custom-icon">
                                                <span class="bx bx-lock-alt"></span>
                                                <input type="password" class="form-control" name="tvmmPassword" id="tvmmPassword" placeholder="비밀번호를 입력해주세요" value="54321">
                                                <button type="button" class="btn btn-link position-absolute h-100 end-0 top-0" id="password-addon">
                                                    <!-- <i class="mdi mdi-eye-outline font-size-18 text-muted"></i> -->
                                                </button>
                                            </div>
                                        </div>
                
<!--                                         <div class="form-check py-1">
                                            <input type="checkbox" class="form-check-input" id="auth-remember-check">
                                            <label class="form-check-label" for="auth-remember-check">아이디 저장하기</label>
                                        </div> -->
                                        
                                        <div class="mt-3">
                                           <button id="btnLogin" class="btn btn-primary w-100 waves-effect waves-light">로그인</button>
                                        </div>

                                        <div class="mt-4 text-center">
                                            <div class="signin-other-title">
                                                <h5 class="font-size-14 mb-3 mt-2 title"></h5>
                                            </div>
                                        </div>

                                        <div class="mt-4 text-center">
                                            <p class="mb-0">관리 부서: <a href="" class="fw-medium text-primary"> 인프라 운영팀 </a> (070-1234-1234)</p>
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
        <script src="../../../resources/admin/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../../resources/admin/assets/libs/metismenujs/metismenujs.min.js"></script>
        <script src="../../../resources/admin/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="../../../resources/admin/assets/libs/eva-icons/eva.min.js"></script>

        <script src="../../../resources/admin/assets/js/pages/pass-addon.init.js"></script>

    </body>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
       <script type="text/javascript">
        
$("#btnLogin").on("click" , function(){
	
	/* if($("#tvmmEmailAccount").val() == "" || $("#tvmmPassword").val() == ""){
		alert("이메일 또는 비밀번호를 입력해주세요");
		
		return false;
	}else{
		
	} */
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/admin/loginProc"
		,data : {"tvmmEmailAccount" : $("#tvmmEmailAccount").val(), "tvmmPassword" : $("#tvmmPassword").val()}
		,success: function(response) {
			
			if(response.rt == "success") {
				
				 location.href = "/admin/mainView"; 	
			} else if(response.rt == "fail"){
				alert("회원 정보가 존재하지 않습니다.");
				
			}else{
				alert("접속 권한이 없습니다.");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
		
	});
	
});



</script>
</html>