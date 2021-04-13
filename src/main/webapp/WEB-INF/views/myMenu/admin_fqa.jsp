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
            padding: 15px 50px;
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
        	
		      <div style="min-width: 320px; max-width: 800px;padding: 10px;border-radius: 7px;background: #ffffff;text-align:left">
	 
					<input id="shtab1" type="radio" name="tabs" checked> 
					<label style="font-size:20px;" for="shtab1">중분류</label>
		 
					<input id="shtab2" type="radio" name="tabs">
					<label style="font-size:20px;" for="shtab2">소분류</label>
					
					<input id="shtab3" type="radio" name="tabs">
					<label style="font-size:20px;" for="shtab3">질문등록</label>
	
					<section id="content1" style="margin-bottom:20px;">			
						<form method="POST" action="${cpath}/myMenu/admin_fqa/category1">
							<p><input style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" placeholder="중분류를 등록하세요" type="text" id='kind' name="kind" ></p>
							<p><input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 300px; color: white; background-color: #4DABF7; outline: none;" id="add" type="submit" value="중분류 등록하기"></p>
						</form>									
					</section>	 				
					<section id="content2" style="margin-bottom:20px;">
						<form method="POST" action="${cpath}/myMenu/admin_fqa/category2">				
							<p><select style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" name="kindcheck" id="part" required>
									<option>===중분류===</option>
										<c:forEach var="fc" items="${fqacategorylist}" varStatus="i">
											<option>${fc.kind } </option>
										</c:forEach>	
							</select></p>														
							<p><input style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" required placeholder="소분류를 입력하세요" type="text" name="kind"></p>
							<p>
							<p><input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 300px; color: white; background-color: #4DABF7; outline: none;" id = "add2" type="submit" value="소분류 등록하기"></p>						
						</form>							
					</section>								
					<section id="content3" style="margin-bottom:20px;">					
						<form method="POST">
							<p><select style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" name="noti" id="p1" required>
									<option>===중분류===</option>
										<c:forEach var="fc" items="${fqacategorylist}" varStatus="i">
											<option>${fc.kind }</option>
										</c:forEach>	
							</select></p>
							<p><select style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" name="noti" id="p2" required>
									<option>===소분류===</option>
										<!--<c:forEach var="fd" items="${fqadetaillist}" varStatus="i">
											<option>${fd.kind }</option>
										</c:forEach>	-->
							</select></p>
							<input type="hidden" id="fqa_category_idx" name="fqa_category_idx">
							<input type="hidden" id="fqa_detail_idx" name="fqa_detail_idx">
							<p><input style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" placeholder="제목을 입력하세요" required type="text" name="title"></p>
							<p>
							<textarea placeholder="내용을 입력하세요" name="content" style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; resize: none; width:600px; height:300px;" required></textarea></p>
							<p><input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 600px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="자주찾는 질문 등록하기"></p>
						</form>						
					</section>				
				</div>
			</c:when>
		</c:choose>
	</div>
	
	<script>
		const kind = document.getElementById('kind');
		const add = document.getElementById('add');
		
		add.onclick = function () {
			if(kind.value == ''){
				alert('중분류를 입력하세요');
				event.preventDefault();
			}		
		};
	
		const part = document.getElementById('part');
		const add2 = document.getElementById('add2');
		add2.onclick = function () {
			if(part.value == '===중분류==='){
				alert('중분류를 입력하세요');
				event.preventDefault();
			}		
		};
		
	
		const p1 = document.getElementById('p1');
		const p2 = document.getElementById('p2');
		
		function deleteso() {
			const t = document.getElementById("p2"); 
			while ( t.hasChildNodes() ) { 
				t.removeChild(t.firstChild); 
			}
			const option = document.createElement('option');
			option.innerText = '===소분류===';
			t.appendChild(option);
		}
		
		let obj;
		
		let fqa_category_idx = document.getElementById('fqa_category_idx');
		let fqa_detail_idx = document.getElementById('fqa_detail_idx');
		p1.onclick = function () {
			deleteso();
			const p3 = p1.options[p1.selectedIndex].value;
			$.ajax({
				url: '${pageContext.request.contextPath}/so/' + p3,
				method: 'GET',
				dataType: 'json',
				success: function(data) {
					console.log(data);
					obj = data;
					for (let i=0; i < data.length; i++) {
						const option = document.createElement('option');
						//fqa_categroy_idx.value = data[i].fqa_category_idx;
						//fqa_detail_idx.value = data[i].idx;
						option.innerText = data[i].kind;
						p2.appendChild(option);
						
					}				
				},
				error: function(){
					console.log('불러오기 실패');
				}	
			}); 
			
	
		}
		const regForm = document.forms[3];
		console.log(regForm);
		const submitHandler = function(event) {
			console.log('regForm : ' + regForm);
			event.preventDefault();
			for (let i=0; i < obj.length; i++) {
				if(p2.value == obj[i].kind) {
					console.log("ob.idx : " + obj[i].idx);
					console.log("ob.fqa_category_idx : " + obj[i].fqa_category_idx );
					fqa_category_idx.value = obj[i].fqa_category_idx;
					fqa_detail_idx.value = obj[i].idx;
				}
				regForm.submit();
			}
		}
		regForm.onsubmit = submitHandler;
	</script>
	
	
	
 </div>
</div>
<%@ include file="../layout/footer.jsp" %>