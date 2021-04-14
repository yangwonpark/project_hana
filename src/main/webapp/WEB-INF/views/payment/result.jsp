<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div style="width: 1000px; height: 500px; background-color: #f2f2f2; margin: 100px auto;">
	<p style="font-family: Sans-Serif; font-size: 20pt; margin: auto; color: gray;">
		
	</p>
	<hr>
	<p style="font-family: Sans-Serif; font-size: 20pt; margin: auto; color: gray;">
		입금 계좌 : ${payment.account }
	</p>
	<p style="font-family: Sans-Serif; font-size: 20pt; margin: auto; color: gray;">
		<c:if test="${pament.kind == 1 }">
			<c:set var="accountWay">무통장입금</c:set>
		</c:if>
		<c:if test="${pament.kind == 2 }">
			<c:set var="accountWay">계좌이체</c:set>
		</c:if>
		${accountWay } 계좌 : ${payment.account }
	</p>
</div>
	
<%@ include file="../layout/footer.jsp" %>