<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<style>
#index > .inr .wide {
	width: auto;
    margin-top: 0;
    min-width: 1200px;
    max-width: 2000px;
    overflow: hidden;
}
/* #index > .inr { */
/* 	margin: 50px auto 0; */
/* } */
.contents {
	min-height: 350px;
}
.submain {
	position: relative;
}
	.index_slider {
		height: 600px;
		position: relative;
	}
	.index_slider > .page-btns {
		text-align: center;
		position: absolute;
		bottom: 20px;
		left: 0;
		width: 100%;
	}
	.index_slider > .page-btns > div {
		width: 20px;
		height: 20px;
		background-color: rgba(255,255,255,.5);
		border-radius: 4px;
		display: inline-block;
		cursor: pointer;
	}
	.index_slider > .page-btns > div.active {
		background-color: rgba(255,255,255,1);
	}
	.index_slider > .slides > div {
	    position:absolute;
	    top:0;
	    left:0;
	    right:0;
	    bottom:0;
	    opacity:0;
	    transition: opacity 0.3s;
	    background-position:center;
	    background-size:cover;
	    background-repeat:no-repeat;
	}
	.index_slider > .slides > div.active {
	    opacity:1;
	}
	.index_slider > .side-btns > div {
	    position:absolute;
	    top:0;
	    left:0;
	    width: 350px;
	    height:100%;
	    cursor:pointer;
	}
	.index_slider > .side-btns > div:last-child {
	    left:auto;
	    right:0;
	}
	.index_slider >.side-btns > div > span {
	    position:absolute;
	    top:50%;
	    left:20px;
	    transform:translatey(-50%);
	    background-color:white;
	    opacity:0.5;
	    padding:1px 13px;
	    border-radius:50px;
	    font-size:25px;
	}
	.index_slider >.side-btns > div:last-child > span {
	    left:auto;
	    right:20px;
	}
	
.theme-container {
	position: relative;
    display: block;
}
.best_index {
	width: 100%;
}
.tag_group {
    margin-bottom: 15px;
    text-align: center;
}
.price_group {
    margin-top: 10px;
}

.submain .item.item06 {
    width: 1200px;
    margin: 100px auto;
}
.submain .item.item06 .fl {
	float: left;
    width: 290px;
    height: 300px;
}

.submain .item.item05 {
	background-color: rgb(226, 240, 217);
	padding: 25px 0 65px;
	height: 600px;
}
.submain > .inr, .submain > .item > .inr {
    width: 1200px;
    margin: 0 auto;
}
.item.item05 .img {
	width: 588px;
    height: 536px;
    position: absolute;
    top: 50px;
    left: 340px;
}
.submain .item.item05 .prod_thum_list>li .tag {
    font-size: 15px;
    font-weight: bold;
    border-bottom: 3px solid #111;
    padding: 0 0 8px;
    height: auto;
    margin: 17px 0 18px;
    line-height: 1;
}
.tag {
	font-size: 20px;
	font-weight: bold;
	padding: 0 0 8px;
    height: auto;
    margin: 17px 0 18px;
}
.item_title {
	font-size: 30px;
    font-weight: 600;
    line-height: 40px;
}
.item_text {
	color: #666;
    line-height: 25px;
    margin-top: 25px;
}
</style>

