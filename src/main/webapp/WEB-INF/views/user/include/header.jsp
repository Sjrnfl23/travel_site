<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<div class="nav-menu sticky-top">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="/"><img src="/resources/user/images/nowTravel_logo.jpg" alt="logo"></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="ti-menu"></span>
              </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="searchFlex">유연한검색</a>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    						회원정보
                    						<span class="ti-angle-down"></span>
                  						</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="reservation">예약내역</a>
                                            <a class="dropdown-item" id="btnPhotomap" href="">여행지도</a>
                                            <a class="dropdown-item" href="userInfoView">회원정보 수정</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="loginForm" id="login">Login</a>
                                      	<a class="nav-link" href="#" id="logout">Logout</a>
                                    </li>
                                    <li style="margin-right: 10px;"><a href="/host/loginForm" class="btn btn-outline-danger top-btn"><span class="ti-plus"></span>호스트 로그인</a></li>
                                    <li><a href="/admin/loginForm" class="btn btn-outline-danger top-btn"><span class="ti-plus"></span>관리자 로그인</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
       <script>
       
      
       
$(function init(){
	
	 let loginNy=0;
	 
	 
	 
	 $.ajax({
	 		async: true 
	 		,cache: false
	 		,type: "post"
	 		,url: "/loginCheck"
	 		,data : {}
	 		,success: function(response) {
	 			if(response.rt == "pass") {
	 				let loginNy=1;
	 				
	 				$("#login").hide();
	 				
	 				console.log(loginNy);
	 			} else {
	 				let loginNy=0;
	 				$("#logout").hide();
	 			}
	 		}
	 		,error : function(jqXHR, textStatus, errorThrown){
	 			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	 		}
	 		
	 	}); 
	
	 
});

</script>
       
<script>

$("#logout").on("click",function(){
	
	 $.ajax({
 		async: true 
 		,cache: false
 		,type: "post"
 		,url: "/logoutProc"
 		,data : {}
 		,success: function(response) {
 			if(response.rt == "success") {
 				location.href = ""
 			} else {
 				alert("에러");
 			}
 		}
 		,error : function(jqXHR, textStatus, errorThrown){
 			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
 		}
 		
 	}); 
	
	
	
})

</script>
    <script type="text/javascript">
	        
 	$("#btnPhotomap").on("click" , function(){
		
	 	 $.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/loginCheck"
			,data : {}
			,success: function(response) {
				
				if(response.rt == "pass") {
			
				
					 location.href = "/mapList"; 
					
				}else{			
					var answer=confirm("로그인이 필요합니다. 하시겠습니까?");
					
					if(answer ==true){
						
						location.href="/loginForm"
					}
					}
				}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});   
	
	</script>
