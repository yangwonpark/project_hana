<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	.span {
		margin: 0;
    	padding: 0;
	}
	.product-top {
		position: relative;
	    overflow: visible;
	}
	.visual-flex {
		position: sticky;
	    top: 0px;
	}
	.pic {
		height: 47vw;
    	max-height: calc(100vw - 750px);
    	min-height: 600px;
	}
	.product-info {
		position: relative;
    	padding: 88px 90px 60px;
    	background-color: #fff;
	}
	.product-title {
		width: 570px;
   		position: relative;
   		margin-top: 0;
	}
	.product-title .local {
		font-size: 18px;
   		color: #666;
    	font-weight: 700;
	}
	.product-title .name {
	    margin: 10px 0 0;
	    font-size: 32px;
	    font-weight: 700;
	    line-height: 1.4;
    }
    .price-wrap {
    	margin-top: 0;
    	margin: 18px 0 0;
    }
    .price {
    	margin: 18px 0 0;
    }
    .usable {
    	margin: 35px 0 0;
    	font-size: 18px;
    	font-weight: 700;
    }
    .coupon-area {
    	width: 570px;
    	overflow: hidden;
    	margin-top: 40px;
    }
    .coupon-area .btn-download {
	    display: block;
	    width: 100%;
	    height: 70px;
	    background: #f06c5e;
	    border-top-left-radius: 8px;
	    border-top-right-radius: 8px;
	    border-bottom-right-radius: 8px;
	    border-bottom-left-radius: 8px;
	}
	.product-info-detail {
	    background-color: #f7f7f7;
	}
	.inner-section {
	    max-width: 750px;
	    padding: 61px 90px;
	}
	.product-info-detail .tags {
    	margin: 0 0 30px -8px!important;
   	 	word-break: keep-all;
	}
	.rate-wrap {
	    border-top: 1px solid #ccc;
	    border-bottom: 1px solid #ccc;
	    height: 60px;
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    color: #666;
	}
	.rate-wrap .order, .rate-wrap .avg {
	    -webkit-box-flex: 1;
	    flex: 1;
	}
    .rate-wrap .order {
	    text-align: right;
	    font-weight: 700;
	}
	.product-detail-container {
		position: relative;
    	background: #fff;
    	z-index: 1;
	}
	.product-detail-menu-wrap {
		height: 70px;
	    bottom: 0;
	    left: 0;
	    right: 0;
	    width: 2000px;
	    z-index: 8;
	}
	.product-detail-menu {
	 	width: 100%;
	    height: 70px;
	    line-height: 70px;
	    background-color: #fff;
	    border-top: 1px solid #ccc;
	    position: absolute;
	    box-shadow: 0 10px 15px rgb(0 0 0 / 3%);
	    z-index: 10;
	}
	.menus {
		position: relative;
	    transition: transform .3s,-webkit-transform .3s;
	    float: left;
	    z-index: 2;
	}
	.menus-right {
	    opacity: 1;
	    position: absolute;
	    bottom: 0;
	    left: 730px;
	    width: 340px;
	    margin-left: 150px;
	    height: 70px;
	    overflow: hidden;
	    float: right;
	    transition: opacity .3s;
    }
    #btn-reservation {
	    width: 100%;
	    height: 70px;
	    line-height: 20px;
	    background-color: #f06c5e;
	    text-align: center;
	}
	.detail-wrap {
		position: relative;
    	overflow: visible;
	}
	.floating-selected-result {
	    bottom: 0;
	    width: 340px;
	    float: right;
	    padding-top: 70px;
	    margin-right: calc(50% - 620px);
	    border-left: 1px solid #ccc;
	    border-right: 1px solid #ccc;
	    z-index: 7;
	}
	.floating-selected-result .wrap {
	    background-color: #fff;
	}
	.floating-selected-result .product-info {
	    padding: 45px 30px;
	    border-bottom: 1px solid #ccc;
	}
	.selected-default {
	    padding: 45px 0;
	    text-align: center;
	}
	.selected-default button {
    	font-weight: 400;
	}
	.choice {
	    background-color: #666;
	}
	.floating-selected-result .amount strong {
	    font-size: 15px;
	}
	.floating-selected-result .amount p {
	    -webkit-box-flex: 1;
	    flex: 1;
	    text-align: right;
	    font-size: 24px;
	    font-weight: 700;
	    color: #f06c5e;
	}
	.btn-order-group {
	    opacity: 1;
	    bottom: 0;
	    right: -20px;
	    width: 340px;
	    margin-left: -1px;
	    height: 70px;
	    background-color: #f06c5e;
	    overflow: hidden;
	    transition: opacity .3s;
	}
	.btn-order-group .inner {
	    display: flex;
	    width: 340px;
	    height: 70px;
	}
	.floating-selected-result .btn-order-group {
	    position: static;
	}
	.btn-order-group button.btn-cart {
	    width: 340px;
	    outline: none;
	    font-weight: 700;
	    font-size: 15px;
	    height: 70px;
	    vertical-align: top;
    }
   .btn-order-group button {
   		background-color: #f06c5e;
	    color: white;
	    border-color: #f06c5e;
	}
	.product-detail-view .product-detail-wrap .point-background {
	    background-color: #f7f7f7;
	}
	.flatpickr-input {
	    -webkit-appearance: none;
	    background-color: #fff;
	    background-image: none;
	    border: 1px solid #ccc;
	    color: #666;
	    display: inline-block;
	    outline: 0;
	    padding: 0 40px 0 15px;
	    width: 100%;
	    height: 40px;
	    line-height: 40px;
	    font-size: 14px;
	    border-radius: 7px;
	}
	button {
            all: unset;
            background-color: black;
            color: white;
            padding: 5px 20px;
            cursor: pointer;
            font-weight: bold;
            font-size: 12pt;
        }
	.modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .modal_overlay {
            background-color: rgba(0, 0, 0, 0.6);
            width: 100%;
            height: 100%;
            position: absolute;
        }
        .modal_content {
            background-color: white;
            padding: 50px 100px;
            text-align: center;
            position: relative;
            border-radius: 10px;
            min-width: 400px;
            width: 50%;
            max-width: 500px;
            z-index: 20;
        }
    .hidden {
        display: none;
    }
