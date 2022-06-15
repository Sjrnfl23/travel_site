<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
	<!--============================= 공통부분 헤드 시작 =============================-->
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

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
            
            <!-- 테스트 -->

        <!-- Icons Css -->
        <link href="../../resources/host/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../resources/host/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
            <!-- 테스트 -->
            
    <!-- Main CSS -->
    <link rel="stylesheet" href="/resources/user/css/style.css">            
            
            
</head>
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #edeff2;
  font-family: "Calibri", "Roboto", sans-serif;
}

.chat_window {
  position: absolute;
  width: calc(100% - 20px);
  max-width: 800px;
  height: 500px;
  border-radius: 10px;
  background-color: #fff;
  left: 50%;
  top: 50%;
  transform: translateX(-50%) translateY(-50%);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
  background-color: #f8f8f8;
  overflow: hidden;
}

.top_menu {
  background-color: #fff;
  width: 100%;
  padding: 20px 0 15px;
  box-shadow: 0 1px 30px rgba(0, 0, 0, 0.1);
}
.top_menu .buttons {
  margin: 3px 0 0 20px;
  position: absolute;
}
.top_menu .buttons .button {
  width: 16px;
  height: 16px;
  border-radius: 50%;
  display: inline-block;
  margin-right: 10px;
  position: relative;
}
.top_menu .buttons .button.close {
  background-color: #f5886e;
}
.top_menu .buttons .button.minimize {
  background-color: #fdbf68;
}
.top_menu .buttons .button.maximize {
  background-color: #a3d063;
}
.top_menu .title {
  text-align: center;
  color: #bcbdc0;
  font-size: 20px;
}

.messages {
  position: relative;
  list-style: none;
  padding: 20px 10px 0 10px;
  margin: 0;
  height: 347px;
  overflow: scroll;
}
.messages .message {
  clear: both;
  overflow: hidden;
  margin-bottom: 20px;
  transition: all 0.5s linear;
  opacity: 0;
}
.messages .message.left .avatar {
  background-color: #f5886e;
  float: left;
}
.messages .message.left .text_wrapper {
  background-color: #ffe6cb;
  margin-left: 20px;
}
.messages .message.left .text_wrapper::after, .messages .message.left .text_wrapper::before {
  right: 100%;
  border-right-color: #ffe6cb;
}
.messages .message.left .text {
  color: #c48843;
}
.messages .message.right .avatar {
  background-color: #fdbf68;
  float: right;
}
.messages .message.right .text_wrapper {
  background-color: #c7eafc;
  margin-right: 20px;
  float: right;
}
.messages .message.right .text_wrapper::after, .messages .message.right .text_wrapper::before {
  left: 100%;
  border-left-color: #c7eafc;
}
.messages .message.right .text {
  color: #45829b;
}
.messages .message.appeared {
  opacity: 1;
}
.messages .message .avatar {
  width: 60px;
  height: 60px;
  border-radius: 50%;
  display: inline-block;
}
.messages .message .text_wrapper {
  display: inline-block;
  padding: 20px;
  border-radius: 6px;
  width: calc(100% - 85px);
  min-width: 100px;
  position: relative;
}
.messages .message .text_wrapper::after, .messages .message .text_wrapper:before {
  top: 18px;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}
.messages .message .text_wrapper::after {
  border-width: 13px;
  margin-top: 0px;
}
.messages .message .text_wrapper::before {
  border-width: 15px;
  margin-top: -2px;
}
.messages .message .text_wrapper .text {
  font-size: 18px;
  font-weight: 300;
}

.bottom_wrapper {
  position: relative;
  width: 100%;
  background-color: #fff;
  padding: 20px 20px;
  position: absolute;
  bottom: 0;
}
.bottom_wrapper .message_input_wrapper {
  display: inline-block;
  height: 50px;
  border-radius: 25px;
  border: 1px solid #bcbdc0;
  width: calc(100% - 160px);
  position: relative;
  padding: 0 20px;
}
.bottom_wrapper .message_input_wrapper .message_input {
  border: none;
  height: 100%;
  box-sizing: border-box;
  width: calc(100% - 40px);
  position: absolute;
  outline-width: 0;
  color: gray;
}
.bottom_wrapper .send_message {
  width: 140px;
  height: 50px;
  display: inline-block;
  border-radius: 50px;
  background-color: #a3d063;
  border: 2px solid #a3d063;
  color: #fff;
  cursor: pointer;
  transition: all 0.2s linear;
  text-align: center;
  float: right;
}
.bottom_wrapper .send_message:hover {
  color: #a3d063;
  background-color: #fff;
}
.bottom_wrapper .send_message .text {
  font-size: 18px;
  font-weight: 300;
  display: inline-block;
  line-height: 48px;
}

.message_template {
  display: none;
}
</style>
<!--Coded With Love By Mutiullah Samim-->
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
                            <h5 class="modal-title"><img src="/resources/user/images/logo.png" alt="logo"></h5>
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
    
    <!--============================= MAIN TITLE =============================-->


<!------ Include the above in your HEAD tag ---------->

<div class="chat_window">
    <div class="top_menu">
        <div class="buttons">
            <div class="button close"></div>
            <div class="button minimize"></div>
            <div class="button maximize"></div>
        </div>
        <div class="title">Chat</div>
    </div>
    	<div class="chat-conversation p-3 messages">
    	   	<div class="card-body msg_card_body" id="bodyContent">		
			</div>
    	</div>
    <div class="bottom_wrapper clearfix">
        <div class="message_input_wrapper"><input type="text" name="message" id="message" class="message_input" placeholder="Type your message here..." /></div>
        <button id="submit" class="send_message">
            <div class="icon"></div>
            <div class="text">Send</div>
        </button>
    </div>
