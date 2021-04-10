<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div style="width: 1200px; height: 800px; margin: auto; border: 1px solid red;">
	<div style="width: 100%; border-bottom: 2px solid black;">
		<h2 style="font-family: Sans-Serif; padding-top: 40px;">
			예약하기
		</h2>
	</div>
	<div style="display: flex; justify-content: space-between; padding-top: 20px;">
		<div>
			<h3 style="font-family: Sans-Serif;">
				${entrepreneur.shop_name }
			</h3>
			<table cellpadding="0" cellspacing="0" style="width: 800px; border: 1px solid black;">
				<tr>
					<td style="width: 200px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">도시</td>
					<td>
				</tr>
				<tr>
					<td style="width: 200px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">체크인/체크아웃</td>
				</tr>
				<tr>
					<td style="width: 200px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">객실 정보</td>
				</tr>
			</table>
		</div>
		<div style="width: 400px;">
			<h3 style="font-family: Sans-Serif;">
				결제 정보
			</h3>
		</div>
	</div>
</div>

<script>
	if("${login}" == ""){
		alert('로그인이 필요한 페이지입니다.');
		location.href="${cpath}/login/login_form";
	}
</script>

<%@ include file="../layout/footer.jsp" %>