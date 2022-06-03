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
        <meta content="여행을 떠나요. now travel!" name="description" />
        <meta content="Themesdesign" name="author" />
        <meta name ="google-signin-client_id" content="1006974412811-rllmas5gq2pn7hvn9n1ml611tkjp9ljs.apps.googleusercontent.com">
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
                                    <h5>환영합니다 !</h5>
                                    <p class="text-muted">now travel 사용을 위해 로그인해주세요.</p>
                                </div>
                                <div class="p-2 mt-4">
                                  
        
                                        <div class="mb-3">
                                            <label class="form-label" for="username">이메일</label>
                                            <div class="position-relative input-custom-icon">
                                                <input type="text" class="form-control" id="tvmmEmailAccount" name="tvmmEmailAccount" value="sjsj@google.com" placeholder="가입하신 이메일주소를 입력해주세요">
                                                 <span class="bx bx-user"></span>
                                            </div>
                                        </div>
                
                                        <div class="mb-3">
                                            <div class="float-end">
                                                <a href="password.html" class="text-muted text-decoration-underline">비밀번호 찾기</a>
                                            </div>
                                            <label class="form-label" for="password-input">비밀번호</label>
                                            <div class="position-relative auth-pass-inputgroup input-custom-icon">
                                                <span class="bx bx-lock-alt"></span>
                                                <input type="password" class="form-control" id="tvmmPassword" name="tvmmPassword" value="12345" placeholder="비밀번호를 입력해주세요">
                                                <button type="button" class="btn btn-link position-absolute h-100 end-0 top-0" id="password-addon">
                                                    <i class="mdi mdi-eye-outline font-size-18 text-muted"></i>
                                                </button>
                                            </div>
                                        </div>
                
                                        <div class="form-check py-1">
                                            <input type="checkbox" class="form-check-input" id="auth-remember-check">
                                            <label class="form-check-label" for="auth-remember-check">아이디 저장하기</label>
                                        </div>
                                        
                                        <div class="mt-3">
                                        
                                           <button class="btn btn-primary w-100 waves-effect waves-light" id="btnLogin" name="btnLogin">로그인</button>
                                        
                                        </div>

                                        <div class="mt-4 text-center">
                                            <div class="signin-other-title">
                                                <h5 class="font-size-14 mb-3 mt-2 title"> Sign in with </h5>
                                            </div>
            
                                            <ul class="list-inline mt-2">
                                               
                                                <li class="list-inline-item">
                                                    <a href="#" id="GgCustomLogin">
                                                        <!-- <i class="bx bxl-google" ></i> -->
                                                        <img width="100%" src="/resources/user/images/google.png">
                                                    </a>  
                                                    <!--  <button class="btn btn-warning" type="button" id="GgCustomLogin" name="login1" value="login"> 구글 로그인</button> -->
                                                    
                                                </li>
                                                 
                                            </ul>
                                        </div>

                                        <div class="mt-4 text-center">
                                            <p class="mb-0">계정이 없으신가요? <a href="/signupForm" class="fw-medium text-primary"> 회원가입 </a> </p>
                                        </div>
                                  
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

        <script src="/resources/user/assets/js/pages/pass-addon.init.js"></script>

    </body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
       <script type="text/javascript">
        
$("#btnLogin").on("click" , function(){
		
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/loginProc"
		,data : {"tvmmEmailAccount" : $("#tvmmEmailAccount").val(), "tvmmPassword" : $("#tvmmPassword").val()}
	
		,success: function(response) {
			
			if(response.rt == "success") {
				
				 location.href = "/"; 
				
			}
			
			else{
				alert("회원 없음");
			}
				
			
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
		
	});
	
});

</script>
<script> //구글 로그인

//처음 실행하는 함수
function init() {
	
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
	
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		/* url: 'https://people.googleapis.com/v1/people/me' */
        // key에 자신의 API 키를 넣습니다.
        	/* url : "/infra/member/GloginProc" */
		 data: {personFields:'birthdays', key:'AIzaSyBQ6fIJWYm4rSJSs_HGbegC-225Sg2m2Qc', 'access_token': access_token}
		, method:'POST'
	})
	.done(function(e){
        //프로필을 가져온다.
     
		 var profile = googleUser.getBasicProfile();
		/* console.log(profile); */
		var id= profile.getId();
		var username = profile.getName();
		
		console.log(username);
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "GloginProc"
			,data : {"tvmmName" : profile.getName(),"tvmmEmailAccount" : profile.getEmail()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "../";
				} else {
					alert("회원가입 바람");
					location.href = "/signupForm";
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		})
		
	})
	.fail(function(e){
		console.log(e);
	})
	
}

function onSignInFailure(t){	
	
	console.log(t);
	
}

</script>
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</html>