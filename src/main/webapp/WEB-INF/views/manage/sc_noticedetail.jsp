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
        #shtab2:checked ~ #content2,
        #shtab3:checked ~ #content3, 
        #shtab4:checked ~ #content4
         {
            display: block;
			}
    
			
    </style>
    
    <div class="content" style="float: left; width: 700px">
    	
		      <div style="min-width: 320px; max-width: 600px;padding: 10px;border-radius: 7px;background: #ffffff;text-align:left">
					<input id="shtab1" type="radio" name="tabs" checked> 
					<label style="text-align:center;  width:600px; font-size:20px;" for="shtab1">공지사항</label>
	
					<section id="content1" style="margin-bottom:20px;">
							작성날짜 : <p><input value="${nindexdto.ndate }" style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" readonly="readonly" type="text" name="index"></p>
							
							제목 : <p><input value="${nindexdto.title }" style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; width:600px;" readonly="readonly" type="text" name="title"></p>
							내용 : <p>
							<textarea readonly="readonly" name="content" style="font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; border-bottom: 3px solid #4DABF7; resize: none; width:600px; height:300px;">${nindexdto.content }</textarea></p>
							
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