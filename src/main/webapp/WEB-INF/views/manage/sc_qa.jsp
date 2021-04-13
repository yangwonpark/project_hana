<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../manage/sc.jsp" %>
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

         {
            display: block;
			}
    
			
    </style>
    
    <div class="content" style="float: left; width: 700px">        	
		<c:choose>
        	<c:when test="${login.userkind == '4' }">
         
		      <div style="min-width: 320px; max-width: 800px;padding: 10px;border-radius: 7px;background: #ffffff;text-align:left">
	 
					<input id="shtab1" type="radio" name="tabs" checked> 
					<label style="font-size:20px;" for="shtab1">문의하기?????</label>
		 			
		 			
					<section id="content1" style="margin-bottom:20px;">
					
						<form method="POST" action="${cpath}/myMenu/admin_qaCategory/reg">				
							<p><select style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" name="noti" id="noti" required>
									<option>문의 종류</option>
										<c:forEach var="ndto" items="${qacategory}" varStatus="i">
											<option>${qacategory.kind }</option>
										</c:forEach>
							</select></p>
							<p><input style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" required placeholder="제목을 입력하세요" type="text" name="title"></p>
							<p>
							<input type="hidden" value="${login.idx}" name="member_idx"> 
							<textarea required placeholder="문의 내용을 입력하세요" name="content" style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; resize: none; width:600px; height:300px;"></textarea></p>
							<p><input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 600px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="공지사항 등록"></p>
						</form>
						
					</section>
				</div>
			</c:when>
		</c:choose>
	</div>
	
	<script>
		document.getElementById('shtab1').onclick = function () {
		  
		};
	
	
	</script>
	
		<script>
		alert('기능 구현 중입니다. 죄송합니다.');
		location.href = '${cpath}/manage/sc_fqa';
	</script>
	
 </div>
</div>
<%@ include file="../layout/footer.jsp" %>