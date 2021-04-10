<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
    <div class="content" style="float: left; width: 500px">
		 <c:choose>
        	<c:when test="${login.userkind == '4' }">
		      <h1>탈퇴 회원 목록</h1>	        	
		        <table style="width: 700px; border-bottom: 3px solid #4DABF7; border-top: 3px solid #4DABF7; text-align: center; border-spacing: 10px;">
					<tr>
						<th>userid</th>
						<th>이름</th>
						<th>탈퇴 사유</th>
					</tr>        
					
					<c:forEach var="map" items="${list}" varStatus="i">
						<tr><td colspan="3"></tr>
						<tr>
							<td>${map['USERID'] } </td>
							<td>${map['NAME'] } </td>
							<td>${map['REASON_CONTENT'] }</td>
						</tr> 						
					</c:forEach>			
		    	</table>
		     </c:when>
		</c:choose>
	</div>

 </div>
</div>


<%@ include file="../layout/footer.jsp" %>