<div id="index">
	<div class="inr wide">
		<div class="contents">
			<!-- 이미지 슬라이드 -->
			<div class="submain">
				<div class="index_slider">
					<div class="slides">
						<div class="active"
							style="background-image: url(${cpath}/resources/img/hotel1.jpg);"></div>
						<div
							style="background-image: url(${cpath}/resources/img/hotel2.jpg);"></div>
						<div
							style="background-image: url(${cpath}/resources/img/tour1.jpg);"></div>
						<div
							style="background-image: url(${cpath}/resources/img/tour2.jpg);"></div>
					</div> 	
					<div class="page-btns">
						<div class="active"></div>
						<div></div>
						<div></div>
						<div></div>
					</div>
					<div class="side-btns">
						<div>
							<span><i class="fas fa-angle-left"></i></span>
						</div>
						<div>
							<span><i class="fas fa-angle-right"></i></span>
						</div>
					</div>		
				</div>
			</div>
			<!-- 고객님만을 위한 추천여행 -->
			<div class="theme-container">
				<div class="best_index">
					<div class="submain">
						<div class="inr pb60">
							<div style="width: 1200px; margin: 80px auto 30px;">
								<div style="padding-bottom: 10px;">
									<h2><strong>고객님만을 위한 추천여행</strong></h2>
								</div>
								<div style="width: 1200px; height: 400px; display: flex;">
									<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
													background-image: url(${cpath}/resources/head_tourImg/h332.jpg);">
										</div>
										<div class="tag_group">
											<span>패키지</span>
										</div>
										<strong style="margin-bottom: 15px;">[3%할인쿠폰][제주] 제주한달살기1탄_WE호텔 (6박이상)</strong>
										<div class="price_group">
											<h2><strong>2,790,000원</strong></h2>
										</div>
									</div>
									<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
													background-image: url(${cpath}/resources/head_tourImg/h333.jpg);">
										</div>
										<div class="tag_group">
											<span>패키지</span>
										</div>
										<strong style="margin-bottom: 15px;">[제주] 제주한달살기7탄_밸류호텔 서귀포JS (6박이상)</strong>
										<div class="price_group">
											<h2><strong>2,380,000원</strong></h2>
										</div>
									</div>
									<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
													background-image: url(${cpath}/resources/head_tourImg/h90.jpg);">
										</div>
										<div class="tag_group">
											<span>패키지</span>
										</div>
										<strong style="margin-bottom: 15px;">[경기 포천] 시골 한달살기 숙박ㅣ교동 장독대 마을 '모던 복층펜션'</strong>
										<div class="price_group">
											<h2><strong>725,000원</strong></h2>
										</div>
									</div>
									<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
													background-image: url(${cpath}/resources/head_tourImg/h246.jpg);">
										</div>
										<div class="tag_group">
											<span>패키지</span>
										</div>
										<strong style="margin-bottom: 15px;">[경북 영덕] 시골 한달살기 숙박 ㅣ 느림의 미학, 시골 전통한옥 '우계종택'</strong>
										<div class="price_group">
											<h2><strong>1,305,000원</strong></h2>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 또 다른 즐거움 조식의 발견 -->
			<div class="submain">
				<div class="item item06">
					<div class="fl">
						<h1><strong>
							또 다른 즐거움,
							<br>
							조식의 발견
						</strong></h1>
					</div>
					<div style="width: 900px; height: 400px; display: flex;">
						<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
 							<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
								background-image: url('${cpath}/resources/hotelimg/DESIGN HOTEL DANIEL CAMPANELLA/1.jpg');">
							</div>
							<div class="tag_group">
								<span>어디에도 없는가격</span>
							</div>
								<strong style="margin-bottom: 15px;">디자인호텔 다니엘 감파넬라</strong>
							<div class="price_group">
								<h2><strong>57,188원~</strong></h2>
							</div>
 						</div>
 						<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
 							<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
								background-image: url('${cpath}/resources/hotelimg/SHINE HOTEL/1.jpg');">
							</div>
							<div class="tag_group">
								<span>광국장 X 하나투어</span>
							</div>
								<strong style="margin-bottom: 15px;">샤인 호텔</strong>
							<div class="price_group">
								<h2><strong>139,000원~</strong></h2>
							</div>
 						</div>
 						<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
 							<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
								background-image: url('${cpath}/resources/hotelimg/HOTEL BAY 204 DOBONG/1.jpg');">
							</div>
							<div class="tag_group">
								<span>프라이빗 스파풀</span>
							</div>
								<strong style="margin-bottom: 15px;">호텔베이 204 도봉</strong>
							<div class="price_group">
								<h2><strong>470,240원~</strong></h2>
							</div>
 						</div>
					</div> 			
				</div>
			</div>
			<!-- 청정함을 담은 신비의 섬, 울릉도 -->
			<div class="theme-container">
				<div class="best_index">
					<div class="submain">
						<div class="inr pb60">
							<div style="width: 1200px; margin: 80px auto 30px;">
								<div style="padding-bottom: 10px;">
									<h2><strong>청정함을 담은 신비의 섬, 제주도</strong></h2>
								</div>
								<div style="width: 1200px; height: 400px; display: flex;">
									<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
													background-image: url(${cpath}/resources/head_tourImg/h309.jpg);">
										</div>
										<div class="tag_group">
											<span>패키지</span>
										</div>
										<strong style="margin-bottom: 15px;">[제주] 그리스신화박물관+ 놀라운트릭아이미술관+AR체험</strong>
										<div class="price_group">
											<h2><strong>9,500원</strong></h2>
										</div>
									</div>
									<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
													background-image: url(${cpath}/resources/head_tourImg/h310.jpg);">
										</div>
										<div class="tag_group">
											<span>패키지</span>
										</div>
										<strong style="margin-bottom: 15px;">[제주] 오설록 티뮤지엄_티스톤체험</strong>
										<div class="price_group">
											<h2><strong>28,500원</strong></h2>
										</div>
									</div>
									<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
													background-image: url(${cpath}/resources/head_tourImg/h311.jpg);">
										</div>
										<div class="tag_group">
											<span class="tag">패키지</span>
										</div>
										<strong style="margin-bottom: 15px;">[제주] 카멜리아힐</strong>
										<div class="price_group">
											<h2><strong>6,500원</strong></h2>
										</div>
									</div>
									<div style="cursor: pointer; clear: both; width:282px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; background-size: 280px 230px;
													background-image: url(${cpath}/resources/head_tourImg/h312.jpg);">
										</div>
										<div class="tag_group">
											<span class="tag">패키지</span>
										</div>
										<strong style="margin-bottom: 15px;">[제주] 아쿠아플라넷제주 AQ패키지권</strong>
										<div class="price_group">
											<h2><strong>28,900원</strong></h2>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 강원도는 맑음 -->
			<div class="submain">
				<div class="item item05">
					<div class="inr">
						<ul class="prod_thum_list">						
						<span class="img">
							<img style="width: 600px; height: 500px;" src="${cpath }/resources/img/강원도는 맑음.jpg">
						</span>
						<div style="float: right">
							<div class="tag">청정 하늘, 깨끗한 자연</div>
							<div class="item_title">강원도는 맑음</div>
							<div class="item_text">
								화창한 봄날 어디론가 떠나고 싶다면<br>
								지친 일상에 힐링을 더하고 싶다면<br>
								바로 이곳, 여기는 강원도 입니다.
							</div>
							<div>
								<span>
									<img style="width: 120px; height: 120px;" src="${cpath }/resources/head_tourImg/h110.jpg">
								</span>
								<div>[웰니스_호텔팩] 동해+정선 2일</div>
								<div>#동해보양온천호텔#카페쿠혼#강원상품권</div>
								<div><strong>500,000원~</strong></div>
							</div>
							<div>
								<span>
									<img style="width: 120px; height: 120px;" src="${cpath }/resources/head_tourImg/h111.jpg">
								</span>
								<div>[웰니스_호텔팩] 평창2일 </div>
								<div>#용평리조트#발왕산케이블카#강원상품권</div>
								<div><strong>401,000원~</strong></div>
							</div>
						</div>
						</ul>
					</div>
				</div>
			</div>
			<!-- 내 나라 구석구석 -->
			<div class="submain">
				<div class="best_index">
					<div class="submain">
						<div class="inr pb60">
							<div style="width: 1200px; margin: 80px auto 30px;">
								<div style="padding-bottom: 10px;">
									<h2><strong>내나라 구석구석</strong></h2>
								</div>
								<div style="width: 1200px; height: 400px; display: flex;">
									<div style="cursor: pointer; clear: both; width:210px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; border-radius: 50%; background-size: 280px 230px;
													background-image: url(${cpath}/resources/img/강릉index.jpg);">
										</div>
										<div class="tag_group">
											<h2><span>강릉</span></h2>
										</div>
										<strong style="margin-bottom: 15px;">놀킷 멋킷 넘치는 핫한 강릉<br>가족 여행도 청춘 여행도 좋아요</strong>
									</div>
									<div style="cursor: pointer; clear: both; width:215px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; border-radius: 50%; background-size: 280px 230px;
													background-image: url(${cpath}/resources/img/여수index.jpg);">
										</div>
										<div class="tag_group">
											<h2><span>여수</span></h2>
										</div>
										<strong style="margin-bottom: 15px;">너와 함께 걷고 싶은<br> 여수 밤바다는 지금도 빛나고 있어요</strong>							
									</div>
									<div style="cursor: pointer; clear: both; width:210px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; border-radius: 50%; background-size: 280px 230px;
													background-image: url(${cpath}/resources/img/부산index.jpg);">
										</div>
										<div class="tag_group">
											<h2><span>부산</span></h2>
										</div>
										<strong style="margin-bottom: 15px;">익숙하지만 새로운 부산 여행,<br> 바다와 미식의 진수를 느껴보세요!</strong>							
									</div>
									<div style="cursor: pointer; clear: both; width:210px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; border-radius: 50%; background-size: 280px 230px;
													background-image: url(${cpath}/resources/img/제주index.jpg);">
										</div>
										<div class="tag_group">
											<h2><span>제주</span></h2>
										</div>
										<strong style="margin-bottom: 15px;">가만히 있어도 좋은 제주<br> 놀멍쉬멍, 혼저옵서예</strong>										
									</div>
									<div style="cursor: pointer; clear: both; width:210px; margin-right: 24px;">
										<div style="height: 210px; margin-bottom: 25px; border-radius: 50%; background-size: 280px 230px;
													background-image: url(${cpath}/resources/img/경주index.jpg);">
										</div>
										<div class="tag_group">
											<h2><span>경주</span></h2>
										</div>
										<strong style="margin-bottom: 15px;">고즈넉한 여행을 원한다면<br> 추억의 온기 가득한 경주로 떠나요</strong>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> 
	</div>
