<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
<script>
const kakao = '${kakao}';
console.log(kakao);
if (kakao == 'kakao') {
	alert('카카오 로그인 계정은 회원정보 수정이 불가능합니다.');
	location.href = '${pageContext.request.contextPath}/reservation/reserve_main';
}

</script>
<style>
        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .modal_overlay {
        
            background-color: rgba(0, 0, 0, 0.5);       
            width: 100%;
            height: 100%;
            position: absolute;
        }
        .modal_content {
            background-color: white;
            padding: 50px 100px;
            text-align: center;
            position: relative;
            border-radius: 10px;
            min-width: 400px;
            width: 50%;
            max-width: 800px;
            z-index: 0;
        }

        .hidden {
            display: none;
        }
</style>
    <div class="content" style="float: left; width: 500px">
      <h1>개인정보</h1>
        <form method="POST">
        	
        <table style="border-spacing: 10px;">
            <tr>
                <td>*</td>
                <td>회원 ID</td>
                <td><input id="userid" type="text" name="userid" value="${login.userid }" readonly required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>이 름</td>
                <td><input id="name" type="text" name="name" value="${login.name }" readonly required /></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
    
             <tr >
                <td>*</td>
                <td>전화번호</td>
                <td><input id="pnum" type="text" name="pnum" value="${login.pnum }"></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr >
                <td>*</td>
                <td>생년월일  </td>
                <td><input type="date" name="birth_date" value="${login.birth_date }" required /></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            
            <tr>
                <td>*</td>
                <td>성 별</td>
                
                <td>
                	<c:choose>
                		<c:when test="${login.gender == 0}">
                			남 성<input type="radio" name="gender" value="0" checked required/>&nbsp;&nbsp;
                			여 성<input type="radio" name="gender" value="1" required/>
                		</c:when>
                		<c:otherwise>
                			남 성<input type="radio" name="gender" value="0" required/>&nbsp;&nbsp;
                			여 성<input type="radio" name="gender" value="1" checked required/>
                		</c:otherwise>
                	</c:choose>
                </td>
                
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            <tr>
                <td>*</td>
                <td>국 가</td>
                <td>
                	<c:choose>
                		<c:when test="${login.foreign == 0}">
                			내국인<input type="radio" name="foreign" value="0" checked required/>&nbsp;&nbsp;
                			외국인<input type="radio" name="foreign" value="1" required/>
                		</c:when>
                		<c:otherwise>
                			내국인<input type="radio" name="foreign" value="0" required/>&nbsp;&nbsp;
                			외국인<input type="radio" name="foreign" value="1" checked required/> 		
                		</c:otherwise>
                	</c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>유지기간</td>
       
                <td>             	
                	<c:choose>
	                	<c:when test='${login.expiry_date == 1 }'>
	                		1년<input type="radio" name="expiry_date" value="1" checked required/>
	                		2년<input type="radio" name="expiry_date" value="2" required/>
	                		3년<input type="radio" name="expiry_date" value="3" required/>
	                	</c:when>
	                	<c:when test='${login.expiry_date == 2 }'>	
	                		1년<input type="radio" name="expiry_date" value="1"  required/>
	                		2년<input type="radio" name="expiry_date" value="2" checked required/>
	                		3년<input type="radio" name="expiry_date" value="3" required/>	                	
	                	</c:when>
	                	<c:when test='${login.expiry_date == 3 }'>	
	                		1년<input type="radio" name="expiry_date" value="1" required/>
	                		2년<input type="radio" name="expiry_date" value="2" required/>
	                		3년<input type="radio" name="expiry_date" value="3" checked required/>                		
	                	</c:when>
                	</c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>문자수신</td>
                <td>
                    <c:choose>
	                	<c:when test='${login.agree_sms == 1 }'>
		                	Yes<input type="radio" name="agree_sms" value="1" checked required/>&nbsp;&nbsp;
		                	No<input type="radio" name="agree_sms" value="0" required/>
		                </c:when>
		                <c:otherwise>
		                	Yes<input type="radio" name="agree_sms" value="1" required/>&nbsp;&nbsp;
		                	No<input type="radio" name="agree_sms" value="0" checked required/>
		           
		                </c:otherwise>
		            </c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
           <tr>
                <td>*</td>
                <td>이메일수신</td>
                <td>
                	 <c:choose>
	                	<c:when test='${login.agree_email == 1 }'>
		                	Yes<input type="radio" name="agree_email" value="1" checked required/>&nbsp;&nbsp;
		                	No<input type="radio" name="agree_email" value="0" required/>
		                </c:when>
		                <c:otherwise>
		                   	Yes<input type="radio" name="agree_email" value="1" required/>&nbsp;&nbsp;
		                   	No<input type="radio" name="agree_email" value="0" checked required/>
		                </c:otherwise>
		                
		              </c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>우편수신</td>
                <td>
                	<c:choose>
                		<c:when test='${login.agree_post == 1}'>	
                			Yes<input type="radio" name="agree_post" value="1" checked required/>&nbsp;&nbsp;
                			No<input type="radio" name="agree_post" value="0" required/>
                		</c:when>
                		<c:otherwise>
							Yes<input type="radio" name="agree_post" value="1" required/>&nbsp;&nbsp;
                			No<input type="radio" name="agree_post" value="0" checked required/>
                		</c:otherwise>
                	</c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            
            <tr>
                <td>*</td>
                <td>전화수신</td>
                <td>
                	<c:choose>
                		<c:when test='${login.agree_pnum == 1}'>	
                			Yes<input type="radio" name="agree_pnum" value="1" checked required/>&nbsp;&nbsp;
                			No<input type="radio" name="agree_pnum" value="0" required/>
                		</c:when>
                		<c:otherwise>
                		    Yes<input type="radio" name="agree_pnum" value="1" required/>&nbsp;&nbsp;
                			No<input type="radio" name="agree_pnum" value="0" checked required/>
                		</c:otherwise>
                	</c:choose>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
           		<td colspan="3">
           			 <input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="회원수정">
          		</td>
            </tr>
            <tr>
           		<td colspan="3">
          		</td>
            </tr>
  
            
       </table>
       
       </form>  
       <button id="taltebtn" style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none; float: left; margin-left: 10px;"value="탈퇴하기">탈퇴하기 </button>
       
	</div>
	
	<div class="modal hidden">
        <div class="modal_overlay"></div>
        <div class="modal_content">
            <h2>회원 탈퇴</h2>
            <br>
            <div>
            	<form action="${cpath}/join/talte" method="POST">
            		<label style="text-align: center;" for="selectreason">* 탈퇴 이유 :</label><p>
	                
	                <select style="width:350px; font-size: 15px;" name="leave_reason" id="selectreason" required>
						<option>=== 탈퇴 사유 선택 ===</option>
					</select><p>
				
					<input type="hidden" name="member_idx" value="${login.idx }">
					<input type="hidden" name="userid" value="${login.userid }">
					
					<label style="text-align: center;" for="ta">* 상세 이유 :</label><p>
					<textarea name="wish" id="ta" style="resize: none; width:350px; height:100px;"></textarea><p>
					
					<input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 200px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="탈퇴하기"/>
				</form>
            
            </div>
            
            <button style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 200px; color: white; background-color: #4DABF7; outline: none;" id="modalclose">닫기</button>
        </div>
    </div>
	
 </div>
