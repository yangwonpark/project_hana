<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#footer {
	margin: 0 auto;
	padding-top: 10px;
	padding-bottom: 30px;
	
}
#footer > .inr {
	width: 1200px;
    margin: 0 auto 20px;	
}
.service_info_wrap {
	height: 57px;
}
.company_info_wrap {
    height: 227px;
    position: relative;
}
.fl {
	float: left;
}
.service_info_wrap .fl dl.type {
	width: 514px;
}
.service_info_wrap .fl .type dt {
    width: 45px;
}
.service_info_wrap .fl dt {
    width: 210px;
    line-height: 56px;
    font-size: 14px;
    color: #333;
    font-weight: 600;
    float: left;
}
.service_info_wrap .fl dd {
    height: 57px;
    overflow: hidden;
    position: relative;
    padding: 20px 0;
}
.service_info_wrap .fl dd .btn_more {
	position: absolute;
    right: 0;
    top: 21px;
    line-height: 15px !important;
    padding: 0;
    font-size: 13px;
    color: #666;
}
.fr {
	float: right;
}
.service_info_wrap .sns_list {
	margin-top: 15px;
}
.service_info_wrap .sns_list li:first-child {
    padding-left: 0;
}
.service_info_wrap .sns_list li {
    float: left;
    padding-left: 17px;
    vertical-align: top;
}
.company_info_wrap {
	height: 227px;
    position: relative;
}
.company_info_wrap .company_provision {
	margin-top: 30px;
    margin-bottom: 20px;
}
.company_info_wrap .company_provision li:first-child {
	padding-left: 0;
}
.company_info_wrap .company_provision li {
	float: left;
    padding-left: 16px;
    margin-right: 15px;
    position: relative;
    line-height: 13px;
}
.company_info_wrap .fl address, .company_info_wrap .fl p, .company_info_wrap .fl a {
	line-height: 25px;
    font-size: 13px;
}
#footer .footer-license span {
	padding-right: 15px;
    line-height: 13px;
}
strong {
	font-weight: 600;
}
.company_info_wrap p.guide_txt {
	margin-top: 12px;
    font-size: 13px;
    line-height: 20px;
}
.company_info_wrap p.copy {
	margin-top: 12px;
    font-size: 12px;
    line-height: 22px;
    letter-spacing: 0;
}
</style>
<link rel="stylesheet" href="${cpath }/css/style.css">
<hr>
<div id="footer">
	<div class="inr">
		<div class="service_info_wrap">
			<div class="fl">
				<dl class="type">
					<dd>
						<span>공지사항</span>
						<a href="${cpath }/manage/sc_notice" class="btn-more">
							더보기
						</a>
					</dd>
				</dl>
			</div>
			<div class="fr">
				<div class="sns_list">
					<a href="https://www.facebook.com/HanaTour.fb">페이스북 </a> |
					<a href="https://www.instagram.com/hanatour_official">인스타그램 </a> |
					<a href="http://blog.hanatour.com">네이버블로그 </a> |
					<a href="https://pf.kakao.com/_ftrPI">카카오플러스 </a> |
					<a href="https://www.youtube.com/user/HanaTour">유튜브 </a> |
					<a href="https://story.kakao.com/#ch/hanatour">카카오스토리</a>
				</div>
			</div>
		</div>
		<div class="company_info_wrap">
			<div class="fl">
				<div class="company_provision">
					<a href="http://www.hanatourcompany.com/kor/main/main.asp?hanacode=main_bottom_01">회사소개 </a> |
					<a href="https://www.hanatour.com/els/prv/CHPC0PRV0004M200">이용약관 </a> |
					<a href="https://www.hanatour.com/els/prv/CHPC0PRV0002M200">개인정보처리방침 </a> |
					<a href="https://www.hanatour.com/els/prv/CHPC0PRV0003M200">여행약관 </a> |
					<a href="https://www.hanatour.com/els/etc/CHPC0ETC0008M200">해외여행자보험 </a> |
					<a href="https://www.hanatour.com/els/etc/CHPC0ETC0001M200">마케팅제휴 </a> |
					<a href="https://www.hanatour.com/els/etc/CHPC0ETC0004M200">공식인증예약센터 검색</a>
				</div>
				<div>
					<div>
						<address class="footer_license">
							<span><strong>(주)하나투어 | </strong></span>
							<span>대표 : 김진국, 송미선 | </span>
							<span>주소 : (03161) 서울특별시 종로구 인사동 5길 41</span>
						</address>
						<p class="footer_license">
							<span>사업자등록번호 : 102-81-39440 | </span>
							<span><strong><a href="https://www.ftc.go.kr/www/bizCommList.do?key=232">사업자정보확인</a></strong> | </span>
							<span>통신판매업신고번호 : 종로01-1806호 | </span>
							<span>관광사업자 등록번호 : 제1993-000006호</span>
						</p>
						<p class="footer_license">
							<span>개인정보 보호책임자 : 이원경 | </span>
							<span>영업보증보험 : 22억 1천만원 가입 | </span>
							<span>팩스: 02-734-0392 | </span>
							<span>이메일 : 15771233@hanatour.com | </span>
							<span><strong>고객센터 1577-1233</strong></span>
						</p>
						<p class="guide_txt">
							※ 부득이한 사정에 의해 여행일정이 변경되는 경우 사전 동의를 받습니다.
							<br>
							※ 하나투어는 개별 항공권 단독 판매, 단품 및 일부 여행상품에 대하여 통신판매중개자로서 
							통신판매의 당사자가 아니며 해당상품의 거래정보 및 거래등에 대해 책임을 지지 않습니다.
						</p>
						<p class="copy">
							COPYRIGHTⓒ HANATOUR SERVICE INC. ALL RIGHTS RESERVED
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



</body>
</html>