</style>

<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
		integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
		crossorigin="anonymous">

<div class="contents">
	<div class="product-top" style="height: 800px; display: flex;">
		<div class="visual-flex" style="width: 900px; height: 800px;">
			<div class="pic">
				<img style="margin-right: 20px; width: 900px; height: 800px" src="${cpath }/resources/head_tourImg/${tour_item.head_img}">
			</div>
		</div>
		<div class="infoFlex" style="width: 650px; height: 100%; background-color: #eaeaea;">
			<div class="productInfoWrap">
				<div class="product-info">
					<div class="product-title">
						<h1 class="name">${tour_item.name}</h1>
						<div class="price-wrap">
							<h3><span class="price">${tour_price.price } 원</span></h3>
							<div class="usable">${tour_item.usable}일 후 부터 사용가능</div>
						</div>
					</div>
				</div>
				<div class="product-info-detail">
					<div class="inner-section">
						<div class="hashtag">
							${tour_item.hashtag }
						</div>
						<div class="rate-wrap">
							<div class="avg"></div>
							<div class="order">
								<span>구매 : ${tour_item.sold_cnt }</span>
								<span>조회 : ${tour_item.view_cnt }</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="product-detail-container">
		<div class="detail-wrap">
			<div class="product-detail-wrap" style="position: relative; width: 1000px; margin-left: 350px;">
				<div class="product-detail-menu-wrap">
					<div class="product-detail-menu">
						<div class="menus">
							<div class="menus-left">
								<span>상품타입 *</span>
								<span>상품정보 *</span>
								<span>상품문의 *</span>
								<span>리뷰</span>
							</div>
						</div>
					</div>
				</div>
					<div class="point-background" style="width: 1000px; margin-left: 50px;">
					<form action="${cpath }/reservation/reservation_view" method="POST">
						<input name="tour_option" type="hidden" value="${tour_option.name }">
						<input name="tour_price" type="hidden" value="${tour_price.price }">
						<input name="reservation" type="hidden" value="${reservation.tot_price }">
						<input name="entrepreneur" type="hidden" value="${entrepreneur.brand_name }">
						<div class="inner-wrap clear-margin">
							<div class="left-content">
								<section class="section-typeinfo">
									<h2 class="section-title">상품타입</h2>
									<div style="z-index: 99;">
										<p><input autocomplete="off" type="date" id="start_date" style="margin-left: 10px"></p>
									</div>								
									<ul id="menuList">
										<li id="search">검색하기</li>
									</ul>
									<article id="searchArticle" class="hidden">
										<div>${tour_option.name }</div>
										<div>${tour_price.price} 원</div>
										<div>											
											<p><input style="width: 300px; height: 30px" type="number" id="client" placeholder="수량"></p>
										</div>		
										상세 정보 : 취소 요청에 대한 7일 이내 관리자 승인 후 환불	<br>
										<button style="margin: 20px;">적용하기</button>	
									</article>
								</section>
							</div>
						</div>
						</form>
					</div>
					<div class="inner-wrap" style="width: 1000px; margin-left: 50px;">
						<div class="left-content">
							<section class="content">
								<h2>기본정보</h2>
								<div>${tour_item.content }</div>
								<img style="margin-right: 20px; width: 600px; height: 1000px" src="${cpath }/resources/tourImg/${tour_item.con_img}"/>
							</section>
							<section class="how_to">
								<h2>사용방법</h2>
								<div>${tour_item.how_to }</div>
							</section>
							<section class="matter">
								<h2>유의사항</h2>
								<div>${tour_item.matter }</div>
							</section>
							<section class="refund_rule">
								<h2>취소 및 환불규정</h2>
								<div>${tour_item.refund_rule }</div>
							</section>
						</div>
					</div>
					<br>
					<div class="point-background">
						<div class="left-content">
							<section style="margin-left: 50px">
								<h2>판매자 정보</h2>
								<div>
									<div>${entrepreneur.brand_name }</div>
									<div>${entrepreneur.brand_info }</div>
									<a href="${cpath }/tour/entrepreneur_detail" style="position: absolute; top: 1900px; right: 850px">자세히 보기</a>
								</div>
							</section>
						</div>
					</div>
					<br>
					<div class="inner-wrap">
						<div class="left-content">
							<div class="inquiry-list">
								<div class="list-header">
									<div class="inner" style="margin-left: 50px">
										<h2>상품문의</h2>
										<button style="background-color: #666; overflow: hidden; margin-top: 30px; margin-left: 650px">
											<span>문의하기</span>
										</button>
									</div>
									<div>${tour_qa.notice }</div>
								</div>
							</div>
						</div>
					</div>
							
			</div>			
		</div>
	</div>
