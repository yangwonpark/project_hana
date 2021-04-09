<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
  	<style>	
  		.sh_main {
            min-width: 320px;
            max-width: 800px;
            padding: 10px;    
            border-radius: 7px;;        
            background: #ffffff;}
 
        section {
            display: none;
            padding: 20px 0 0;
            border-top: 1px solid #ddd;}
 
        #shtab1, #shtab2, #shtab3, #shtab4 {
              display: none;}
 
        label {
            display: inline-block;
            padding: 15px 100px;
            color: #bbb;
            border: 1px solid transparent;
            }
 
        label:hover {
            color: #4DABF7;
            cursor: pointer;}
 
        /*input 클릭시, label 스타일*/
        input:checked + label {
              color: white;
              background-color: #4DABF7 ;
              border: 1px solid #ddd;
              border-bottom: 1px solid #ffffff;
              border-radius: 10px;
              }
 
        #shtab1:checked ~ #content1,
        #shtab2:checked ~ #content2,
        #shtab3:checked ~ #content3, 
        #shtab4:checked ~ #content4
         {
            display: block;
			}
    
			
    </style>
    
    <div class="content" style="float: left; width: 700px">
		 <c:choose>
        	<c:when test="${login.userkind == '4' }">	
		      <div style="min-width: 300px; max-width: 700px;padding: 10px;border-radius: 7px;background: #ffffff;text-align:left">
					<input id="shtab1" type="radio" name="tabs" checked> 
					<label for="shtab1">탈퇴 사유 등록/삭제</label>		 
					<input id="shtab2" type="radio" name="tabs">
					<label for="shtab2">탈퇴 사유 목록</label>
					
					<section id="content1" style="margin-bottom:50px;">

		        		<table style="left; margin-top: 100px; border-spacing: 10px;">
		            		<tr>
		                		<td>*</td>
		                		<td>탈퇴 사유 입력</td>
		                		<td><input style="border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7;font-size: 20px;" id="reason" type="text" name="reason" required/></td>
		            		</tr>
		            		<tr>
		           				<td colspan="3">
		           			</tr>	
		            		<tr>
		           				<td colspan="3">
		           			 		<button id="reasonbtn" style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none;">
		           						 탈퇴사유등록
		           			 		</button>
		          				</td>
		            		</tr>  
		       			</table>					
					</section>	 
					
					<section id="content2" style="margin-bottom:20px;">
						<table id="reasontable" style="width: 700px; border-bottom: 3px solid #4DABF7; border-top: 3px solid #4DABF7; text-align: center; margin-top: 100px; border-spacing: 10px;">
		  					
		       			</table>	
					</section>
				</div>
			</c:when>
		</c:choose>
	</div>
	
<script>
	function deleteTable() {
		const t = document.getElementById("reasontable"); 
		while ( t.hasChildNodes() ) { 
			t.removeChild(t.firstChild); 
		}
	}

	document.getElementById('shtab2').onclick = function () {
		deleteTable();
//		alert('I\'m clicked!');
		$.ajax({
			url: '${pageContext.request.contextPath}/reason',
			method: 'GET',
			dataType: 'json',
			success: function(data) {
				console.log(data);
				console.log('이상없음');
				const table = document.getElementById('reasontable');
				const thead = document.createElement('thead');
				const tbody = document.createElement('tbody');
				const theadTr = document.createElement('tr');
				const theadTh1 = document.createElement('th');
				const theadTh2 = document.createElement('th');
				theadTh1.innerText = '번호';
				theadTh2.innerText = '탈퇴 사유 목록';
				theadTr.appendChild(theadTh1);
				theadTr.appendChild(theadTh2);
				thead.appendChild(theadTr);
				table.appendChild(thead);
				
				console.log(data.length);
				for (let i=0; i < data.length; i++) {
					const td1 = document.createElement('td');
					console.log('data[i].idx : ' + data[i].idx);
					td1.innerText = data[i].idx;				
					const td2 = document.createElement('td');
					console.log('data[i].reason_content : ' + data[i].reason_content);
					td2.innerText = data[i].reason_content;
					const tr = document.createElement('tr');
					const tr1 = document.createElement('tr');
					table.appendChild(tr1);
					tr.appendChild(td1);
					tr.appendChild(td2);
					table.appendChild(tr);
					
				}
				
			},
			error: function(){
				console.log('불러오기 실패');
			}	
		});  
		
		
	};	
</script>

 </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>	
	const reasonbtn = document.getElementById('reasonbtn');
	const reason = document.getElementById('reason');
	
//	console.log({reasonbtn});
	const onclickHandler = function(event) {
		deleteTable();
//		console.log(reason);
		$.ajax({
			url: '${pageContext.request.contextPath}/myMenu/admin_outmemberreason/' + reason.value,
			method: 'GET',
			dataType: 'text', // 어차피 json이 text이면서 json 형식임...그래서 text로 받는거임
			success: function(data) {	//data = jsonString
				console.log('json 출력 : ' + data); // 이건 단순 문자열일 뿐이지만(json 형태)
				if(data === '성공') {
					alert('등록  성공하였습니다.')
					
				}else {
					alert('등록 실패하였습니다.')
				}
				location.href = '${pageContext.request.contextPath}/myMenu/admin_outmemberreason/';
				
			//	const ob = JSON.parse(data);	// 변환을 거치고 나면
			//	console.log('자바스크립트 ob 출력 : ' + ob);				// 자바스크립트의 객체가 된다
			//	const pbList = document.getElementById('pb-list');
				//pbList.appendChild(convertJsonToTable(ob));
			},
			error: function() {
				console.log('예외 사항 발생')
			}
		});
	};
	reasonbtn.onclick = onclickHandler;
</script>

<%@ include file="../layout/footer.jsp" %>