</div>

<script>
    /* 이미지 슬라이드 */
 	// 기존 버튼형 슬라이더
 	$('.index_slider > .page-btns > div').click(function(){
 	    var $this = $(this);
 	    var index = $this.index();
 	    
 	    $this.addClass('active');
 	    $this.siblings('.active').removeClass('active');
 	    
 	    var $slider = $this.parent().parent();
 	    
 	    var $current = $slider.find(' > .slides > div.active');
 	    
 	    var $post = $slider.find(' > .slides > div').eq(index);
 	    
 	    $current.removeClass('active');
 	    $post.addClass('active');
 	});

 	// 좌/우 버튼 추가 슬라이더
 	$('.index_slider > .side-btns > div').click(function(){
 	    var $this = $(this);
 	    var $slider = $this.closest('.index_slider');
 	    var index = $this.index();
 	    var isLeft = index == 0;
 	    var $current = $slider.find(' > .page-btns > div.active');
 	    var $post;
 	    
 	    if( isLeft ){
 	        $post = $current.prev();
 	    } else {
 	        $post = $current.next();
 	    };
 	    if( $post.length == 0 ){
 	        if ( isLeft ){
 	            $post = $slider.find(' > .page-btns > div:last-child');
 	        }
 	        else {
 	            $post = $slider.find(' > .page-btns > div:first-child');
 	        }
 	    };
 	    $post.click();
 	});
 	setInterval(function(){
 	    $('.index_slider > .side-btns > div').eq(1).click();
 	}, 3000);       
</script>

<%@ include file="layout/footer.jsp" %>