</div>

<script>
	const lis = document.querySelectorAll('#menuList > li');
	const ars = document.querySelectorAll('section article');
	
	const handler1 = (event) => {
	    const ar = document.getElementById(event.target.id + 'Article');
	    ars.forEach(ar => ar.classList.add('hidden'));  
	    ar.classList.remove('hidden');  
	    
	    const searchBtn = document.getElementById('btn-reservation');
		const modal = document.querySelector('.modal');
		const closeBtn = document.getElementById('close');
		const overlay = document.querySelector('.modal_overlay');
		
		searchBtn.onclick = function() {
		    modal.classList.add('hidden');
		}
		closeBtn.onclick = function() {
		    modal.classList.add('hidden');
		}
		overlay.onclick = function() {
		    modal.classList.add('hidden');
		}
	};
	lis.forEach(li => li.onclick = handler1);
	
	

	const start_date = document.querySelector('#start_date');
	const client = document.querySelector('#client');
	const nextBtn = document.querySelector('#next');
// 	const output1 = document.querySelector('#output1');     
//     const output2 = document.querySelector('#output2');     
//     const output3 = document.querySelector('#output3');
//     const output4 = document.querySelector('#output4');
    
    const handler2 = () => {
        const emptyFlag = start_date.value === '' || client.value === '';
        console.log(emptyFlag);
        if(emptyFlag) {
            alert('모든 값을 입력하세요!');
            if(client.value === '') {
                client.focus();
            }
            return;
        }
        
//         output1.innerText = `${tour_option.name} `;
//         output2.innerText = `${tour_item.usable}일 후 사용가능`;
//         output3.innerText = `${tour_option.name} * ${reservation.client} = ${reservation.tot_price}`;   
//         output4.innerText = `${reservation.start_date} ~ ${reservation.end_date} `;
    };
    
    nextBtn.onclick = handler2;
</script>
<%@ include file="../layout/footer.jsp" %>