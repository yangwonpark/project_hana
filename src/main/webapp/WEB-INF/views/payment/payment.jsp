<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>


<div style="width: 1200px; margin: auto;">
	<div style="width: 100%; border-bottom: 2px solid black;">
		<h2 style="font-family: Sans-Serif; padding-top: 40px;">
			결제하기
		</h2>
	</div>
	<div style="display: flex;">
		<div style="width: 900px;">
			<!-- 약관 동의 -->
			<div id="consertDiv" style="margin-top: 30px;">
				<div style="display: flex;  border-bottom: 1px solid lightgray;">
					<p style="font-family: Sans-Serif;; font-size:18pt; padding: 10px 0;width: 450px; margin: 0 auto;">
						약관동의
					</p>
					<label style="width: 450px; height: 50px; line-height: 50px; text-align: right;">
						<input type="checkbox" name="consentAll" id="consentAll">전체동의
					</label>
				</div>
				
				<div id="consertDiv_1" style="display: flex; width: 100%; justify-content: space-between;">
					<p>예약취소 및 환불정책 안내 (필수)</p>
					<div style="width: 200px; text-align: right;">
						<label style="height: 50px; line-height: 50px;"><input type="checkbox" name="consent_1" value="동의">동의</label>
					</div>
				</div>
				<div id="consertDiv1_in" style="width: 900px; height: 250px; overflow: hidden; overflow-y: scroll; background-color: #f2f2f2; font-family: Sans-Serif; display: none;">
						2021년 04월 20일 체크인 예약에 대한 취소약관<br>
						2021년 04월 19일 16시 이전까지<br>
						취소수수료 없음.<br><br>
						
						당일취소 또는 NO-SHOW 시<br>
						취소 수수료 (KRW 79,200) 부과<br><br>
						
						예약처리사항<br>
						본 예약은 취소마감일 이후의 취소나 일정 변경 시 숙박료 전체가 취소차지로 부과되어 전액 환불 되지 않습니다. 호텔에 도착하지 못하시는 경우(NO SHOW)도 숙박료 전체가 취소차지로 부과되며, 예약 확정 이후 이름 변경(스펠링 변경포함), 일정 변경, 룸타입 변경 등의 모든 변경이 불가 합니다.
						Any cancellations or amendments made after cancellation dead line are subject to whole stay penalty no refunds for no shows or early check outs, It is not amendable after confirmation including name spelling and itinerary.<br><br>
						
						환불불가요금 관련규정<br>
						공정거래위원회 해외호텔 "환불불가규정" 관련 약관에 따라, <변경/환불불가> 예약의 규정은 아래와 같이 적용됩니다.<Br>
						변경/환불 요청 시점이 체크인 날짜로부터 120일 이상 잔여 시 100% 무료 변경/환불 가능하며, 체크인 날짜가 120일 미만 잔여 시 예약 건 취소 규정에 따라 수수료가 부과됩니다.
						(2017년 12월 1일부터 시행)
						아래 취소 약관상의 날짜는 모두 한국시간 기준입니다.
				</div>

				<div id="consertDiv_2" style="display: flex; width: 100%; justify-content: space-between;">
					<p>호텔 예약 주의사항 (필수)</p>
					<div style="width: 200px; text-align: right;">
						<label style="height: 50px; line-height: 50px;"><input type="checkbox" name="consent_2" value="동의">동의</label>
					</div>
				</div>
				<div id="consertDiv2_in" style="width: 900px; height: 250px; overflow: hidden; overflow-y: scroll; background-color: #f2f2f2; font-family: Sans-Serif; display: none;">
						■ 베드타입<br>
						 Double/Twin의 경우 2인 숙박이 가능한 객실로 베드타입은 체크인시 호텔 사정에 따라 변경 될수 있습니다.<br><br>
						
						■ 아동기준 [도시 및 호텔마다 규정이 다르므로 그때 그때 확인요망]<br>
						  호텔마다 아동에 대한 규정이 다를 수 있으므로 아동 예약 시는 반드시 생년월일을 제공하여 주십시오.<br>
						  현지에서 예약되지 않은 추가 투숙 인원에 대한 문제 발생시 당사의 책임은 없으며 투숙시 추가 인원에 대한 입실 거부 및 추가 요금이 발생할 수 있습니다.<br>
						  미성년자는 단독 투숙이 불가능하며(미성년자의 기준은 보통 만 19세(미주는 만 21세)이며, 도시 및 호텔마다 규정이 다를 수 있음), 반드시 성인을 동반해야만 투숙이 가능합니다.
						  아동은 성인과 동반만 가능한 조건으로 아동에 대한 침구나 조식이 불포함 되어 있습니다.<br>
						   ※ 아동조식의 경우, 호텔 마다 규정이 상이하니 체크인 시 확인 및 추가 금액 지불하여 이용부탁드립니다.<br><br>
						
						■ 호텔 포인트 적립<br>
 						 여행사(에이전시)를 통한 호텔예약은 호텔 자체 마일리지 또는 리워드 포인트 적립이 불가한 점 이용에 참고 부탁 드립니다.<br><br>
						
						■ 고객요청사항<br>
						반드시 확정은 아니며 호텔 사정에 의해서 확정되지 않을 수 있습니다.<br>
						 금연/흡연룸으로 요청 하셨더라도 호텔 상황에 따라 배정이 불가 할 수 있습니다.<br>
						 금연으로 지정된 호텔에서 흡연하는 경우 해당 호텔의 정책에 따라 벌금이 부과될 수 있습니다. 체크아웃 이후라 하더라도 적발될 시에는 고객의 동의 없이 결제가 이뤄질 수 있습니다.<br><br>
						
						■ 추가비용<br>
						 일부 도시의 호텔에서 Resort Fee/Tourist Tax/City Tax/Accommodation tax/Service Tax/입욕세 등과 같은 비용을 체크인 또는 체크아웃 시 청구 할 수 있습니다. (도시, 호텔등급에 따라 금액은 상이할 수 있으며, 현금지불을 요구 할 수 있습니다.)<br>
						 기간 : 일부 도시 호텔의 경우 크리스마스/연말기간/춘절 기간 등에 의무디너(갈라디너)를 시행하고 있으며, 해당 기간 투숙 시, 의무 디너에 의한 추가비용이 발생 할 수 있습니다.<br><br>
						 
						■ 조식관련<br>
						 라운지 사용이 포함된 룸으로 예약 하신 경우, 반드시 라운지에서 조식을 이용해야 하는 경우가 생길 수 있습니다. 이 경우, 일반 조식당 이용 시 추가 비용이 발생될 수 있습니다.<br>
						 조식은 일반적으로 American Breakfast, Continental Breakfast, English Breakfast로 구분됩니다. 예약하신 룸타입 및 계약 조건에 따라 조식 타입은 상이할 수 있으며, 체크인 시 안내를 받고 이용해주시길 바랍니다.<br>
				</div>
				
				<div id="consertDiv_3" style="display: flex; width: 100%; justify-content: space-between;">
					<p>개인정보 수집 및 이용 (필수)</p>
					<div style="width: 200px; text-align: right;">
						<label style="height: 50px; line-height: 50px;"><input type="checkbox" name="consent_3" value="동의">동의</label>
					</div>
				</div>
				<div id="consertDiv3_in" style="width: 900px; height: 250px; overflow: hidden; overflow-y: scroll; background-color: #f2f2f2; font-family: Sans-Serif; text-align: center; display: none;">
					<table cellpadding="20px" style="width: 880px;">
						<tr>
							<td>개인정보 수집 이용 항목</td>
							<td>개인정보 수집 및 이용 목적</td>
							<td>개인정보 수집 및 이용 기간</td>
						</tr>
						<tr>
							<td style="background-color: white;">
								예약자 : 예약자명,휴대폰번호,이메일<br>
								여행자 : 성명(국문/영문),법정생년월일,성별,<br>
								휴대폰번호,이메일<br>
							</td>
							<td style="background-color: white;">
								호텔상품 예약 및 상담
							</td>
							<td style="background-color: white;" rowspan="3">
								서비스 제공 및 관계법령에<br>
								따른 보존기간
							</td>
						</tr>
						<tr>
							<td style="background-color: white;">성명,신용카드번호,유효기간</td>
							<td style="background-color: white;">대금결제/정산</td>
						</tr>
						<tr>
							<td style="background-color: white;">
								여행자 : 성명,생년월일,성별,이메일,휴대폰<br>
								회원번호,하나투어 마일리지 정보,카드번호
							</td>
							<td style="background-color: white;">마일리지 서비스 제공</td>
						</tr>
						<tr>
							<td style="background-color: white;">성명,연락처,생년월일,이메일</td>
							<td style="background-color: white;">
								내부방침 상 반복된 약성민원 제기로<br>
								인한 이용자 본인 확인 및 서비스 제한
							</td>
							<td style="background-color: white;">5년</td>
						</tr>
					</table>						
				</div>
				
				<div id="consertDiv_4" style="display: flex; width: 100%; justify-content: space-between;">
					<p>개인정보 제3자 제공 동의 (필수)</p>
					<div style="width: 200px; text-align: right;">
						<label style="height: 50px; line-height: 50px;"><input type="checkbox" name="consent_4" value="동의">동의</label>
					</div>
				</div>
				<div id="consertDiv4_in" style="width: 900px; height: 250px; overflow: hidden; overflow-y: scroll; background-color: #f2f2f2; font-family: Sans-Serif; text-align: center; display: none;">
					<table cellpadding="20px" style="width: 880px;">
						<tr>
							<td>서비스 영역</td>
							<td>제공받는 자</td>
							<td>제공하는 항목</td>
							<td>제공받는 자의 이용목적</td>
							<td>보유 및 이용기간</td>
						</tr>
						<tr>
							<td style="background-color: white;">
								숙박
							</td>
							<td style="background-color: white;">
								국내 호텔 및 <br>
								리조트/숙박 업체
							</td>
							<td style="background-color: white;">
								성명(국문/영문),<br>
								연락처
							</td>
							<td style="background-color: white;">
								숙박예약<br>
								진행 / 확인
							</td>
							<td style="background-color: white;">
								서비스 제공 및 <br>
								관계법령에 따른<br>
								보존 기간
							</td>
						</tr>
						<tr>
							<td style="background-color: white;">제휴처</td>
							<td style="background-color: white;">
								하나투어 마일리지적립/<br>
								사용/전환 업체 및<br>
								서비스 제공 업체
							</td>
							<td style="background-color: white;">
								성명,생년월일,성별,<br>
								이메일,휴대폰,회원번호,<br>
								하나투어마일리지 정보,카드번호
							</td>
							<td style="background-color: white;">
								멤버십/마일리지<br>
								서비스 제공을<br>
								위한 회원식별<br>
								마일리지 확인
							</td>
							<td style="background-color: white;">
								서비스 제공 및 <br>
								관계볍령에 따른<br>
								보존 기간
							</td>
						</tr>
					</table>
					<div style="margin-top: 30px; text-align: left; font-family: Sans-Serif;">
						■ 동의 거부권 및 거부 시 불이익 사항<br><br>
						개인정보주체는 개인정보 제3자 제공에 대한 동의를 거부할 권리가 있습니다.<br>
						동의를 거부할 경우 상품서비스 수행에 필수적인 정보제공이 이뤄지지 않으므로,<br>
						예약수행이 불가함을 알려드립니다.
					</div>
				</div>
			</div>
			
			<!-- 결제정보 -->
			<div style="margin-top: 30px;">
				<p style="font-family: Sans-Serif; font-size:18pt; padding: 10px 0; border-bottom: 1px solid lightgray; width: 900px; margin: 0 auto;">
					결제정보
				</p>
				<div style="display: flex; width: 100%">
					<p style="width: 700px;">쿠폰할인</p>
				</div>
				<div style="display: flex; width: 100%">
					<p style="width: 700px;">마일리지</p>
				</div>
				<div style="display: flex; width: 100%">
					<p style="width: 700px;">상품권</p>
				</div>
			</div>
			
			<!-- 결제수단 -->
			<div style="margin-top: 30px;">
				<p style="font-family: Sans-Serif; font-size:18pt; padding: 10px 0; border-bottom: 1px solid lightgray; width: 900px; margin: 0 auto;">
					결제수단
				</p>
				<div class="payment" style="padding: 20px 0;">
					<button id="passbook" style="width: 100px; height: 50px; background-color: #5caceb; color: white; border: none; margin-right: 20px;">무통장입금</button>
					<button id="account" style="width: 100px; height: 50px; background-color: #5caceb; color: white; border: none;">계좌이체</button>
				</div>
			</div>
		</div>
		<div style="width: 270px; margin: 30px;">
			<p style="font-family: Sans-Serif; font-size:18pt; padding: 10px 0; width: 100%; margin: 0 auto;">
				결제상세정보
			</p>
			<div style="background-color: #f2f2f2; padding: 10px 10px;">
				<div style="width: 100%; height: 150px; border-bottom: 1px solid lightgray;">
					<div style="width:100%; display: flex; justify-content: space-between;">
						<h5 style="font-family: Sans-Serif;">최종결제금액</h5>
						<h5 style="font-family: Sans-Serif;">인원수 : ${reservation.client }</h5>
					</div>
					<div>
						<h2 style="text-align: right; color: #5caceb;">
							<fmt:formatNumber value="${reservation.tot_price }" pattern="#,###" />원
						</h2>
					</div>
				</div>
				<div style="width: 100%; height: 50px;">
					<p>총 결제 금액 : <fmt:formatNumber value="${reservation.tot_price }" pattern="#,###" />원</p>
					<div align="right">
						<form class="paymentCheck" method="POST">
							<input type="hidden" name="reservation_idx" value="${reservation.idx }">
							<input type="hidden" name="status" value="2">
 							<input type="hidden" id="kind" name="kind" value="0">
							<input type="hidden" name="account" value="123-4567-8910-11">
							<input type="hidden" name="approv_serial" value="1234">
							<input type="hidden" name="tax_able" value="1">
							<input type="hidden" name="coupon_yn" value="0">
							<input type="hidden" name="tax_serial" value="${login.pnum }">	
							<input type="submit" value="결제하기">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
<script>
		
	$("#consertDiv > div").click(function(event){
		const idx = (event.target.id).split('_').reverse()[0];
		resultDiv = document.getElementById('consertDiv' + idx + '_in');
		if(resultDiv != null) {
			resultDiv.style.display = resultDiv.style.display == 'block' ? "none" : 'block'; 
		}
	});
	
	$(document).click(function(event){
		
		if(event.target.id == 'passbook'){
			let val = 1;
			$('#kind').attr('value', val);
		}
		else if (event.target.id == 'account'){
			let val = 2;
			$('#kind').attr('value', val);
		}
		document.querySelector('.paymentCheck').appendChild(kind);
	});
	
	$('.paymentCheck').submit(function(event){
		event.preventDefault();
		const kind = document.querySelector('.paymentCheck > input[name="kind"]');
		if(kind.value == "0") {
			alert('결제수단을 선택해주세요.');
		}
		else {
			event.target.submit();
		}
	});
	
	
</script>
<%@ include file="../layout/footer.jsp" %>