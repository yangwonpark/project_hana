<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
	<!-- 채팅 영역 -->
	<!-- 유저가 접속할 때 마다 이 container에 채팅창 생성 -->
	<div class="oto-wrap">
		<div class="oto-list">
			1:1 상담
		</div>
	</div>
	<div class="container">
		<div class="chat-container" style="display: none">
			<div style="height: 12px;"></div>
			<!-- 서버와 메세지를 주고 받을 텍스트 영역 -->
			<div class="chat-area"></div>
			<div class="input--text">
				<input class="text-msg" type="text" onkeydown="if(event.keyCode === 13) return false;">
				<input type="button" class="send-btn" value="전송">
			</div>
			<br/>
		</div>
	</div>
</body>
<script>
// 	let sock = new SockJS('http://192.168.0.83:8080/day08/adminEcho');
	let sock = new SockJS('http://192.168.0.83:8080/hana/adminEcho');
// 	let sock = new SockJS('http://localhost:8080/hana/adminEcho');
	
	sock.onopen = function(msg) {};
	sock.onclose = function(msg) {};
	sock.onerror = function(msg) {};
	sock.onmessage = onMessage;
	
	// 서버로부터 메세지가 오면
	function onMessage(message) {
		// 메세지 구조는 JSON이다
		let node = JSON.parse(message.data);
		console.log(node);
		let messageParts = new String(JSON.stringify(node.message)).split(':');
		let userName = new String(messageParts[0]).replace(/\"/g,'');
		let content = new String(messageParts[1]).replace(/\"/g,'');
		
		
		if(node.status === "visit") {
			let chatContainer = $(".chat-container").html();
			chatContainer = $("<div class='chat-container2'></div>").attr("data-key", node.key).append(chatContainer);
			$(".container").append(chatContainer);
		} else if(node.status === "message") {
			let time = message.timeStamp
			let realDate = new Date(time).toLocaleString();
			
			let $div = $("[data-key='" + node.key + "']");
			let log = $div.find(".chat-area").text();
			if(content === "" || content === "undefined" || content === null) {
				$div.find(".chat-area").append($("<span class='chat--left'>" + userName + "</span>"));
			} else {
				$div.find(".chat-area").append($("<span class='chat--left'>" + 
						"<span class='chat-user'>" + userName + "</span><br>" +
						"<span class='chat-content'>" + content + "</span><br>" +
						"<span class='chat-time'>" + realDate + "</span>"));
				
				
			}
			
		} else if(node.status === "bye") {
			let $div = $("[data-key='" + node.key + "']");
			let log = $div.find(".chat-area").text();
			
			let totLog = JSON.stringify(log);
			
			chatInsert(totLog);
			$("[data-key='" + node.key + "']").remove();
		}
	}
	
	$(document).on("click", ".send-btn", function(message) {
		let $div = $(this).closest(".chat-container2");
		// 메세지 텍스트 박스를 찾아서 값 얻어옴()
		let msg = $div.find(".text-msg").val();
		let key = $div.data("key");
		let log = $div.find(".chat-area").text();
		
		let time = message.timeStamp	
		let realDate = new Date(time).toLocaleString();
		
		$div.find(".chat-area").append($("<span class='chat--right'>" +
				"<span class='chat-user'>관리자<br>" + 
				"<span class='chat-content'>" + msg + "</span><br>" +
				"<span class='chat-time' style='margin-top: 0px'>" + realDate + "</span>"));
		$div.find(".text-msg").val("");
		
		sock.send(key + ":" + msg);
	});
	
	
	// 엔터키 입력 시 sendMessage() 호출
	$(document).on("keydown", ".text-msg", function() {
		if(event.keyCode === 13) {
			$(this).closest(".chat-container2").find(".send-btn").trigger("click");
			return false;	
		}
		return true;
	});
		
	

	// 채팅 내역 MongoDB에 ajax로 저장하는 함수
	const chatInsert = function(msg) {
		const ob = {
			'msg': msg
		}
		
		const json = JSON.stringify(ob);
		
		const url = '${pageContext.request.contextPath}/mongo';
		
		const opt = {
				method: 'POST',
				body: json,
				headers: {
					'Content-type': 'application/json'
				}
		}
		
		fetch(url, opt)
		.then(resp => resp.text())
// 		.then(row => {
// 			if(row == 1) {
// 				console.log("대화가 저장되었습니다");
// 			}
// 			else {
// 				console.log("저장에 실패했습니다")
// 			}
// 		});
		
	}
	
</script>
	
	
	
	
	
	
	
<%@ include file="../layout/footer.jsp" %>