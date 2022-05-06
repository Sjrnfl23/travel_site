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

        <!-- Bootstrap Css -->
        <link href="../../resources/host/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../resources/host/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../resources/host/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

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
                            <a href=loginForm.html" class="d-block auth-logo">
                                <img src="../../resources/host/images/nowTravel_logo_200.jpg" alt="" class="auth-logo-dark me-start">
                                <img src="../../resources/host/images/logo-light.png" alt="" height="30" class="auth-logo-light me-start">
                            </a>
                        </div>

                        <div class="card">
                            <div class="card-body p-4"> 
                                <div class="text-center mt-2">
                                    <h5>비밀번호 재설정</h5>
                                    <p class="text-muted">비밀번호를 재설정하세요.</p>
                                </div>
                                <div class="p-2 mt-4">

                                    <div class="alert alert-success text-center small mb-4" role="alert">
                                        이메일을 입력하면 비밀번호 재발급 메일이 전송됩니다.
                                    </div>

                                    <form action="loginForm.html">
        
                                        <div class="mb-3">
                                            <label class="form-label" for="useremail">Email</label>
                                            <div class="position-relative input-custom-icon">
                                                <input type="email" class="form-control" id="useremail" placeholder="이메일을 입력해주세요.">  
                                                <span class="bx bx-mail-send"></span>
                                            </div>     
                                        </div>
                                        
                                        <div class="mt-4">
                                            <button class="btn btn-primary w-100 waves-effect waves-light" type="submit">재발급 받기</button>
                                        </div>

                                        <div class="mt-4 text-center">
                                            <p class="mb-0">비밀번호가 기억났나요? <a href="loginForm.html" class="fw-medium text-primary"> Login </a></p>
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
                            <p>© <script>document.write(new Date().getFullYear())</script> now travel. Created<i class="mdi mdi-heart text-danger"></i> by 살려조</p>
                        </div>
                    </div>
                </div>

            </div>
        </div><!-- end container -->
    </div>
    <!-- end authentication section -->

        <!-- JAVASCRIPT -->
        <script src="../../resources/host/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../resources/host/libs/metismenujs/metismenujs.min.js"></script>
        <script src="../../resources/host/libs/simplebar/simplebar.min.js"></script>
        <script src="../../resources/host/libs/eva-icons/eva.min.js"></script>

        <script src="../../resources/host/js/pages/pass-addon.init.js"></script>

    </body>

</html>