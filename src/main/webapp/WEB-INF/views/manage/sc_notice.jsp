<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../manage/sc.jsp" %>
	<script>

	</script>

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
    
    <div class="content" style="float: left; width: 1000px">
        	
			<div style="min-width: 320px; max-width: 1000px;padding: 10px;border-radius: 7px;background: #ffffff;text-align:left">
	 
					<input id="shtab1" type="radio" name="tabs" checked> 
					<label style="font-size:20px;" for="shtab1">공지사항(전체)</label>
		 
					<input id="shtab2" type="radio" name="tabs">
					<label style="font-size:20px;" for="shtab2">일반</label>
					
					<input id="shtab3" type="radio" name="tabs"> 
					<label style="font-size:20px;" for="shtab3">이벤트</label>
		 
					<input id="shtab4" type="radio" name="tabs">
					<label style="font-size:20px;" for="shtab4">당첨자</label>
	
					<section id="content1" style="margin-bottom:20px;">
						<table style="border-collapse: collapse">
							<tr style="height: 50px">
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">번호</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">구분</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">제목</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">내용</th>						
							<tr>
						<c:forEach var="an" items="${allN}" varStatus="i">
							
							<tr>
								<td style="width:50px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${an['IDX']}</td>
								<td style="width:100px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${an['KIND']} </td>
								<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
						<a href="${cpath }/manage/sc_notice/${an['IDX']}">	${an['TITLE']} </a> </td>
								<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${an['CONTENT']} </td>
							<tr>
						</c:forEach>
						</table>
						
					</section>
					
					<section id="content2" style="margin-bottom:20px;">
						<table>
							<tr style="height: 50px">
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">번호</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">구분</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">제목</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">내용</th>						
							<tr>
						<c:forEach var="nn" items="${normalN}" varStatus="i">
							
							<tr>
								<td style="width:50px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${nn['IDX']}</td>
								<td style="width:100px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${nn['KIND']}</td>
								<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
						<a href="${cpath }/manage/sc_notice/${nn['IDX']}">		${nn['TITLE']} </a></td>
								<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${nn['CONTENT']}</td>
							<tr>
						</c:forEach>
						</table>
						
					</section>
					
					<section id="content3" style="margin-bottom:20px;">
						<table>
							<tr style="height: 50px">
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">번호</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">구분</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">제목</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">내용</th>						
							<tr>
						<c:forEach var="en" items="${eventN}" varStatus="i">
							
							<tr>
								<td style="width:50px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${en['IDX']}</td>
								<td style="width:100px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${en['KIND']}</td>
								<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
						<a href="${cpath }/manage/sc_notice/${en['IDX']}">		${en['TITLE']} </a></td>
								<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${en['CONTENT']}</td>
							<tr>
						</c:forEach>
						</table>
						
					</section>
					
					<section id="content4" style="margin-bottom:20px;">
						<table>
							<tr style="height: 50px">
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">번호</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">구분</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">제목</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">내용</th>						
							<tr>
						<c:forEach var="ln" items="${lotteN}" varStatus="i">
							
							<tr>
								<td style="width:50px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${ln['IDX']}</td>
								<td style="width:100px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${ln['KIND']}</td>
								<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
							<a href="${cpath }/manage/sc_notice/${ln['IDX']}">	${ln['TITLE']} </a></td>
								<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
								${ln['CONTENT']} </td>
							<tr>
						</c:forEach>
						</table>
						
					</section>
					
			</div>

	</div>
	
	<script>
		document.getElementById('shtab1').onclick = function () {
		  
		};
	
	
	</script>
	
	
	
 </div>
</div>
<%@ include file="../layout/footer.jsp" %>