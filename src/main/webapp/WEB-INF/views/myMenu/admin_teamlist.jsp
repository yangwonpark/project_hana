<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
    <div class="content" style="float: left; width: 500px">
		<h1>부서 목록 (관리자용)</h1>
		<hr width="500px">
        <form method="POST">
        	
        <table style="border-spacing: 10px;">
            <tr>
                <td>*</td>
                <td>부서명</td>
                <td><input type="text" name="team_name" required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
    		<tr>
                <td>*</td>
                <td>부서코드</td>
                <td><input type="text" name="team_pnum" required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
             <tr >            
            <tr>
           		<td colspan="3">
           			 <input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="부서등록">
          		</td>
            </tr>         
       </table>
       
       </form>  
	</div>
 </div>
</div>



<%@ include file="../layout/footer.jsp" %>