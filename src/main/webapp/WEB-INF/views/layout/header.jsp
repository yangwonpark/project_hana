<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 조 프로젝트</title>
<link rel="stylesheet" href="${cpath }/css/style.css">
<%-- <link rel="stylesheet" href="${cpath }/css/tour.css"> --%>
<link rel="stylesheet" href="${cpath }/css/chat.css">
<script src="https://kit.fontawesome.com/e4a70f325d.js" crossorigin="anonymous"></script>
<script src="${cpath }/resources/js/js.js"></script>
<%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script> --%>
<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.1/sockjs.js"></script>
<!-- 날짜 선택 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>
	<div id="main">
		<div>
			<div id="wrap">
				<div id="nav_wrap">
					<div class="nav">
						<div class="top_nav">
							<div class="nl"></div>
							<div class="nf">
								<ul>
									<c:choose>
										<c:when test="${login == null && kakao == null}">
											<li><a class="nav_a" style="padding-right: 28px;" href="${cpath }/login/login_form">로그인</a></li>
											<li><a class="nav_a" style="padding-right: 17px;" href="${cpath }/join/join_form">회원가입</a></li>
										</c:when>
										<c:otherwise>
											<li><a class="nav_a" style="padding-right: 28px;" href="${cpath }/logout/logout_form">로그아웃</a></li>
										</c:otherwise>
									</c:choose>
									<li><a class="nav_a" href="${cpath }/manage/sc_fqa">고객센터</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="nav">
						<div class="middle_nav">
							<div class="nl">
								<div>
									<a href="${cpath }/"><img class="logo" src="${cpath }/resources/img/logo.png"></a>
								</div>
								<div class="search">
									<form method="GET">
										<fieldset class="search_field">
											<legend class="blind">통합검색 입력폼</legend>	
											<div>
												<input class="search_input" type="text" placeholder="검색어를 입력해 주세요">
											</div>
										</fieldset>
									</form>
								</div>
								<div class="rolling" onmouseover="showList();">
									<dl id="rank_list">
						                <dt>실시간 급상승 인기</dt>
						                <dd>
						                    <ol>
						                        <li class="ll">부산 놀거리</li>
						                        <li class="ll">해운대 그랜드 조선</li>
						                        <li class="ll">가평</li>
						                        <li class="ll">서울 논현동</li>
						                        <li class="ll">대구</li>
						                        <li class="ll">파크 하야트</li>
						                        <li class="ll">강원도</li>
						                        <li class="ll">경기도</li>
						                        <li class="ll">호텔</li>
						                        <li class="ll">테마파크</li>
						                    </ol>
						                </dd>
						            </dl>
								</div>
								<div class="rolling_content" onmouseout="hideList();" style="display: none;">
					            	<p class="title">실시간 검색어</p>
					            	<a href="#">부산 놀거리</a>
					            	<a href="#">해운대 그랜드 조선</a>
					            	<a href="#">가평</a>
					            	<a href="#">서울 논현동</a>
					            	<a href="#">대구</a>
					            	<a href="#">파크 하야트</a>
					            	<a href="#">강원도</a>
					            	<a href="#">경기도</a>
					            	<a href="#">호텔</a>
					            	<a href="#">테마파크</a>
								</div>
								<div></div>
							</div>
							<div class="nf">
								<div class="private">
									<ul class="pm">
										<li>
											<a class="pm_a" href="${cpath }/myMenu/myMenu_main">
												<i class="far fa-user fa-2x"></i>
												<br>
												<span style="font-size: 10pt;">마이메뉴</span>
											</a>
											<div></div>
											<div></div>
										</li>
										<li>
											<a class="pm_a" href="${cpath }/reservation/reserve_main">
												<i class="fas fa-clipboard-list fa-2x"></i>
												<br>
												<span style="font-size: 10pt;">예약내역</span>
											</a>
										</li>
										<li>
											<a class="pm_a" href="${cpath }/cart/cart_form">
												<i class="fas fa-shopping-cart fa-2x"></i>
												<br>
												<span style="font-size: 10pt;">장바구니</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="nav" style="margin-top: 20px; border-top: 1px solid #E5E5E5; border-bottom: 1px solid #000000">
						<div class="bottom_nav">
							<div class="nl">
								<div class="all_menu">
									<a href="#"><i class="fas fa-bars"></i> 전체메뉴</a>
									<div class="total_list">
										<div>
											<a href="#" class="btn_cls"></a>
											<div></div>
										</div>
									</div>
								</div>
								<div class="bl">
									<ul class="bottom_list">
										<li class="depth1">
											<a href="${cpath}/hotel/hotelView">호텔 / 펜션</a>
											<div class="dc">
												<ul class="depth2">
													<li><a href="${cpath }/hotel/hotelView">호텔 예약</a></li>
													<li><a href="#" style="width: 150px">펜션 / 풀빌라 예약</a></li>
												</ul>
											</div>
										</li>
										<li style="margin-left: 10px;"class="depth1">
											<a href="${cpath}/tour/tourView">투어 / 입장권</a>
											<div class="dc">
												<ul class="depth2">
													<li><a href="${cpath}/tour/tour_jeju/1">제주</a></li>
													<li><a href="${cpath}/tour/tour_seoul/1">서울</a></li>
													<li><a href="${cpath}/tour/tour_gyeonggi/1">경기</a></li>
													<li><a href="${cpath}/tour/tour_gyeongsang/1">경상</a></li>
													<li><a href="${cpath}/tour/tour_gangwon/1">강원</a></li>
													<li><a href="${cpath}/tour/tour_jeolla/1">전라</a></li>
													<li><a href="${cpath}/tour/tour_chungcheong/1">충청</a></li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="nf">
							
							</div>
						</div>
					</div>
					<div class="right_fixed"></div>
					<c:if test="${login != null && login.userkind == 0 }">
						<div class="container">
							<div id="user-container" class="chat-container2" style="display: none">
							<div style="height: 12px;"></div>
								<!-- 서버와 메세지를 주고 받을 텍스트 영역 -->
								<div class="chat-area"></div>
								<div class="input--text">
									<input class="text-msg" type="text" onkeydown="return enter()">
									<input type="button" class="send-btn" value="전송">
								</div>
							</div>
							<br/>		
							<div id="enter-container">
								<input disabled="disabled" type="hidden" id="name" style="border: none; background: none;" value="${login.name }">
								<button id="enter-btn" class="btn-qa">1:1 문의</button>
							</div>
						</div>
					</c:if>
				</div>
				<div></div>
			</div>
		</div>
	</div>
	
	<script>
	// 실시간 검색어 rolling 함수
	$(function() {
	    var count = $('#rank_list li').length;
	    var height = $('#rank_list li').height();

	    function step(index) {
	        $('#rank_list ol').delay(2000).animate({
	            top: -height * index,
	        }, 500, function() {
	            step((index + 1) % count);
	        });
	    }

	    step(1);
	});
	
	const chatArea = document.querySelector(".chat-area");
