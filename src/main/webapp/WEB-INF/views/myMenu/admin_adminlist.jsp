<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
    <div class="content" style="float: left; width: 500px">
      <c:choose>
        	<c:when test="${login.userkind == '4' }">
			      <h1>관리자 목록 (관리자용)</h1>
			        <form method="POST">
			        	
				        <table style="width: 700px; border-bottom: 3px solid #4DABF7; border-top: 3px solid #4DABF7;  border-spacing: 10px;">
				            
				            <tr>
				                <th>관리자 ID</th>
				                <th>이름</th>
				                <th>부서</th>
				            </tr>
				            
				            <c:forEach var="map" items="${list}" varStatus="i">
							<tr><td colspan="3"></td></tr>
							<td>${map['USERID'] } </td>
							<td>${map['NAME'] } </td>
							<td>${map['TEAM_NAME'] }</td>						
							</c:forEach>				     
	     
				       </table>
			       
			       </form>  
			 </c:when>
		</c:choose>
    </div>
 </div>
</div>



<%@ include file="../layout/footer.jsp" %>