</div>

    <!--//END ADD LISTING -->
    <!--============================= FOOTER =============================-->
	<%-- <%@ include file="../include/footer.jsp" %>  --%>
    <!--//END FOOTER -->

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


    var myName = '<c:out value="${sessName}"/>'
    var HostName = '<c:out value="${item.tvmmName}"/>';
    var sendUser = '<c:out value="${sessName}"/>';

    submit.addEventListener('click', (e) => {
        var message = document.getElementById('message').value;
        var username = myName;
		var hostname = HostName;
		var sendname = myName;

        const id = push(child(ref(database), 'messages')).key;
        

        set(ref(database, 'messages/' + id), {
			hostname: hostname,
            username: username,
            message: message,
			sendname: sendname
        });
        document.getElementById('message').value = "";
        alert('message has sent');

    });

    const newMsg = ref(database, 'messages/');
    onChildAdded(newMsg, (data) => {
        if(data.val().sendname != myName && data.val().hostname == HostName) {
            var divData = '<div class="conversation-list" id="fromDiv">\n' +
                                '    <div class="d-flex">\n' +
                                '        <img src="../../resources/host/images/users/avatar-6.jpg" class="rounded-circle avatar" alt="">\n' +
                                '        <div class="flex-1">\n' +
                                '            <div class="ctext-wrap">\n' +
                                '                <div class="ctext-wrap-content">\n' +
                                '                    <div class="conversation-name"><span class="name">'+data.val().sendname+'</span><span class="time">10:04</span></div>\n' +
                                '                    <p class="mb-0 msg_cotainer">\n' +
                                '                        '+data.val().message+'' +
                                '                    </p>\n' +
                                '                </div>\n' +
                                '                <div class="dropdown align-self-start">\n' +
                                '                    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n' +
                                '                        <i class="bx bx-dots-vertical-rounded"></i>\n' +
                                '                    </a>\n' +
                                '                    <div class="dropdown-menu">\n' +
                                '                        <a class="dropdown-item" href="#">Copy</a>\n' +
                                '                        <a class="dropdown-item" href="#">Save</a>\n' +
                                '                        <a class="dropdown-item" href="#">Forward</a>\n' +
                                '                        <a class="dropdown-item" href="#">Delete</a>\n' +
                                '                    </div>\n' +
                                '                </div>\n' +
                                '            </div>\n' +
                                '        </div>\n' +
                                '    </div>\n' +
                                '</div>';
            var d1 = document.getElementById('bodyContent');
            d1.insertAdjacentHTML('beforebegin', divData);

			$('.messages').scrollTop($('.messages')[0].scrollHeight);
        }else if(data.val().sendname == myName && data.val().hostname == HostName){
            var divData = '<li class="right">\n' +
								'<div class="conversation-list">\n' +
                                '    <div class="d-flex">\n' +
                                '        <div class="flex-1">\n' +
                                '            <div class="ctext-wrap">\n' +
                                '                <div class="ctext-wrap-content" id="sendDiv">\n' +
                                '                    <div class="conversation-name">'+data.val().sendname+'<span class="time">10:02</span></div>\n' +
                                '                    <p class="mb-0 text-start">\n' +
                                '                        '+data.val().message+'' +
                                '                    </p>\n' +
                                '                </div>\n' +
                                '                <div class="dropdown align-self-start">\n' +
                                '                    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n' +
                                '                        <i class="bx bx-dots-vertical-rounded"></i>\n' +
                                '                    </a>\n' +
                                '                    <div class="dropdown-menu">\n' +
                                '                        <a class="dropdown-item" href="#">Copy</a>\n' +
                                '                        <a class="dropdown-item" href="#">Save</a>\n' +
                                '                        <a class="dropdown-item" href="#">Forward</a>\n' +
                                '                        <a class="dropdown-item" href="#">Delete</a>\n' +
                                '                    </div>\n' +
                                '                </div>\n' +
                                '            </div>\n' +
                                '        </div>\n' +
                                '        <img src="../../resources/host/images/users/avatar-3.jpg" class="rounded-circle avatar" alt="">\n' +
                                '    </div>\n' +
                                '</div>\n' +
								'</li>';
            var d1 = document.getElementById('bodyContent');
            d1.insertAdjacentHTML('beforebegin', divData);

			$('.messages').scrollTop($('.messages')[0].scrollHeight);
        }
    });

	const chatuserList = ref(database, 'ChatRoom/');
    onChildAdded(chatuserList, (data) => {
            var divDataChat = '    <a href="#">\n' +
                                '        <div class="d-flex align-items-center">\n' +
                                '            <div class="flex-shrink-0 user-img online align-self-center me-3">\n' +
                                '                <div class="avatar-sm align-self-center">\n' +
                                '                    <span class="avatar-title rounded-circle bg-soft-primary text-primary">\n' +
								'						S\n' +
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

		$('.messages').scrollTop($('.messages')[0].scrollHeight);
    });
		
</script>

<script>
    $(document).ready(function () {
        $('#action_menu_btn').click(function () {
            $('.action_menu').toggle();
        });
    });
</script>
</body>
</html>