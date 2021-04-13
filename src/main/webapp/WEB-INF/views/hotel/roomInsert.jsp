<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div style="width: 1200px; margin: 100px auto; text-align: center;">
	<div style="width: 1200px; border-radius: 5px;" >
		<h1 style="font-family: fantasy; font-size: 30pt">객실 등록 페이지</h1>
	</div>	
	<form method="POST" enctype="multipart/form-data">
		<input type="hidden" name="hotel_info_idx" value="${hotel.idx }">
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">객실 종류</div>
			<div style="width: 700px; text-align: left">
				<c:forEach var="roomKind" items="${roomKindList }">
					<label style="width: 150px;"><input type="radio" name="room_kind_idx" value="${roomKind.idx }" required>${roomKind.kind }</label>
				</c:forEach>
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">객실 이름</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="name" placeholder="ex.디럭스 더블" autocomplete="off" required><br>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto">
			<div style="width: 300px;">침대 종류 및 개수</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="bed" placeholder="침대 종류 및 개수" autocomplete="off"><br>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">평수</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="space" placeholder="평수" autocomplete="off" required><br>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">전망</div>
			<div style="width: 700px; text-align: left;">
				<c:forEach var="viewKind" items="${viewKindList }">
					<label><input type="radio" name="view_kind_idx" value="${viewKind.idx }" required>${viewKind.name }</label>
				</c:forEach>
			</div>
		</div>
		<div style="width: 1000px; display: flex; margin: auto;">
			<div style="width: 300px;">객실 정보</div>
			<div style="width: 700px; text-align: left;">
				<textarea cols="80" rows="15" name="room" autocomplete="off" required>
				</textarea>
			</div>
		</div>

		<div style="width: 1000px; display: flex; margin: auto;">
			<div style="width: 300px;">객실 편의 시설</div>
			<div style="width: 700px; text-align: left;">
				<textarea cols="80" rows="15" name="notice" autocomplete="off" required>
				</textarea>
			</div>
		</div>
		
		<div style="width: 1000px; display: flex; margin: auto;">
			<div style="width: 300px;">알림</div>
			<div style="width: 700px; text-align: left;">
				<textarea cols="80" rows="15"  name="con_facility" autocomplete="off" required>
				</textarea>
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">인원수</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="headcount">
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">쿠폰 여부</div>
			<div style="width: 700px; text-align: left;">
				<label><input type="radio" name="coupon_yn" value="0" required>없음</label>
				<label><input type="radio" name="coupon_yn" value="1">있음</label>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">쿠폰 번호</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="coupon_idx" autocomplete="off">
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">취소가능여부</div>
			<div style="width: 700px; text-align: left;">
				<label><input type="radio" name="retractable" value="0" required>없음</label>
				<label><input type="radio" name="retractable" value="1">있음</label>
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">취소일</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="cancel" autocomplete="off">
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">식사포함여부</div>
			<div style="width: 700px; text-align: left;">
				<label><input type="radio" name="meal_idx" value="1" required>조식포함</label>
				<label><input type="radio" name="meal_idx" value="2">조식미포함</label>
			</div>
		</div>
		
		<input type="hidden" value="${hotel.idx }">
		<input type="submit" value="등록하기">
	</form>
</div>
<%@ include file="../layout/footer.jsp" %>