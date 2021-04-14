<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div style="width: 1200px; height: 800px; margin: auto;">
	<div style="width: 100%; border-bottom: 2px solid black;">
		<h2 style="font-family: Sans-Serif; padding-top: 40px;">
			예약하기
		</h2>
	</div>
	<div style="display: flex; justify-content: space-between; padding-top: 20px;">
		<div style="width: 900px;">
			<h3 style="font-family: Sans-Serif;">
				${entrepreneur.shop_name }
			</h3>
			<table>
				<tr>
					<td style="width: 200px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">도시</td>
					<td style="width: 200px; height: 50px; padding-left: 10px;">
						한국(${entrepreneur.sales_loc.split(" ")[0] })
					</td>
				</tr>
				<tr>
					<td style="width: 200px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">체크인/체크아웃</td>
					<td style="width: 200px; height: 50px; padding-left: 10px;">
						${searchInfo.from } / ${searchInfo.to }
					</td>
				</tr>
				<tr>
					<td style="width: 200px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">객실 정보</td>
					<td style="width: 200px; height: 50px; padding-left: 10px;">
						${room.name }
					</td>
				</tr>
			</table>
		</div>
		<div style="width: 300px;">
			<h3 style="font-family: Sans-Serif;">
				결제 정보
			</h3>
			<div style="padding: 0px 10px; width: 300px; height: 200px; background-color: #f2f2f2;
						border-top: 1px solid lightgray; border-bottom: 1px solid lightgray;">
				<div style="width: 100%; height: 150px; border-bottom: 1px solid lightgray;">
					<div style="width:100%; display: flex; justify-content: space-between;">
						<h5 style="font-family: Sans-Serif;">최종결제금액</h5>
						<c:if test="${searchInfo.people != 0 }">
							<h5 style="font-family: Sans-Serif;">인원수 : ${searchInfo.people }</h5>
						</c:if>
					</div>
					<div>
						<h2 style="text-align: right; color: #5caceb;">
							<fmt:formatNumber value="${price}" pattern="#,###" />원
						</h2>
					</div>
				</div>
				<div style="width: 100%; height: 50px;">
					<p>총 결제 금액 : <fmt:formatNumber value="${price}" pattern="#,###" />원</p>
				</div>
			</div>
		</div>
	</div>
	<form method="POST" action="${cpath }/payment/reservation">
		<div>
			<div style="margin-top: 80px;">
				<h3 style="font-family: Sans-Serif;">
					투숙자 정보
				</h3>
				<table>
					<tr>
						<td style="width: 150px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">성명(한글)</td>
						<td style="width: 200px; height: 50px; padding-left: 10px;">
							<input style="height: 40px; width: 180;"
									type="text" name="name" value="${login.name }">
						</td>
					</tr>
					<tr>
						<td style="width: 150px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">생년월일</td>
						<td style="width: 200px; height: 50px; padding-left: 10px;">
							<input style="height: 40px; width: 180;"
									type="text" name="birth_date" value="${login.birth_date }">
						</td>
						<td style="width: 150px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">성별</td>
						<td style="width: 200px; height: 50px; padding-left: 10px;">
							<label style="height: 40px; line-height: 40px;">
								<input style="width: 180;"
									type="radio" name="gender" value="남성" required>남성
							</label>
							<label style="height: 40px; line-height: 40px;">
								<input style="width: 180;"
									type="radio" name="gender" value="여성">여성
							</label>
						</td>
					</tr>
					<tr>
						<td style="width: 200px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">휴대폰 번호</td>
						<td style="width: 200px; height: 50px; padding-left: 10px;">
							<input style="height: 40px; width: 180;"
									type="text" name="pnum" value="${login.pnum }">
						</td>
						<td style="width: 200px; height: 50px; background-color: #f2f2f2; padding-left: 10px;">이메일</td>
						<td style="width: 200px; height: 50px; padding-left: 10px;">
							<input style="height: 40px; width: 180;"
									type="text" name="" value="${login.userid }">
						</td>
					</tr>
				</table>
			</div>
		</div>
	<div align="center">
			<input type="hidden" name="major_category_idx" 	value="1"> 
			<input type="hidden" name="member_idx" 			value="${login.idx	}"> 
			<input type="hidden" name="info_idx" 			value="${room.idx}"> 
			<input type="hidden" name="start_date" 			value="${searchInfo.from}"> 
			<input type="hidden" name="end_date" 			value="${searchInfo.to}"> 
			<input type="hidden" name="client" 				value="${searchInfo.people}"> 
			<input type="hidden" name="tot_price" 			value="${price}"> 
			<input type="hidden" name="status" 				value="0"> 
			<input type="submit" value="다음으로" 
					style="color: #fff !important;
					border: none;
				    background-color: #5caceb;
				    width: 150px;
				    height: 50px;
				    font-size: 13pt;
				    border-radius: 5px;
				    margin-top: 35px;">
	</div>
	</form>
</div>






<%@ include file="../layout/footer.jsp" %>