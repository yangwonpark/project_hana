<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div style="width: 1200px; margin: 100px auto; text-align: center;">
	<div style="width: 1200px; border-radius: 5px;" >
		<h1 style="font-family: fantasy; font-size: 30pt">호텔 등록 페이지</h1>
	</div>	
	<form method="POST" enctype="multipart/form-data">
		<input type="hidden" name="entrepreneur_idx" value="${login.idx }">
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">숙박 종류</div>
			<div style="width: 700px; text-align: left">
				<label><input type="radio" name="hotel_kind_idx" value="1" required>호텔</label>
				<label><input type="radio" name="hotel_kind_idx" value="2" required>리조트</label>
				<label><input type="radio" name="hotel_kind_idx" value="3" required>펜션</label><br>
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">성급</div>
			<div style="width: 700px; text-align: left;">
				<label><input type="radio" name="grade" value="성급없음" required>성급없음</label>
				<label><input type="radio" name="grade" value="1성급" required>1성급</label>
				<label><input type="radio" name="grade" value="2성급" required>2성급</label>
				<label><input type="radio" name="grade" value="3성급" required>3성급</label>
				<label><input type="radio" name="grade" value="4성급" required>4성급</label>
				<label><input type="radio" name="grade" value="5성급" required>5성급</label><br>
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">지역선택</div>
			<div style="width: 700px; text-align: left;">
				<c:forEach var="metro" items="${metroList}">
					<label><input type="radio" name="metro_idx" value="${metro.idx }">${metro.name }</label>
				</c:forEach>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto">
			<div style="width: 300px;">CHECK IN</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="check_in" placeholder="check_in" autocomplete="off" required><br>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">CHECK OUT</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="check_out" placeholder="check_out" autocomplete="off" required><br>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">층수정보</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="floor" placeholder="층수" autocomplete="off" required>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">객실수정보</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="room_count" placeholder="객실수" autocomplete="off" required>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">전화번호</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="pnum" placeholder="전화번호" autocomplete="off" required>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">팩스번호</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="fax" placeholder="팩스번호" autocomplete="off" required>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">호텔이미지폴더</div>
			<div style="width: 700px; text-align: left;">
				<input type="file" name="folder" webkitdirectory required>
			</div>
		</div>
		<div style="width: 1000px; display: flex; margin: auto;">
			<div style="width: 300px;">호텔 공지사항</div>
			<div style="width: 700px; text-align: left;">
				<textarea cols="80" rows="15" name="notice" autocomplete="off" required></textarea>
			</div>
		</div>
		<div style="width: 1000px; display: flex; margin: auto;">
			<div style="width: 300px;">객실 설명</div>
			<div style="width: 700px; text-align: left;">
				<textarea cols="80" rows="15" name="room" autocomplete="off" required></textarea>
			</div>
		</div>
		<div style="width: 1000px; display: flex; margin: auto;">
			<div style="width: 300px;">편의 시설 설명</div>
			<div style="width: 700px; text-align: left;">
				<textarea cols="80" rows="15"  name="con_facility" autocomplete="off" required></textarea>
			</div>
		</div>
		<div style="width: 1000px; display: flex; margin: auto;">
			<div style="width: 300px;">다이닝 설명</div>
			<div style="width: 700px; text-align: left;">
				<textarea cols="80" rows="15"  name="dining" autocomplete="off" required></textarea>
			</div>
		</div>
		<div style="width: 1000px; display: flex; margin: auto;">
			<div style="width: 300px; height: 100px;">숙소 부대 시설</div>
			<div style="width: 700px; text-align: left;">
				<c:forEach var="add_category" items="${addCategoryList }">
					<label><input type="checkbox" name="add_facility" value="${add_category.name }">${add_category.name }</label>
				</c:forEach>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">취소 가능일 기본값</div>
			<div style="width: 700px; text-align: left;">
				<input type="text" name="default_cancel" placeholder="취소 가능일 기본값" autocomplete="off" required>
			</div>
		</div>
		<input type="submit" value="등록하기">
	</form>
</div>

<script>
	const input = document.querySelector('input[webkitdirectory]');
	
	const changeHandler = function(event) {
		if(input.files.length != 0) {
			const folderName = input.files[0].webkitRelativePath.split('/')[0];
	      
	      	const hidden = document.createElement('input');
	      	hidden.type = 'hidden';
	      	hidden.name = 'main_img';
	      	hidden.value = folderName;

	      	const form = document.querySelector('form[enctype="multipart/form-data"]');
	      	form.appendChild(hidden);
	   	}
	}
	input.onchange = changeHandler;
</script>



<%@ include file="../layout/footer.jsp" %>
