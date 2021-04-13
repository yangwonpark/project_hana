<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>

  
		<c:choose>
        		<c:when test="${login.userkind == '4' }">
					<div class="content" style="float: left; width: 500px">
						<script>
					
							alert('관리자는 지원하지 않는 메뉴입니다');
							location.href= '${cpath}/myMenu/admin_company';
						</script>
					</div>
				</c:when>
		</c:choose>		

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
					<label style="font-size:20px;" for="shtab1">장바구니 화면</label>
		 
	
					<section id="content1" style="margin-bottom:20px;">
						<table style="border-collapse: collapse">
							<tr style="height: 50px">
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">번호</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">구분</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">가격</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">예약일</th>
								<th style="font-size:20px;border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;text-align:center;">인원수</th>					
							<tr>
						
						<c:choose>
							<c:when test="${cartlist == '예약이 없습니다.'}">
								<tr>
									<td colspan="5" style="width:1000px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
									${cartlist}</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="cart" items="${cartlist}" varStatus="i">
							
								<tr>
									<td style="width:50px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
									${cart.idx} </td>
									<td style="width:100px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
									${cart.major_category_idx == 1 ? '호텔' : '투어'} </td>
									<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
									${cart.tot_price} </td>
									<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
									${cart.start_date} </td>
									<td style="width:400px; height: 50px; text-align:center; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 1px solid #4DABF7;">
									${cart.client} </td>
								<tr>
							
								</c:forEach>						
							</c:otherwise>
						</c:choose>
						
						</table>
						
					</section>
				</div>
			</div>

</div>
</div>
<%@ include file="../layout/footer.jsp" %>