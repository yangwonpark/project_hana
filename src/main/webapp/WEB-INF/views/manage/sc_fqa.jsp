<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../manage/sc.jsp" %>



	<div class="content" style="float: left; width: 1000px">				  
				<form method="POST">
					<input type="text" value="자주 하는 질문을 찾아보세요 !!!" readonly style="text-align:center; color:white;border-radius:10px; width:500px;height:50px;font-size:20px;background-color: #4DABF7;border: none;">
						
					
						<select id="select1" name="category1" style="color:white;border-radius:10px; width:140px;height:50px;font-size:20px;background-color: #4DABF7;border:none; ">
									<option>====선택===</option>
									
							<c:forEach var="fcl" items="${fqacategorylist}" varStatus="i">									
									<option>${fcl.kind } </option>
							</c:forEach>				  			
				  		</select>				  	

			      	
			      		<select id="select2" name="category2" style="color:white; border-radius:10px; width:140px; height:50px;font-size:20px;background-color: #4DABF7; border:none; ">
				  					
				  		<!-- 	<c:forEach var="fdl" items="${fqadetaillist}" varStatus="i">
									<option>${fdl.kind } </option>
							</c:forEach>	 -->
				  	
						</select>
					
						<input type="text" placeholder="검색어" name="search" style="color:#4DABF7; border-radius:10px; width:100px; height:50px;font-size:20px;background-color: white;  border:3px solid #4DABF7;">
						<button onclick="send()" style="color:white; border-radius:10px; width:100px; height:50px;font-size:20px;background-color: #4DABF7; border:3px solid #4DABF7;">검색 </button>
			    </form>	
				        <table id="t" style="font-size: 20px; width: 1000px; border-collapse: collapse; border-spacing: 10px;">

				            
				            <tr>
				                <th style="height:100px; width:50px">번호</th>
				                <th style="height:100px; width:700px">질문</th>
				                <th style="height:100px; width:700px">답변</th>

				            </tr>
				            
				           <!-- <c:forEach var="fqaall" items="${fqaalllist}" varStatus="i">									
									<tr>
										<td style="font-size: 20px; height: 50px; text-align:center;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">${fqaall.idx } </td>
										<td style="font-size: 20px; height: 50px; text-align:center;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">${fqaall.title } </td>
										<td style="font-size: 20px; height: 50px; text-align:center;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">${fqaall.content } </td>
									</tr>
								</c:forEach>  -->
							
								<c:forEach var="fsh" items="${fqasession}" varStatus="i">									
									<tr>
										<td style="font-size: 20px; height: 50px; text-align:center;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">${fsh.idx } </td>
										<td style="font-size: 20px; height: 50px; text-align:center;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">${fsh.title } </td>
										<td style="font-size: 20px; height: 50px; text-align:center;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">${fsh.content } </td>
									</tr>
								</c:forEach>	
												
						     
	     
				       </table>


    </div>    
	
	<script>
	const select1 = document.getElementById('select1');
	const select2 = document.getElementById('select2');
	const tab = document.getElementById('t');
	let selectvalue = '';
	let selectvalue2 = '';
	
	function deleteso1() {
		const t = document.getElementById("select2"); 
		while ( t.hasChildNodes() ) { 
			t.removeChild(t.firstChild); 
		}
		const tab = document.getElementById("t"); 
		while ( tab.hasChildNodes() ) { 
			tab.removeChild(tab.firstChild); 
		}		
		const tr = document.createElement('tr');
		const th1 = document.createElement('th');
		const th2 = document.createElement('th');
		const th3 = document.createElement('th');
	//	const th4 = document.createElement('th');
	//	const th5 = document.createElement('th');
		
		th1.innerText = '번호';
		th2.innerText = '질문';
		th3.innerText = '답변';
	//	th4.innerText = 'aaaaa';
	//	th5.innerText = 'aaaaa';
		th1.height=100;
		th2.height=100;
		th3.height=100;	
		th1.width=50;
		th2.width=700;
		th3.width=700;
	//	th4.width=50;
	//	th5.width=50;
		tr.appendChild(th1);
		tr.appendChild(th2);
		tr.appendChild(th3);
	//	tr.appendChild(th4);
//		tr.appendChild(th5);
		tab.appendChild(tr);
		
	}
	
	function deleteso2() {

		const tab = document.getElementById("t"); 
		while ( tab.hasChildNodes() ) { 
			tab.removeChild(tab.firstChild); 
		}		
		const tr = document.createElement('tr');
		const th1 = document.createElement('th');
		const th2 = document.createElement('th');
		const th3 = document.createElement('th');
	//	const th4 = document.createElement('th');
	//	const th5 = document.createElement('th');
		
		th1.innerText = '번호';
		th2.innerText = '질문';
		th3.innerText = '답변';
	//	th4.innerText = 'aaaaa';
	//	th5.innerText = 'aaaaa';
		th1.height=100;
		th2.height=100;
		th3.height=100;	
		th1.width=50;
		th2.width=600;
		th3.width=600;
	//	th4.width=50;
	//	th5.width=50;
		tr.appendChild(th1);
		tr.appendChild(th2);
		tr.appendChild(th3);
	//	tr.appendChild(th4);
	//	tr.appendChild(th5);
		tab.appendChild(tr);
		
	}
	
	
	select1.onchange = function () {
		deleteso1();
		const option = document.createElement('option');
		option.innerText = '===선택===';
		select2.appendChild(option);	
		selectvalue = select1.value;
		$.ajax({
			url: '${pageContext.request.contextPath}/manage/sc_fqa/' + selectvalue,
			method: 'GET',
			dataType: 'json',
			success: function(data) {
				console.log(data);
				console.log(data.fqaDetaillist.length);
				console.log(data.fqalist.length);
				
				//obj = data;
				for (let i=0; i < data.fqaDetaillist.length; i++) {
					const option = document.createElement('option');
					//fqa_categroy_idx.value = data[i].fqa_category_idx;
					//fqa_detail_idx.value = data[i].idx;
					option.innerText = data.fqaDetaillist[i].kind;
					select2.appendChild(option);					
				}	
				
				for (let i=0; i < data.fqalist.length; i++) {
					const trr = document.createElement('tr');
					const td1 = document.createElement('td');
					const td2 = document.createElement('td');
					const td3 = document.createElement('td');
		//			const td4 = document.createElement('td');
		//			const td5 = document.createElement('td');
					//fqa_categroy_idx.value = data[i].fqa_category_idx;
					//fqa_detail_idx.value = data[i].idx;
					td1.innerText = data.fqalist[i].idx;
					td2.innerText = data.fqalist[i].title;
					td3.innerText = data.fqalist[i].content;
					td1.style.borderBottom = "1px solid #4DABF7";
					td2.style.borderBottom = "1px solid #4DABF7";
					td3.style.borderBottom = "1px solid #4DABF7";
					td1.height=50;
					td2.height=50;
					td3.height=50;	
		//			td4.innerText = data.fqalist[i].fqa_category_idx;
		//			td5.innerText = data.fqalist[i].fqa_detail_idx;			
					trr.appendChild(td1);
					trr.appendChild(td2);	
					trr.appendChild(td3);	
		//			trr.appendChild(td4);	
		//			trr.appendChild(td5);
					tab.appendChild(trr);
				}							
			},
			error: function(){
				console.log('불러오기 실패');
			}	
		}); 
	}
	
	select2.onchange = function () {
		deleteso2();
		selectvalue = select1.value;
		selectvalue2 = select2.value;
		
		
	//const frm = document.forms[1];
	//frm.submit();
		$.ajax({
			url: '${pageContext.request.contextPath}/manage/sc_fqa/result',
			method: 'GET',
			data: {"selectvalue": selectvalue, 'selectvalue2': selectvalue2},
			dataType: 'json',
			success: function(data) {
				console.log(data);	
				
				for (let i=0; i < data.length; i++) {
					const trr = document.createElement('tr');
					const td1 = document.createElement('td');
					const td2 = document.createElement('td');
					const td3 = document.createElement('td');
		//			const td4 = document.createElement('td');
		//			const td5 = document.createElement('td');
					//fqa_categroy_idx.value = data[i].fqa_category_idx;
					//fqa_detail_idx.value = data[i].idx;
					td1.innerText = data[i].idx;
					td2.innerText = data[i].title;
					td3.innerText = data[i].content;
				//	td4.innerText = data[i].fqa_category_idx;
				//	td5.innerText = data[i].fqa_detail_idx;	
					td1.style.borderBottom = "1px solid #4DABF7";
					td2.style.borderBottom = "1px solid #4DABF7";
					td3.style.borderBottom = "1px solid #4DABF7";
					td1.height=50;
					td2.height=50;
					td3.height=50;	
					trr.appendChild(td1);
					trr.appendChild(td2);	
					trr.appendChild(td3);	
		//			trr.appendChild(td4);	
		//			trr.appendChild(td5);
					tab.appendChild(trr);
				}	
				
			},
			error: function(){
				console.log('불러오기 실패');
			}	
		}); 
	
	}
	
	function send() {
		 console.log(document.forms[1]);
		
		submit();
	}
	
	</script>
	
	
	
 </div>
</div>
<%@ include file="../layout/footer.jsp" %>