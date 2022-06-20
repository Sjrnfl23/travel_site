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

        <!-- fullcalendar css -->
        <link href="../../resources/host/libs/fullcalendar/main.min.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap Css -->
        <link href="../../resources/host/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../resources/host/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../resources/host/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
    </head>

    
    <body>

    <!-- <body data-layout="horizontal"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">

            
          <!-- 예약 header s -->
            
             ﻿<%@ include file="../include/dm/header.jsp" %>
             
              <!-- 예약 header e -->
              
              
            <!-- ========== Left Sidebar Start ========== -->
            
            ﻿<%@ include file="../include/dm/sideBar.jsp" %>
            
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

                        <div class="d-lg-flex">
                            <div class="chat-leftsidebar card">
                                <div class="card-body">
                                    
                                   <div class="text-center bg-light rounded px-4 py-3">
                                            <div class="text-end">
                                                <div class="dropdown chat-noti-dropdown">
                                                    <button class="btn dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="chat-user-status">
                                                <img src="/resources/uploaded/member/<c:out value="${sessYear}"/>/<c:out value="${sessMonth}"/>/<c:out value="${sessDay}"/>/<c:out value="${sessUuidName}"/> " class="avatar-md rounded-circle" alt="">
                                                <div class="">
                                                    <div class="status"></div>
                                                </div>
                                            </div>
                                            <h5 class="font-size-16 mb-1 mt-3"><a href="#" class="text-dark"><c:out value="${sessName}"/></a></h5>
                                            <p class="text-muted mb-0">답변가능</p>
                                   </div>
                                </div>

                                <div class="p-3">
                                    <div class="search-box position-relative">
                                        <input type="text" class="form-control rounded border" placeholder="Search...">
                                        <i class="search-icon" data-eva="search-outline" data-eva-height="26" data-eva-width="26"></i>
                                    </div>
                                </div>

                                <div class="chat-leftsidebar-nav">
                                    <ul class="nav nav-pills nav-justified bg-light m-3 rounded">
                                        <li class="nav-item">
                                            <a href="#chat" data-bs-toggle="tab" aria-expanded="true" class="nav-link active">
                                                <i class="bx bx-chat font-size-20 d-sm-none"></i>
                                                <span class="d-none d-sm-block">사용자 목록</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane show active" id="chat">
                                            <div class="chat-message-list" data-simplebar>
                                                <div class="pt-3">
                                                    <div class="px-3">
                                                        <h5 class="font-size-14 mb-3">사용자</h5>
                                                    </div>
                                                    <ul class="list-unstyled chat-list p-3">
                                                    	<li class="active" id="chatuserList">
                                                    	</li>
                                					</ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane" id="groups">
                                            <div class="chat-message-list" data-simplebar>
                                                <div class="pt-3">
                                                    <div class="px-3">
                                                        <h5 class="font-size-14 mb-3">Groups</h5>
                                                    </div>
                                                    <ul class="list-unstyled chat-list">
                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            G
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">General</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            R
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">Reporting</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            M
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">Meeting</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            A
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">Project A</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0 avatar-sm me-3">
                                                                        <span class="avatar-title rounded-circle bg-soft-primary text-primary">
                                                                            B
                                                                        </span>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1">
                                                                        <h5 class="font-size-13 mb-0">Project B</h5>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane" id="contacts">
                                            <div class="chat-message-list" data-simplebar>
                                                <div class="pt-3">
                                                    <div class="px-3">
                                                        <h5 class="font-size-14 mb-3">Contacts</h5>
                                                    </div>

                                                    <div>
                                                        <div>
                                                            <div class="px-3 contact-list">A</div>

                                                            <ul class="list-unstyled chat-list">
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Adam Miller</h5>
                                                                    </a>
                                                                </li>
            
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Alfonso Fisher</h5>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>

                                                        <div class="mt-4">
                                                            <div class="px-3 contact-list">B</div>

                                                            <ul class="list-unstyled chat-list">
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Bonnie Harney</h5>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>

                                                        <div class="mt-4">
                                                            <div class="px-3 contact-list">C</div>

                                                            <ul class="list-unstyled chat-list">
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Charles Brown</h5>
                                                                    </a>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Carmella Jones</h5>
                                                                    </a>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Carrie Williams</h5>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>

                                                        <div class="mt-4">
                                                            <div class="px-3 contact-list">D</div>

                                                            <ul class="list-unstyled chat-list">
                                                                <li>
                                                                    <a href="#">
                                                                        <h5 class="font-size-13 mb-0">Dolores Minter</h5>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- end chat-leftsidebar -->

                            <div class="w-100 user-chat mt-4 mt-sm-0 ms-lg-3">
                                <div class="card">
                                    <div class="p-3 px-lg-4 border-bottom">
                                        <div class="row">
                                            <div class="col-xl-4 col-7">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 avatar me-3 d-sm-block d-none">
                                                        <img src="../../resources/host/images/users/avatar-6.jpg" alt="" class="img-fluid d-block rounded-circle">
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <h5 class="font-size-16 mb-1 text-truncate"><a href="#" class="text-dark"><c:out value="${item2.tvmmName}"/></a></h5>
                                                        <p class="text-muted text-truncate mb-0">접속중</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-8 col-5">
                                                <ul class="list-inline user-chat-nav text-end mb-0">
                                                </ul>                                                                                                                                                                                                                                                                                        
                                            </div>
                                        </div>
                                    </div>

                                    <div class="chat-conversation p-3" data-simplebar>
						                <div class="card-body msg_card_body" id="bodyContent">
						                </div>
                                    </div>
									<!-- original code Start-->
                                    <div class="p-3 border-top">
                                        <div class="row">
                                            <div class="col">
                                                <div class="position-relative">
                                                    <input type="text" name="message" id="message" class="form-control border bg-soft-light" placeholder="메시지를 입력해주세요....">
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <button id="submit" class="btn btn-primary submit chat-send w-md waves-effect waves-light"><span class="d-none d-sm-inline-block me-2">전송</span> <i class="mdi mdi-send float-end"></i></button>
                                            </div>
                                        </div>
                                    </div>
					                <!-- original code End-->
                                </div>
                            </div>
                            <!-- end user chat -->
                        </div>
                        <!-- End d-lg-flex  -->

                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © webadmin.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Crafted with <i class="mdi mdi-heart text-danger"></i> by <a href="https://Themesdesign.com/" target="_blank" class="text-reset">Themesdesign</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->





        <!-- JAVASCRIPT -->
        <script src="../../resources/host/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../resources/host/libs/metismenujs/metismenujs.min.js"></script>
        <script src="../../resources/host/libs/simplebar/simplebar.min.js"></script>
        <script src="../../resources/host/libs/eva-icons/eva.min.js"></script>

        <script src="../../resources/host/js/app.js"></script>

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
	const date = new Date();
	
	const hour = date.getHours();
	const minutes = date.getMinutes();


    var myName = '<c:out value="${sessName}"/>';
	var HostName = '<c:out value="${sessName}"/>';
	var username = '<c:out value="${item2.tvmmName}"/>';
	var sendUser = '<c:out value="${sessName}"/>';
	const sendtime = hour +':'+minutes;

	var HostSeq = '<c:out value="${sessSeq}"/>';
	var UserSeq = '<c:out value="${item2.tvmmSeq}"/>';

    submit.addEventListener('click', (e) => {
        var message = document.getElementById('message').value;
		var hostname_s = myName;
		var username_s = username;
		var sendname_s = myName;
		var sendtime_s = sendtime;

		var hostseq_s = HostSeq;
		var userseq_s = UserSeq;

        const id = push(child(ref(database), 'messages')).key;
        

        set(ref(database, 'messages/' + id), {
			hostname: hostname_s,
            username: username_s,
            message: message,
			sendname: sendname_s,
			sendtime: sendtime_s,
			hostseq: hostseq_s,
			userseq: userseq_s
        });
        document.getElementById('message').value = "";

    });

		message.addEventListener("keypress", function(event) {
 		if (event.key === "Enter") {
    		event.preventDefault();
    		document.getElementById("submit").click();
  		}
	});

    const newMsg = ref(database, 'messages/');
    onChildAdded(newMsg, (data) => {
        if(data.val().sendname != myName && data.val().hostseq == HostSeq && data.val().userseq == UserSeq) {
            var divData = '<div class="conversation-list" id="fromDiv">\n' +
                                '    <div class="d-flex">\n' +
                                '        <img src="../../resources/host/images/users/avatar-6.jpg" class="rounded-circle avatar" alt="">\n' +
                                '        <div class="flex-1">\n' +
                                '            <div class="ctext-wrap">\n' +
                                '                <div class="ctext-wrap-content">\n' +
                                '                    <div class="conversation-name"><span class="name">'+data.val().sendname+'</span><span class="time">'+data.val().sendtime+'</span></div>\n' +
                                '                    <p class="mb-0 msg_cotainer">\n' +
                                '                        '+data.val().message+'' +
                                '                    </p>\n' +
                                '                </div>\n' +
                                '            </div>\n' +
                                '        </div>\n' +
                                '    </div>\n' +
                                '</div>';
            var d1 = document.getElementById('bodyContent');
            d1.insertAdjacentHTML('beforebegin', divData);
        } else if (data.val().sendname == myName && data.val().hostseq == HostSeq && data.val().userseq == UserSeq){
            var divData = '<li class="right">\n' +
								'<div class="conversation-list">\n' +
                                '    <div class="d-flex">\n' +
                                '        <div class="flex-1">\n' +
                                '            <div class="ctext-wrap">\n' +
                                '                <div class="ctext-wrap-content" id="sendDiv">\n' +
                                '                    <div class="conversation-name">'+data.val().sendname+'<span class="time">'+data.val().sendtime+'</span></div>\n' +
                                '                    <p class="mb-0 text-start">\n' +
                                '                        '+data.val().message+'' +
                                '                        <span class="msg_time_send"></span>\n' +
                                '                    </p>\n' +
                                '                </div>\n' +
                                '            </div>\n' +
                                '        </div>\n' +
								'        <img src="/resources/uploaded/member/<c:out value="${sessYear}"/>/<c:out value="${sessMonth}"/>/<c:out value="${sessDay}"/>/<c:out value="${sessUuidName}"/>" class="rounded-circle avatar" alt="">\n' +
                                '    </div>\n' +
                                '</div>\n' +
								'</li>';
            var d1 = document.getElementById('bodyContent');
            d1.insertAdjacentHTML('beforebegin', divData);
        }
    });

	const chatuserList = ref(database, 'chatrooms/');
    onChildAdded(chatuserList, (data) => {
	if(data.val().hostseq == HostSeq ) {
            var divDataChat = '    <a href="/host/hostDm?tvmmSeq='+data.val().userseq+'">\n' +
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
                                '                <h5 class="text-truncate font-size-14 mb-0">'+data.val().username+'</h5>\n' +
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
    </body>
</html>
