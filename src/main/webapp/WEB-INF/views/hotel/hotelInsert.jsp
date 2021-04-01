<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div style="width: 1200px; margin: 100px auto; text-align: center;">
	<div style="width: 1200px; border-radius: 5px;" >
		<h1 style="font-family: fantasy; font-size: 30pt">호텔 등록 페이지</h1>
	</div>	
	<form method="POST">
		<input type="hidden" name="entrepreneur_idx" value="${login.idx }"><br>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">숙박 종류</div>
			<div style="width: 700px;">
				<label><input type="radio" name="hotel_kind_idx" value="1" required>호텔</label>
				<label><input type="radio" name="hotel_kind_idx" value="2" required>리조트</label>
				<label><input type="radio" name="hotel_kind_idx" value="3" required>펜션</label><br>
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">성급</div>
			<div style="width: 700px;">
				<label><input type="radio" name="grade" value="1성급" required>1성급</label>
				<label><input type="radio" name="grade" value="2성급" required>2성급</label>
				<label><input type="radio" name="grade" value="3성급" required>3성급</label>
				<label><input type="radio" name="grade" value="4성급" required>4성급</label>
				<label><input type="radio" name="grade" value="5성급" required>5성급</label><br>
			</div>
		</div>
		<div style="width: 1000px; height:50px; display: flex; margin: auto;">
			<div style="width: 300px;">지역선택</div>
			<div style="width: 700px;">
				<c:forEach var="metro" items="${metroList}">
					<label><input type="radio" name="metro_idx" value="${metro.idx }">${metro.name }</label>
				</c:forEach>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto">
			<div style="width: 300px;">CHECK IN</div>
			<div style="width: 700px;">
				<input type="text" name="check_in" placeholder="check_in" autocomplete="off" required><br>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">CHECK OUT</div>
			<div style="width: 700px;">
				<input type="text" name="check_out" placeholder="check_out" autocomplete="off" required><br>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">층수정보</div>
			<div style="width: 700px;">
				<input type="text" name="floor" placeholder="층수" autocomplete="off" required>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">객실수정보</div>
			<div style="width: 700px;">
				<input type="text" name="room_count" placeholder="객실수" autocomplete="off" required>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">전화번호</div>
			<div style="width: 700px;">
				<input type="text" name="pnum" placeholder="전화번호" autocomplete="off" required>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">팩스번호</div>
			<div style="width: 700px;">
				<input type="text" name="fax" placeholder="팩스번호" autocomplete="off" required><br>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">대표이미지폴더</div>
			<div style="width: 700px;">
				<input id="hotel_directory_upload" type="file" webkitdirectory
					name="main_img" placeholder="대표이미지폴더" autocomplete="off" required>
			</div>
			<div class="file_list">
			    <p></p>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">호텔 공지사항</div>
			<div style="width: 700px;">
				<textarea name="notice" autocomplete="off" required>
				</textarea>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">객실 설명</div>
			<div style="width: 700px;">
				<textarea name="room" autocomplete="off" required>
				</textarea>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">편의 시설 설명</div>
			<div style="width: 700px;">
				<textarea name="con_facility" autocomplete="off" required>
				</textarea>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">다이닝 설명</div>
			<div style="width: 700px;">
				<textarea name="dining" autocomplete="off" required>
				</textarea>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">숙소 부대 시설</div>
			<div style="width: 700px;">
				<textarea name="add_facility" placeholder="숙소 부대 시설" autocomplete="off" required>
				</textarea>
			</div>
		</div>
		<div style="width: 1000px; height: 50px; display: flex; margin: auto;">
			<div style="width: 300px;">취소 가능일 기본값</div>
			<div style="width: 700px;">
				<input placeholder="취소 가능일 기본값" autocomplete="off" required>
			</div>
		</div>
		<input type="submit" value="등록하기">
	</form>
</div>
<script>

const input = document.querySelector('input');
const preview = document.querySelector('.file_list');

input.addEventListener('change', showTextFile);

function showTextFile() {
    const selectedFiles = input.files;
    const list = document.createElement('ul');
    preview.appendChild(list);

    for(const file of selectedFiles) {
        const listItem = document.createElement('li');
        const summary = document.createElement('div');

        summary.textContent = file.webkitRelativePath;

        listItem.appendChild(summary);
        list.appendChild(listItem);
    }
}
</script> 

<%@ include file="../layout/footer.jsp" %>
