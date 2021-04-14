<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../layout/header.jsp" %>

<div style="padding-top: 70px; padding-left: 950px;">
	<img src="${cpath }/resources/img/entrepreneur1.jpg">
</div>

<section style="padding-left: 450px; padding-right: 450px">
	판매자 정보 
	<table border="1" cellspacing="0" cellpadding="10">
		<c:forEach var="entrepreneur" begin="58" end="58" items="${entrepreneurAll }">
		<tr>
			<th>상호명</th>
			<td>${entrepreneur.shop_name }</td>
		</tr>
		<tr>
			<th>브랜드명</th>
			<td>${entrepreneur.brand_name }</td>
		</tr>
		<tr>
			<th>브랜드 소개</th>
			<td>${entrepreneur.brand_info }</td>
		</tr>
		<tr>
			<th>대표자명</th>
			<td>${entrepreneur.represent }</td>
		</tr>
		<tr>
			<th>사업자구분</th>
			<td>${entrepreneur.classify }</td>
		</tr>
		<tr>
			<th>사업자등록번호</th>
			<td>${entrepreneur.license }</td>
		</tr>
		<tr>
			<th>통신판매신고업<br>번호</th>
			<td>${entrepreneur.report_num }</td>
		</tr>
		<tr>
			<th>영업소재지</th>
			<td>${entrepreneur.sales_loc }</td>
		</tr>
		<tr>
			<th>세금계산서/<br>현금영수증<br>발행가능여부</th>
			<td>${entrepreneur.tax_invoice }</td>
		</tr>
		<tr>
			<th>사업자 인증시기</th>
			<td>${entrepreneur.confirm_time }</td>
		</tr>
		<tr>
			<th>대표 전화번호</th>
			<td>${entrepreneur.pnum }</td>
		</tr>
		<tr>
			<th>대표 이메일</th>
			<td>${entrepreneur.email }</td>
		</tr>
		</c:forEach>
	</table>
</section>

<br><br><br><br><br>

<%@ include file="../layout/footer.jsp" %>