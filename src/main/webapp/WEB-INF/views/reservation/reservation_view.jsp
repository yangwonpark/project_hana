<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
.contents {
    min-height: calc(100vh - 422px);
}
th {
    min-width: 120px;
    padding: 22px 80px 10px;
    font-weight: 700;
    text-align: left;
    background: #f7f7f7;
    color: #333;
    vertical-align: top;
    line-height: 1.6;
}
.product-list {
    padding-top: 40px;
    border-top: 1px solid #999;
}
.product-detail {
    padding: 30px 40px;
    background-color: #f7f7f7;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
    border-bottom-left-radius: 10px;
}
.terms-agree {
	margin: 80px 0 23px;
	background-color: #eaeaea;
}
.amount-pay {
    margin: 100px 0 60px;
    position: relative;
    width: 400px;
    padding: 0 320px;
}
.amount-contents {
	display: flex;
    width: 1280px;
    margin: 0 auto;
    padding: 0 40px;
}
.left_amount {
	padding-left: 0;
	width: 400px;
}
.middle_amount {
    position: relative;
    width: 400px;
    border-right: 1px solid #e5e5e5;
}
.right_amount {
	border-right: 0;
	width: 400px;
}
.btn-align-center {
    text-align: center;
}
.el-button.is-round {
	min-width: 140px;
    height: 50px;
    line-height: 50px;
    padding: 0 30px;
    font-size: 15px;
    font-weight: 700;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    border-bottom-right-radius: 30px;
    border-bottom-left-radius: 30px;
}
</style>
<div class="contents">
	<h1 style="margin-bottom: 90px; font-size: 50px; font-weight: 900; text-align: center;">ORDER</h1>
	<div style="margin: 0 auto; width: 1280px; padding: 0 40px;">
		<div>
			<h2>기본주문정보</h2>			
		</div>
		<table>
			<tbody>
			<tr>
				<!-- <th>이름 *</th><td><input type="text" autocomplete="off" name="name" placeholder="이름" value="${login.name }"></td> -->
				<th>이름 *</th><td><input type="text" autocomplete="off" name="name" placeholder="이름" value="문동욱">
			</tr>
			<tr>
				<!-- <th>전화번호 *</th><td><input type="text" autocomplete="off" name="pnum" placeholder="전화번호" value="${login.pnum }"></td>  -->
				<th>전화번호 *</th><td><input type="text" autocomplete="off" name="pnum" placeholder="전화번호" value="010-4596-4869"></td>
			</tr>
			<tr>
				<!--<th>마일리지 번호 *</th><td><input type="text" autocomplete="off" name="mnum" placeholder="마일리지 번호" value="${login.mnum }"></td> -->
				<th>마일리지 번호 *</th><td><input type="text" autocomplete="off" name="mnum" placeholder="마일리지 번호" value="10007"></td>
			</tr>
			</tbody>
		</table>
		<div style="justify-content: space-between; margin: 80px 0 23px;">
			<h2>상품 정보</h2>
		</div>
		<div class="product-list">
			<div class="product-detail">
				<!--  --><div style="padding-bottom: 15px">상품타입 - ${tour_option.name }</div>
				<div>상품타입 수량 - ${reservation.client }</div>
				<hr>
				<h2>예약자 정보</h2>
				<hr>
					성명: <input type="text" autocomplete="off" name="name"  value="문동욱" placeholder="이름">
				<hr>
					긴급연락처 전화번호: <input type="text" autocomplete="off" value="010-1234-4567" name="pnum" placeholder="전화번호">
				<hr>
			</div>
		</div>
		<div>
			<h2>결제방법 선택</h2>
		</div>
		<div class="select_payment">
			<div>
				<section>
				<li id="payBtn">신용카드</li>
					<article id="payArticle" class="hidden">
						<label><input type="radio" name="bank_card">신한은행</label>
						<label><input type="radio" name="bank_card">삼성은행</label>
						<label><input type="radio" name="bank_card">현대은행</label>
						<label><input type="radio" name="bank_card">국민은행</label>
						<label><input type="radio" name="bank_card">부산은행</label>
						<div>
							<p>계좌번호<input type="text"  value="1001-02394-04995" name="account"></p>
							<p>카드번호<input type="text"  value="9485-0485-9475" name="card_serial"></p>
							<p>승인번호<input type="text" value="accept" name="approv_serial"></p>
						</div>
						현금영수증/세금계산서 가능 유무
						<label><input type="radio" name="tax_able">사용함</label>
						<label><input type="radio" name="tax_able">안 함</label>
						<br>쿠폰 사용 유무
						<label><input type="radio" name="coupon_yn">사용함</label>
						<label><input type="radio" name="coupon_yn">안 함</label>
						<br>
						<p>현금영수증/세금계산서 번호<input type="text" name="tax_serial"></p>
					</article>
				</section>
			</div>
		</div>
		<div class="terms-agree">
			<div class="inner">
				<div class="box full">
					<div class="full">
						<span><input type="checkbox"></span>
						<span>개인 정보 수집 및 동의 (필수)</span>
					</div>
					<br>
					<div class="detail-wrap">
						<div class="detail">
							<strong>동의를 거부할 권리 및 동의를 거부할 경우의 불이익</strong>
							<p>개인정보주체는 개인정보 수집 및 이용 동의를 거부할 권리가 있습니다. 
							동의를 거부할 경우 여행상품 예약 서비스 이용이 불가함을 알려드립니다.</p>
							<table class="table-row repeat">
								<thead>
									<tr>
										<th>개인정보 수집 및 이용 항목</th>
										<th>개인정보 수집 및 이용 목적</th>
										<th>개인정보 수집 및 이용 기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											예약자: 이름, 이메일, 휴대전화번호<br>
											여행자: 성명, 이메일주소
										</td>									
										<td>
											여행상품 예약 및 상담
										</td>									
										<td>
											서비스 제공 및 관계법령에 따른 보존 기간<br>
											미결제 취소 정보: 예약 취소일로부터 3개월
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="left_box">
					<span><input type="checkbox"></span>
					<span>취소 및 환불정책 (필수)</span>
				</div>
				<div class="left_box_detail-wrap">
					<div class="detail">
						<h1>취소 및 환불 정책</h1>
						<h2>제22조 (반품/환불/취소)</h2>
						<ol>
							<li>
								'전자상거래 등에서의 소비자보호에 관한 법률' 제17조에 따라 구매자는 상품을 배송받은 날로부터 7일 이내에 반품을 요청할 수 있으며, 
								반품에 관한 일반적인 사항은 '전자상거래 등에서의 소비자보호에 관한 법률' 등 관련 법령이 판매자가 제시한 조건보다 우선합니다. 
								단, 다음 각 호의 경우에는 구매자가 반품을 요청할 수 없습니다.
								<ol>
									<li>구매자의 귀책사유로 말미암아 상품이 훼손된 경우</li>
									<li>구매자의 사용 또는 일부 소비로 말미암아 상품의 가치가 현저히 감소한 경우</li>
									<li>시간이 지나 재판매가 어려울 정도로 상품의 가치가 현저히 감소한 경우</li>
									<li>복제가 가능한 상품의 포장을 훼손한 경우</li>
									<li>기타 구매자가 환불을 요청할 수 없는 합리적인 사유가 있는 경우</li>
								</ol>
							</li>
							<li>회사는 구매자로부터 반품의 의사표시를 접수하면, 즉시 그러한 사실을 판매자에게 통보합니다.</li>
							<li>반품에 필요한 왕복 배송비와 기타 필요한 비용은 귀책사유가 있는 쪽에서 부담합니다.</li>
							<li>반품을 신청할 때 반품송장번호를 기재하지 않으면 반품처리와 환불이 지연될 수 있습니다.</li>
							<li>배송상의 문제로 구매자가 손해를 보았을 때 그에 대한 책임은 해당 배송업체를 지정한 판매자에게 있습니다.</li>
							<li>회사가 구매자의 구매대금 결제 확인에 대해 통지한 후 판매회원이 상당 기간 구매자의 주문 정보를 확인하지 않거나 배송 절차를 이행하지 않아 구매자가 거래 취소를 요구하면 회사는 해당 거래를 취소할 수 있으며, 거래가 취소되면 보관 중인 상품 구매대금은 구매자에게 환불됩니다. 아울러, 회사는 개별적인 정책으로 구매자의 요구 없이도 자동 환불처리 등의 조치를 할 수 있으며 그럴 경우 미리 해당 내용을 구매자에게 공지합니다.</li>
							<li>회사는 판매자가 구매자의 반품에 대한 사실확인 진행절차에 적극적으로 임하지 않거나 지연하면 구매자에게서 반품의 원인을 파악한 후 해당 거래를 취소하여 구매자에게 보관 중인 결제대금을 환불할 수 있습니다.</li>
							<li>회사는 구매자의 반품요청이 정당하지 않다고 판단하면 구매자의 의사표시를 취소하여 보관 중인 결제대금을 판매자에게 지급할 수 있습니다. 또한, 구매자의 반품이 접수된 날로부터 14일이 지날 때까지 이미 수령한 상품을 판매자에게 반환하지 않거나 전화, 이메일(E-mail) 등으로 연락되지 않으면 반품의 의사를 철회한 것으로 간주하여 보관 중인 결제대금을 판매자에게 지급할 수 있습니다.</li>
							<li>확인된 거래가 취소되어 결제대금을 환불할 경우는 회사는 거래가 취소된 날로부터 2영업일 이내에 구매자에게 환불에 필요한 조치를 합니다. 신용카드로 결제했을 때는 환불을 요청한 즉시 결제 승인이 취소됩니다.</li>
							<li>카드결제로 구매한 건의 환불은 카드결제 취소를 통해서만 가능하며, 어떠한 경우에도 현금잔고로 환불되지 않습니다.</li>
							<li>배송요청 중 상태에서는 즉시 취소처리가 완료되는 것이 원칙이나 이미 상품이 발송되었다면 발송된 상품의 왕복 배송비는 구매자가 부담해야 합니다. 또한 취소수수료 부과상품의 경우 구매상품의 취소정책에 따라 구매자가 취소수수료를 추가 부담하여야 합니다.</li>
							<li>발권요청 중 상태에서는 즉시 취소처리가 완료되는것이 원칙이나 이미 구매한 상품이 발권처리되었다면 발권취소수수료를 구매자가 부담하여야 합니다. 또한 취소수수료 부과상품의 경우 구매상품의 취소정책에 따라 구매자가 취소수수료를 추가 부담하여야 합니다.</li>
						</ol>
					</div>
				</div>
				<div class="right_box">
					<span><input type="checkbox"></span>
					<span>개인정보 제 3자 전공 (필수)</span>
				</div>
				<div class="right_box_detail-wrap">
					<div class="detail">
						<p>고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송(예약), 고객상담이 제한됩니다.</p>
						<table>
							<tbody>
								<tr>
									<th>제공 받는자</th>
									<td>야놀자</td>
								</tr>
								<tr>
									<th>목적</th>
									<td>주문 상품의 배송(예약), 고객상담 및 불만처리</td>
								</tr>
								<tr>
									<th>항목</th>
									<td>예약자 : 이름 , 이메일, 휴대전화번호<br>
										여행자 : 성명, 긴급연락처 전화번호, 이메일주소</td>
								</tr>
								<tr>
									<th>보유기간</th>
									<td>구매확정 후 3개월까지</td>
								</tr>
							</tbody>
						</table>
					</div>				
				</div>
			</div>
		</div>
		<div class="payment-agree">
			<span><input type="checkbox"></span>
			<span>위의 내용을 모두 확인하였으며 결제에 동의합니다.</span>
		</div>
	</div>
	<div class="amount-pay">
		<div class="amount-contents">
			<div class="left_amount">
				<strong>주문금액</strong>
				<p>${tour_price.price } 원 x ${reservation.client } = ${reservation.tot_price }</p>
				<div>
					<p>상품금액 합계 ${reservation.tot_price } 원</p>
					<p>배송비 합계 0원</p>
				</div>
			</div>
			<div class="middle_amount">
				<strong>할인금액</strong>
				<p>${tour_price.dc_price } 원</p>
				<div>
					<p>배송비 할인 ${tour_price.dc_price } 원</p>
					<p>쿠폰 0원</p>
				</div>
			</div>
			<div class="right_amount">
				<strong>결제금액</strong>
				<p>${reservation.tot_price } 원</p>
				<br>
				<p>하나투어 상품권 및 마일리지 적립, 결제불가 상품 입니다.</p>
			</div>	
		</div>
	</div>
	<div class="btn-align-center">


		<form method="POST" action="${cpath}/tour_payment">
			<input type="hidden" name="reseration_idx" value="4">
			<input type="hidden" name="status" value="1">
			<input type="hidden" name="kind" value="1">
			<input type="hidden" name="account" value="1001-30495-10293">
			<input type="hidden" name="approv_serial" value="c000123">
			<input type="hidden" name="tax_able" value="1">
			<input type="hidden" name="coupon_yn" value="1">
			<input type="hidden" name="tax_serial" value="1">

					
			<input type="submit" id="payment" class="el-button el-button--primary is-round" value="결제하기">
		<!--		<span class="el-button.is-round">결제하기</span> -->
		</form>

	</div>
</div>

<%@ include file="../layout/footer.jsp" %>