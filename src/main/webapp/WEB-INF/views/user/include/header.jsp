<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<style>
.basic-textarea textarea.bas  {
    height: auto;
}

.card.chat-room .friend-list li {
  border-bottom: 1px solid #e0e0e0; }
  .card.chat-room .friend-list li:last-of-type {
    border-bottom: none; }

.card.chat-room img.rounded-circle {
  border-radius: 50%; }

.card.chat-room img.avatar {
  height: 3rem;
  width: 3rem; }

.card.chat-room .text-small {
  font-size: 0.95rem; }

.card.chat-room .text-smaller {
  font-size: 0.75rem; }
</style>
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
									<!-- Button trigger modal -->
									<li class="nav-item">
									  <a class="nav-link" id="userInfoHeaderDM" href="" data-bs-toggle="modal" data-bs-target="#exampleModal">DM</a>
									</li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="search">주변숙소검색</a>
                                    </li>
									<li class="nav-item">
                                        <a class="nav-link" id="btnPhotomap" href="">여행지도</a>
                                    </li>
                                    
                                    <li class="nav-item dropdown" id="userInfoHeader">
                                        <a class="nav-link" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    						회원정보
                    						<span class="ti-angle-down"></span>
                  						</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="reservation">예약내역</a>
                                            <a class="dropdown-item" href="userInfoView">회원정보 수정</a>
                                        </div>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="loginForm" id="login">Login</a>
                                      	<a class="nav-link" href="" id="logout">Logout</a>
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
    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">DM 목록</h5>
      </div>
      <div class="modal-body">
        <ul class="list-unstyled chat-list mt-2 mb-0">
        	<li class="active" id="chatuserList">
            </li>
        </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
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
	 				$("#userInfoHeader").show();
	 				$("#userInfoHeaderDM").show();
	 				$("#login").hide();
	 				
	 				console.log(loginNy);
	 			} else {
	 				let loginNy=0;
	 				$("#logout").hide();
	 				$("#userInfoHeader").hide();
	 				$("#userInfoHeaderDM").hide();
	 				
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
 				
 				location.href = "/"
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
	<script type="module">
    // Import the functions you need from the SDKs you need
    import {initializeApp} from "https://www.gstatic.com/firebasejs/9.6.6/firebase-app.js";
    import {
        getDatabase,
        set,
        ref,
        push,
        child,
        onValue,
        onChildAdded
    } from "https://www.gstatic.com/firebasejs/9.6.6/firebase-database.js";


    // TODO: Add SDKs for Firebase products that you want to use
    // https://firebase.google.com/docs/web/setup#available-libraries

    // Your web app's Firebase configuration
  const firebaseConfig = {
    apiKey: "AIzaSyCmteF2NjV-6_R7850tLu6AKIZfsdLwMMk",
    authDomain: "nowtravel-32e60.firebaseapp.com",
    databaseURL: "https://nowtravel-32e60-default-rtdb.firebaseio.com",
    projectId: "nowtravel-32e60",
    storageBucket: "nowtravel-32e60.appspot.com",
    messagingSenderId: "236407906769",
    appId: "1:236407906769:web:1fa7b1ee992c4f7dcf00f0"
  };

    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    const database = getDatabase(app);

	var UserSeq = '<c:out value="${sessSeq}"/>';

	const chatuserList = ref(database, 'chatrooms/');
    onChildAdded(chatuserList, (data) => {
	if(data.val().userseq == UserSeq ) {
            var divDataChat = '    <a href="/dm?tvmmSeq='+data.val().hostseq+'">\n' +
                                '        <div class="d-flex align-items-center">\n' +
                                '            <div class="flex-shrink-0 user-img online align-self-center me-3">\n' +
                                '                <div class="avatar-sm align-self-center">\n' +
                                '                    <span class="avatar-title rounded-circle bg-soft-primary text-primary">\n' +
								'						\n' +
                                '                    </span>\n' +
                                '                </div>\n' +
                                '                <span class="user-status"></span>\n' +
                                '            </div>\n' +
                                '            <div class="flex-grow-1 overflow-hidden">\n' +
                                '                <h5 class="text-truncate font-size-14 mb-0">'+data.val().hostname+'</h5>\n' +
                                '            </div>\n' +
                                '            <div class="flex-shrink-0">\n' +
                                '            </div>\n' +
                                '        </div>\n' +
                                '    </a><br>';
            var d2 = document.getElementById('chatuserList');
            d2.insertAdjacentHTML('beforebegin', divDataChat);
}
    });
</script>
