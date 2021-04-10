<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 이미지 모달 -->
<div class="hotel_one_modal" style="width: 100%; height: 100%; 
			display: none; position: fixed; top: 0; z-index: 15;">
	<!-- 모달 배경 -->
	<div class="modal_overlay" 
				style="background-color: rgba(0,0,0,0.7);
				width: 100%;
				height: 100%;
				z-index: 5;
				position: absolute;
				top: 0;
				left: 0;"></div>
	
	<!-- 모달 메인 -->
	<div style="color: black; z-index: 10; width: 1000px; height: 700px; background-color: white;
				position: relative; margin: 120px auto; display: flex;">
		<div>
			<!-- 왼쪽 버튼 -->
			<div class="left_button"
					style="position: absolute; width: 150px; height: 550px; background-color: #f2f2f2;"></div>
			<!-- 이미지 -->
			<div class="hotel_modal_img">
				<c:forEach var="img" items="${imgList }">
					<img style="position: absolute; left: 150px; width: 700px; height: 550px; "src="${cpath }/resources/hotelimg/${hotel.main_img}/${img}">
				</c:forEach>
			</div>		
			<!-- 오른쪽 버튼 -->
			<div class= "right_button" 
					style="position: absolute; width: 150px; height: 550px; background-color: #f2f2f2; right: 0;"></div>
		</div>
	</div>
</div>

<!-- 지도 모달 -->
<div class="hotel_map_modal" style="width: 100%; height: 100%;
									display: none; position: fixed; top: 0; z-index: 15;">
	<!-- 모달 배경 -->
	<div class="map_modal_overlay" 
				style="background-color: rgba(0,0,0,0.7);
				width: 100%;
				height: 100%;
				z-index: 5;
				position: absolute;
				top: 0;
				left: 0;"></div>
	
	<!-- 모달 메인 -->
	<div style="color: black; z-index: 10; width: 700px; height: 800px; background-color: white;
				position: relative; margin: 100px auto; padding: 30px 30px;">
		<h2 style="font-family: Sans-Serif; font-size: 25pt; text-align: left; margin: 0;">지도보기</h2>
		<hr>
		<!-- 지도 -->
		<div class="map_modal_img" style="width: 100%; height: 350px; margin-top: 30px;"></div>
		<div style="padding-top: 20px">
			<ul style="list-style: none; padding: 0;">
				<li style="font-family: Sans-Serif; font-size: 16pt; font-weight: bold;">숙소</li>
				<li style="font-family: Sans-Serif; font-size: 12pt;">${entrepreneur.shop_name }</li>
				<li style="font-family: Sans-Serif; font-size: 12pt;">${entrepreneur.sales_loc }</li>
			</ul>
			
		</div>
	</div>