</div>
 
<script type="text/javascript">
	const editForm = document.forms[1];
	console.log({editForm});
	console.log(editForm);

	const submitHandler = function(event) {
		event.preventDefault();
		const flag = confirm('정말 수정하시겠습니까?')
		if(flag == false) {
			return;
		}
		editForm.submit();
	};
	editForm.onsubmit = submitHandler;
</script>

<script>

	const taltebtn = document.getElementById('taltebtn');
	const modal = document.querySelector('.modal');
	const modalclose = document.getElementById('modalclose');
	
	// 탈퇴하기 버튼 누르면, 탈퇴 사유 전체 목록을 가져온다...
	taltebtn.onclick = () => {
		//console.log('${login.userid}');  // 이렇게쓰면 순수 값으로 찍힌다.
		modal.classList.remove('hidden');
		const url = '${cpath}' + '/reason';
		const opt = {
			method: 'GET',
		}
		fetch(url, opt)
		.then(resp => resp.json())
		.then(jsondata => {
			console.log(jsondata);
			const selectreason = document.getElementById('selectreason');
//			const pbList = document.getElementById('pb-list');
//			pbList.appendChild(convertJsonToTable(json)); // pblist에 table 를 추가한다. 
		for(let i = 0; i < jsondata.length; i++) {
			const op = document.createElement('option');
			op.innerText = jsondata[i].reason_content;
			console.log('jsondata[i].reason_content : ' + jsondata[i].reason_content);
			//op.value = jsondata[i].idx;
			console.log('jsondata[i].idx : ' + jsondata[i].idx);
			selectreason.appendChild(op);
			}
				
		});
	};
	
	// 모달 창 종료하면, 태그에 남아 있는 찌거끼 값들을 모두 없애자...
	modalclose.onclick = () => {
		console.log('모탈 창 종료'); 
		const selectreason = document.getElementById('selectreason');
		while ( selectreason.hasChildNodes() )
		 	{ selectreason.removeChild( selectreason.firstChild ); }
		const op = document.createElement('option'); // 엘리먼트 추가하기 
		op.innerText = '=== 탈퇴 사유 선택 === '; // 엘리먼트안에 텍스트 추가하기.
		selectreason.appendChild(op) // 부모에 자식 하나 추가하기.
		
		const ta = document.getElementById('ta'); // id 불러오기
		ta.value = ''; // id로 가져왔기 때문에 value로 값을 초기화 하자.
		
		modal.classList.add('hidden');
	};
	
	// select 버튼 클릭하면 발생..
	selectreason.onclick = () => {
		console.log('셀렉트 눌렸냐?');  
			
	};	
</script>

<%@ include file="../layout/footer.jsp" %>