// 	const chatArea = document.getElementById("chat-area");
	const enterBtn = document.getElementById("enter-btn");
	const sendBtn = document.querySelector(".send-btn");
// 	const sendBtn = document.getElementById("send-btn");
	const chatContainer = document.querySelector(".chat-container2")
// 	const chatContainer = document.getElementById("chat-container")
	const textMsg = document.querySelector('.text-msg');
// 	const textMsg = document.getElementById('text-msg');
	const btnQa = document.querySelector('.btn-qa');
	
	let toggleCheck = false;
	
	// enterBtn click이벤트 최초 실행 후 이벤트 기능 상실
	// onclick보다 addEventListener가 더 최신 문법이다...
	enterBtn.addEventListener('click', function(e) {
		console.log(e.target.previousElementSibling.value);
		connect(e.target.previousElementSibling.value);
	}, {once : true});
	
	
	btnQa.onclick = (e) => {
		if(toggleCheck) {
			toggleCheck = false;
			chatContainer.style.display = 'none';
		} else {
			toggleCheck = true;
			chatContainer.style.display = 'block';
		}
	}
	
	sendBtn.onclick = (e) => {
		sendMessage();
	}
	
	let sock_user;
	
	function connect(name) {
		sock_user = new SockJS('http://192.168.0.83:8080/day08/clientEcho');
		// 웹 소켓 자체에 내장 메소드 4개 
		sock_user.onopen = onOpen;
		sock_user.onmessage = onMessage;
		sock_user.onclose = onClose;
		sock_user.onerror = onError;
	}
	
	function onOpen() {
		const name = document.getElementById('name').value;
		console.log(name);
// 		chatContainer.style.display = 'block';
		// 웹소켓 내장 메소드
// 		sock_user.send(name + "님 입장");
		chatArea.innerHTML = "";
	}
	
	function onError() {
		chatArea.innerHTML += "연결에 실패했습니다. <br> 재접속 하세요";
	}
	
	function onMessage(m) {
		console.log(m);
		console.log(m.data);
		chatArea.innerHTML += "<span class='chat--left'>" +
		"<span class='chat-user'>관리자<br>" +
		"<span class='chat-content'>" + m.data + "</span>"
	}
	
	function onClose() {};
	
	// admin쪽 onMessage랑 연결
	function sendMessage(message) {
		const liveName = document.getElementById('name').value;
		
		chatArea.innerHTML += "<span class='chat--right'>" + 
		"<span class='chat-user'>" + liveName + "<br>" +
		"<span class='chat-content'>" + textMsg.value + "</span>"
		
		console.log(textMsg.value);
		sock_user.send(liveName + ":" + textMsg.value);
		
		textMsg.value = "";
	}
	
	function enter() {
		if(event.keyCode == 13) {
			sendMessage();
			return false;
		}
		return true;
	}
	
	
	
</script>
	
	
	