</div>
<div align="center">
		<!-- 여행지 / 날짜 / 인원  => 숙소검색 -->
		<form method="POST" class="hotel_search" style="top: 200px;">
			<!-- 지역선택 -->
			<div class="hotel_address">
				<input autocomplete="off" type="text" name="h_address" id="h_address" 
						placeholder="어디로 떠나세요?" required>
				<!-- input영역 클릭시 띄우는 div -->
				<div class="hotel_location">
					<!-- 시 선택  -->
					<ul class="hotel_metro">
						<c:forEach var="metro" items="${metroList}">
							<li style="text-align: center;">
								<input type="button" id="hotel_metro_${metro.idx }" value="${metro.name }">
							</li>
						</c:forEach>
					</ul>
					<!-- 구 선택  -->
					<div class="hotel_local">
						<c:forEach var="idx" begin="1" end="${metroListSize }">
							<div class="hotel_local_${idx }" style="display: none;">
								<c:forEach var="local" items="${localList }">
									<c:if test="${local.metro_idx == idx}">
											<input type="button" value="${local.name }">
									</c:if>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- 지역선택 end -->
			
			<!-- 기간 선택 -->
			<div style="z-index: 99;">
				<input autocomplete="off" type="text" name="from" id="from" style="margin-left: 10px"> ~ 
				<input autocomplete="off" type="text" name="to" id="to" style="margin-left: 10px">
			</div>
			<!-- 기간선택 end -->
			
			<!-- 인원수 선택 -->
			<div>
				<input style="width: 100px" type="number" min="1" name="adult" placeholder="ADULT" autocomplete="off">
				<input style="width: 100px" type="number" min="0" name="kids" placeholder="KIDS" autocomplete="off">
			</div>
			<!-- 인원수 선택 end -->

			<div><input type="submit" value="숙소 검색"></div>
		</form>
	
	<div style="width: 1200px; height: 550px; border-bottom: 2px solid black; border-top: 2px solid black; 
				display: flex; padding-top: 25px; margin-top: 100px">
		<div class="hotel_img" style="width: 750px; height: 500px; ">
			<c:set var="length" value="${fn:length(imgList) }" />	
			<c:forEach var="img" items="${imgList }" varStatus="st">
				<c:if test="${st.index < 4 }">
					<div style="background-image: url('${cpath }/resources/hotelimg/${hotel.main_img}/${img}');
								background-size: 370px 245px;
								width: 370px;
								height: 245px;
								display: inline-block;
								background-color: black;">
						<c:if test="${st.index == 3 }">
							<div class="openModal"
										style="background-color: black;
									 	width: 370px;
									 	height: 245px;
									 	position: relative;
									 	opacity: 0.6;
									 	displat: flex;
									 	justifty-content: center;
									 	align-items: center;
									 	cursor: pointer;">
								<div style="position: absolute; color: white; width: 370px; height: 245px;">
									<h3 style="line-height: 245px; margin: 0;">+ ${length - 4}</h3>
								</div>		 	
							</div>
						</c:if>
					</div>
				</c:if>
				
			</c:forEach>
		</div>
		<div style="width: 450px; height: 500px; text-align: left;">
			<div style="display: flex;">
				<h4 style="font-family: Sans-Serif; color: #8173b8; font-size: 13px; margin-left: 10px;">
					${hotelKind }
				</h4>
				<h4 style="font-family: Sans-Serif; color: gray; font-size: 13px; margin-left: 10px;">
					${hotel.grade }
				</h4>
			</div>
			<ul style="list-style: none; padding-left: 10px;">
				<li>
					<h2 style="font-family: Sans-Serif;">
						${entrepreneur.shop_name }
					</h2>
				</li>
				<li>
					<h4 style="font-family: Sans-Serif; color: gray;">
						${entrepreneur.shop_eng }
					</h4>
				</li>
				<li>
					<a style="font-family: Sans-Serif; color: #974df4; font-size: 13px; 
							border: 1px solid #974df4; padding: 2px;">
						${entrepreneur.sales_loc.split(" ")[0] }(${entrepreneur.sales_loc.split(" ")[1]})에 위치
					</a>
				</li>
			</ul>
			<div style="display: flex; justify-content: space-between; margin-top: 100px;">
				<ul style="list-style: none; padding-left: 10px">
					<li style="font-family: Sans-Serif; margin-bottom: 5px;">
						1박 요금 최저가
					</li>
					<li style="font-family: Sans-Serif; color: gray; font-size: 13px;">
						세금,봉사료 포함
					</li>
				</ul>
				<ul style="list-style: none; padding-left: 10px">
					<li style="margin-bottom: 5px;">
						<strong style="font-family: Sans-Serif; font-size: 30px;">
							원~
						</strong>
					</li>
				</ul>
			</div>
			<form style="text-align: right; margin-top: 20px;">
				<input type="button" value="장바구니"
					style="width: 100px; height:50px; font-family: Sans-Serif;
					background-color:white; border: 1px solid black; border-radius: 5px;">
			</form>
		</div>
	</div>
	<div style="width: 1200px; height: 300px; border-bottom: 2px solid black; padding: 25px; text-align: left;">
		<div style="display: flex; justify-content: space-between;">
			<h3 style="font-family: Sans-Serif; margin-left: 20px; margin: 0; line-height: 70px;">
				숙소정보
			</h3>
			<button style="width: 100px; height: 50px; margin: 10px;"
					class="hotel_map">
				지도보기
			</button>
		</div>
		<ul style="list-style: circle; text-align: left; padding-left: 20px;">
			<li style="font-family: Sans-Serif; margin-bottom: 5px;">
				${entrepreneur.sales_loc }
			</li>
			<li style="font-family: Sans-Serif; margin-bottom: 5px;">
				체크인 ${hotel.check_in },체크아웃 ${hotel.check_out }
			</li>
			<li style="font-family: Sans-Serif; margin-bottom: 5px;">
				${hotel.floor }/${hotel.room_count }
			</li>
			<li style="font-family: Sans-Serif; margin-bottom: 5px;">
				${hotel.pnum }
			</li>
			<li style="font-family: Sans-Serif; margin-bottom: 5px;">
				${hotel.fax }
			</li>
		</ul>
	</div>
	<div style="width: 1200px; border-bottom: 2px solid black;">
		<ul style="list-style: none; padding-left: 0; height: 800px; overflow: hidden; overflow-y: auto;">
			<c:forEach var="room" items="${roomList }">
				<li style="width: 100%; height: 160px; border-bottom: 1px solid grey; display: flex; text-align: left;">
					<div style="width: 700px; height: 160px; padding-top: 20px;">
						<c:forEach var="viewKind" items="${viewKindList }">
							<strong style="font-family: Sans-Serif; font-size: 15pt;">
								<c:if test="${room.view_kind_idx == viewKind.idx}">
									${room.name }(${viewKind.name })
								</c:if>
							</strong>
						</c:forEach>
						<div>
							<p style="font-family: Sans-Serif;">${room.con_facility }</p>
						</div>
						<div style="display: flex;">
							<a  style="height: 25px;
									    line-height: 23px;
									    font-size: 12px;
									    padding: 0 10px;
									    color: #666;
									    background-color: #fff;
									    text-align: center;
									    border-radius: 4px;
									    border: solid 1px #c2c2c2;
									    margin-right: 20px;">
								알림
							</a>
							<a  style="height: 25px;
									    line-height: 23px;
									    font-size: 12px;
									    padding: 0 10px;
									    color: #666;
									    background-color: #fff;
									    text-align: center;
									    border-radius: 4px;
									    border: solid 1px #c2c2c2">
								객실정보
							</a>
							
						</div>
					</div>
					<div style="width: 300px; height: 160px; padding-top: 20px;"></div>
					<div style="width: 200px; height: 160px; padding-top: 20px; text-align: center;">
						<form method="POST">
							<input type="hidden" name="entrepreneurIdx" value=${entrepreneur.idx }>
							<input type="hidden" name="hotelIdx" value="${hotel.idx }">
							<input type="hidden" name="roomIdx" value="${room.idx }">
							<input type="submit" value="예약하기"
								style="color: #fff !important;
								border: none;
							    background-color: #e5236d;
							    width: 120px;
							    font-size: 15px;
							    border-radius: 10px;
							    padding: 10px 30px;
							    margin-top: 35px;">
					    </form>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div> 
	<div style="width: 1200px; height: 1000px; padding-top: 25px;">
		<div style="width: 1200px; height: 400px; background-color: #f5f5f5; display: flex;">
			<img width="600px" src="${cpath }/resources/hotelimg/${hotel.main_img }/1.jpg">
			<ul style="list-style: none;">
				<li>
					<h2 style="font-family: Sans-Serif;">
						${entrepreneur.shop_name }
					</h2>
				</li>
				<li>
					<h4 style="font-family: Sans-Serif; color: gray;">
						${entrepreneur.shop_eng }
					</h4>
				</li>
			</ul>
		</div>
		<div style="display: flex; width: 1200px; height: 150px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: Sans-Serif; width: 200px; text-align: left; line-height: 101px;">
				숙소정보
			</h3>
			<p style="font-family: Sans-Serif; width: 1000px; text-align: left;">
				${hotel.notice }
			</p>
		</div>
		<div style="display: flex; width: 1200px; height: 150px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: Sans-Serif; width: 200px; text-align: left; line-height: 101px;">
				객실
			</h3>
			<p style="font-family: Sans-Serif; width: 1000px; text-align: left; ">
				${hotel.room }
			</p>
		</div>
		<div style="display: flex; width: 1200px; height: 150px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: Sans-Serif; width: 200px; text-align: left; line-height: 101px;">
				편의시설
			</h3>
			<p style="font-family: Sans-Serif; width: 1000px; text-align: left;">
				${hotel.con_facility }
			</p>
		</div>
		<div style="display: flex; width: 1200px; height: 150px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: Sans-Serif; width: 200px; text-align: left; line-height: 101px;">
				다이닝
			</h3>
			<p style="font-family: Sans-Serif; width: 1000px; text-align: left;">
				${hotel.dining }
			</p>
		</div>
		<div style="display: flex; width: 1200px;
					border-bottom: 1px solid lightgray;">
			<h3 style="font-family: Sans-Serif; width: 200px; text-align: left; line-height: 101px;">
				숙소 부대시설
			</h3>
			<ul style="list-style: none; width: 100%; text-align: left;">
				<c:forEach var="add_facility" items="${add_facilityArr }">
					<li style="font-family: Sans-Serif; display: flex;">
						<img width="40px" height="40px" src="${cpath }/resources/hotelFacilitiesImg/${add_facility}.png">
						<p style="padding-left: 30px; font-family: Sans-Serif;">${add_facility}</p>
					</li>
				</c:forEach>
			</ul>
		</div>
		
	</div>
</div>

<!-- 이미지 모달 script -->
<script>
	const modal_overlay = document.querySelector('.modal_overlay');
	const hotel_one_modal = document.querySelector('.hotel_one_modal');
	modal_overlay.onclick = function(event) {
		hotel_one_modal.style.display = 'none';
		console.log('close')
	}
	const openModal = document.querySelector('.openModal');
	openModal.onclick = function(event) {
		hotel_one_modal.style.display = 'block';
		console.log('open')
	}

</script>

<!-- 숙소 검색 script -->
<script>

	/* 체크인 체크아웃 날짜 */
	document.getElementById('from').value = '${searchInfo.getFrom()}';
	document.getElementById('to').value = '${searchInfo.getTo()}';
	
	$(function() {
        //시작일.
        $('#from').datepicker({
            dateFormat: "yy-mm-dd",             // 날짜의 형식
            minDate: 0,                      	// 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
            maxDate: 30,
            onClose: function( selectedDate ) {    
            	let date = new Date(selectedDate);
            	date.setDate(date.getDate() + 1);
            	// 시작일(from) datepicker가 닫힐때
                // 종료일(to)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일 다음날로 지정
                $("#to").datepicker( "option","minDate", date.toISOString().substring(0, 10));
            }                
        });
     	//종료일
        $('#to').datepicker({
            dateFormat: "yy-mm-dd",
            minDate: document.getElementById('from').value + 1,
            maxDate: 30,
            onClose: function( selectedDate ) {
                // 종료일(to) datepicker가 닫힐때
                // 시작일(from)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                $("#from").datepicker( "option", "maxDate", selectedDate);
            }                
        });
     
    });
	
	/* 여행지 선택 */
	$(".hotel_location").hide();
	
	$(document).ready(function(){
	    $("#h_address").click(function(){
	        $(".hotel_location").show();
	        $(document).mouseup(function(e){
	            if($(".hotel_location").has(e.target).length === 0){
	            	$(".hotel_location").hide();
	            }
	        });
	    });
	}); 
	
	$('.hotel_location .hotel_metro').click(function (event) {
		event.preventDefault();
	
		hotelLocalDiv = document.querySelectorAll('.hotel_local > div');
		const idx = (event.target.id).split('_').reverse()[0];
		
		const resultDiv = document.querySelector('.hotel_local_' + idx);
	
		for(let i = 0; i < hotelLocalDiv.length; i++){
			hotelLocalDiv[i].style.display='none';	
		}
	
		if(resultDiv != null){
			target = event.target.value;
			resultDiv.style.display='inline';
			$('.hotel_local > div').click(function (event) {
				event.preventDefault();
				$('#h_address').val(target + ' ' + event.target.value);
				$(".hotel_location").hide();
			})
		}
	})
	
	/* 필터 보이기 */
    $("#hotel_filter > div").click(function(){
    	event.preventDefault();
    	const idx = (event.target.id).split('_').reverse()[0];
    	resultDiv = document.getElementById('hotel_filter_' + idx + '_in');
    	
    	if(resultDiv.style.display=="block"){
    		resultDiv.style.display = "none"; 
    	}
        else{ 
        	resultDiv.style.display = "block"; 
        }
    });
	
</script>

<!-- map api script -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=408b01640ff9f7e97cf1c396a706c05a&libraries=services"></script>
<script>
	const map_modal_overlay = document.querySelector('.map_modal_overlay');
	const hotel_map_modal = document.querySelector('.hotel_map_modal');
	
	map_modal_overlay.onclick = function(event) {
		hotel_map_modal.style.display = 'none';
	}
	
	const hotel_map = document.querySelector('.hotel_map');
	
	hotel_map.onclick = function(event) {
		
		hotel_map_modal.style.display = 'block';
		
		/* var staticMapContainer = document.querySelector('.map_modal_img'), // 이미지 지도를 표시할 div  
	    staticMapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 이미지 지도의 중심좌표
	        level: 3 // 이미지 지도의 확대 레벨
	    };
		
		var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
		 */
		 
		var mapContainer = document.querySelector('.map_modal_img'), // 지도를 표시할 div 
	    mapOption = {
	       center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	       level: 3 // 지도의 확대 레벨
	    };
	 
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('${entrepreneur.sales_loc}', function(result, status) {
			// 정상적으로 검색이 완료됐으면 
			if (status === kakao.maps.services.Status.OK) {
		
		    	var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		       	// 결과값으로 받은 위치를 마커로 표시합니다
		       	var marker = new kakao.maps.Marker({
		        	map: map,
		            position: coords
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;font-family: Sans-Serif;">${entrepreneur.shop_eng}</div>'
		        });
		        infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    
	}
	
</script>




<%@ include file="../layout/footer.jsp" %>