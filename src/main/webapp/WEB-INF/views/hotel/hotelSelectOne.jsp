<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div align="center">
   <c:if test="${searchInfo.from != null }">
      <div style="width: 1200px; height: 80px; text-align: left; padding-top: 50px;">
         <h2 style="padding: 0;">${searchInfo.from } ~ ${searchInfo.to }</h2>
      </div>
   </c:if>
   <div style="width: 1200px; height: 550px; border-bottom: 2px solid black; border-top: 2px solid black; 
            display: flex; padding-top: 25px; margin-top: 30px">
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
                     <div class="openModal slider"
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
                  ${entrepreneur.sales_loc.split(" ")[0] }(${entrepreneur.sales_loc.split(" ")[1]})??? ??????
               </a>
            </li>
         </ul>
         <div style="display: flex; justify-content: space-between; margin-top: 100px;">
            <ul style="list-style: none; padding-left: 10px">
               <li style="font-family: Sans-Serif; margin-bottom: 5px;">
                  1??? ?????? ?????????
               </li>
               <li style="font-family: Sans-Serif; color: gray; font-size: 13px;">
                  ??????,????????? ??????
               </li>
            </ul>
            <ul style="list-style: none; padding-left: 10px">
               <li style="margin-bottom: 5px;">
                  <strong style="font-family: Sans-Serif; font-size: 30px;">
                     <fmt:formatNumber value="${hotelPriceMin }" pattern="#,###" />???~
                  </strong>
               </li>
            </ul>
         </div>
         <form style="text-align: right; margin-top: 20px;">
            <input type="button" value="????????????"
               style="width: 100px; height:50px; font-family: Sans-Serif;
               background-color:white; border: 1px solid black; border-radius: 5px;">
         </form>
      </div>
   </div>
   <div style="width: 1200px; height: 300px; border-bottom: 2px solid black; padding: 25px; text-align: left;">
      <div style="display: flex; justify-content: space-between;">
         <h3 style="font-family: Sans-Serif; margin-left: 20px; margin: 0; line-height: 70px;">
            ????????????
         </h3>
         <button style="width: 100px; height: 50px; margin: 10px;"
               class="openModal map">
            ????????????
         </button>
      </div>
      <ul style="list-style: circle; text-align: left; padding-left: 20px;">
         <li style="font-family: Sans-Serif; margin-bottom: 5px;">
            ${entrepreneur.sales_loc }
         </li>
         <li style="font-family: Sans-Serif; margin-bottom: 5px;">
            ????????? ${hotel.check_in },???????????? ${hotel.check_out }
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
                        ??????
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
                        ????????????
                     </a>
                  </div>
               </div>
               <div style="width: 300px; height: 160px; padding-top: 20px;">
                  <c:forEach var="hotelPrice" items="${hotelPriceList }">
                     <c:if test="${hotelPrice.room_info_idx eq room.idx}">
                     
                        <c:if test="${room.headcount == 1 }">
                           <c:set var="price">${hotelPrice.price }</c:set>
                        </c:if>
                        <c:if test="${room.headcount != 1}">
                           <c:set var="price">${hotelPrice.price * 2}</c:set>
                        </c:if>
                        <fmt:formatNumber value="${price }" pattern="#,###" />???
                     </c:if>
                  </c:forEach>
               </div>
               <div style="width: 200px; height: 160px; padding-top: 20px; text-align: center;">
                  <form class="reservation-form" method="POST" action="${cpath }/hotel/hotelSelectOne">
                     <input type="hidden" name="entrepreneurIdx" value=${entrepreneur.idx }>
                     <input type="hidden" name="hotelIdx" value="${hotel.idx }">
                     <input type="hidden" name="price" value="${price }">
                     <input type="hidden" name="roomIdx" value="${room.idx }">
                     <input type="hidden" name="h_address" value="${searchInfo.getH_address() }">
                     <input type="hidden" name="from" value="${searchInfo.getFrom() }">
                     <input type="hidden" name="to" value="${searchInfo.getTo() }">
                     <input type="hidden" name="people" value="${searchInfo.getPeople() }">
                     <input type="submit" id="reservation" value="????????????"
                        style="color: #fff !important;
                        border: none;
                         background-color: #5caceb;
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
            ????????????
         </h3>
         <p style="font-family: Sans-Serif; width: 1000px; text-align: left;">
            ${hotel.notice }
         </p>
      </div>
      <div style="display: flex; width: 1200px; height: 150px;
               border-bottom: 1px solid lightgray;">
         <h3 style="font-family: Sans-Serif; width: 200px; text-align: left; line-height: 101px;">
            ??????
         </h3>
         <p style="font-family: Sans-Serif; width: 1000px; text-align: left; ">
            ${hotel.room }
         </p>
      </div>
      <div style="display: flex; width: 1200px; height: 150px;
               border-bottom: 1px solid lightgray;">
         <h3 style="font-family: Sans-Serif; width: 200px; text-align: left; line-height: 101px;">
            ????????????
         </h3>
         <p style="font-family: Sans-Serif; width: 1000px; text-align: left;">
            ${hotel.con_facility }
         </p>
      </div>
      <div style="display: flex; width: 1200px; height: 150px;
               border-bottom: 1px solid lightgray;">
         <h3 style="font-family: Sans-Serif; width: 200px; text-align: left; line-height: 101px;">
            ?????????
         </h3>
         <p style="font-family: Sans-Serif; width: 1000px; text-align: left;">
            ${hotel.dining }
         </p>
      </div>
      <div style="display: flex; width: 1200px;
               border-bottom: 1px solid lightgray;">
         <h3 style="font-family: Sans-Serif; width: 200px; text-align: left; line-height: 101px;">
            ?????? ???????????? 
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



<!-- ?????? ?????? -->
<div class="hotel_calendar_modal" style="width: 100%; height: 100%; 
         display: none; position: fixed; top: 0;">
   <!-- ?????? ?????? -->
   <div class="modal_overlay" 
            style="background-color: rgba(0,0,0,0.7);
            width: 100%;
            height: 100%;
            z-index: 5;
            position: absolute;
            top: 0;
            left: 0;"></div>
   
   <!-- ?????? ?????? -->
   <div style="color: black; z-index: 10; width: 800px; height: 150px; background-color: white;
            position: relative; margin: 120px auto; display: flex; padding: 20px 20px;">
         
      <div style="z-index: 5;">
         <form method="POST" action="${cpath }/hotel/hotelSelectOne">
            
            <input type="hidden" name="entrepreneurIdx" value=${entrepreneur.idx }>
            <input type="hidden" name="hotelIdx" value="${hotel.idx }">
            <input type="hidden" name="h_address" value="${searchInfo.getH_address() }">
            <input autocomplete="off" type="text" name="from" id="from" placeholder="CHECKIN"
                  style="margin-left: 10px; width: 200px; height: 50px;"> ~ 
            <input autocomplete="off" type="text" name="to" id="to" placeholder="CHECKOUT" 
                  style="margin-left: 10px; width: 200px; height: 50px;">
            <input type="number" name="people" placeholder="?????????" min="1"
                  style="margin-left: 20px; width: 70px; height: 50px;" required>
            <input type="submit" value="????????????"
               style="color: #fff !important;
               border: none;
                background-color: #5caceb;
                width: 120px;
                font-size: 15px;
                border-radius: 10px;
                padding: 10px 30px;
                margin: 35px 50px;">
          </form>
       </div>
   </div>
</div>

<!-- ????????? ?????? -->
<div class="hotel_slider_modal" style="width: 100%; height: 100%; 
         display: none; position: fixed; top: 0;">
   <!-- ?????? ?????? -->
   <div class="modal_overlay" 
            style="background-color: rgba(0,0,0,0.7);
            width: 100%;
            height: 100%;
            z-index: 5;
            position: absolute;
            top: 0;
            left: 0;"></div>
   
   <!-- ?????? ?????? -->
   <div style="color: black; z-index: 10; width: 1000px; height: 700px; background-color: white;
            position: relative; margin: 120px auto; display: flex;">
      <div>
         <!-- ?????? ?????? -->
         <div class="left_button"
               style="position: absolute; width: 150px; height: 550px; background-color: #f2f2f2;"></div>
         <!-- ????????? -->
         <div class="hotel_modal_img">
            <c:forEach var="img" items="${imgList }">
               <img style="position: absolute; left: 150px; width: 700px; height: 550px; "src="${cpath }/resources/hotelimg/${hotel.main_img}/${img}">
            </c:forEach>
         </div>      
         <!-- ????????? ?????? -->
         <div class= "right_button" 
               style="position: absolute; width: 150px; height: 550px; background-color: #f2f2f2; right: 0;"></div>
      </div>
   </div>
</div>

<!-- ?????? ???????????? -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=408b01640ff9f7e97cf1c396a706c05a&libraries=services"></script>

<!-- ?????? ?????? -->
<div class="hotel_map_modal" style="width: 100%; height: 100%;
                           display: none; position: fixed; top: 0;">
   <!-- ?????? ?????? -->
   <div class="modal_overlay" 
            style="background-color: rgba(0,0,0,0.7);
            width: 100%;
            height: 100%;
            z-index: 5;
            position: absolute;
            top: 0;
            left: 0;"></div>
   
   <!-- ?????? ?????? -->
   <div style="color: black; z-index: 10; width: 700px; height: 800px; background-color: white;
            position: relative; margin: 100px auto; padding: 30px 30px;">
      <h2 style="font-family: Sans-Serif; font-size: 25pt; text-align: left; margin: 0;">????????????</h2>
      <hr>
      <!-- ?????? -->
      <div class="map_modal_img" style="width: 100%; height: 350px; margin-top: 30px;"></div>
      <div style="padding-top: 20px">
         <ul style="list-style: none; padding: 0;">
            <li style="font-family: Sans-Serif; font-size: 16pt; font-weight: bold;">??????</li>
            <li style="font-family: Sans-Serif; font-size: 12pt;">${entrepreneur.shop_name }</li>
            <li style="font-family: Sans-Serif; font-size: 12pt;">${entrepreneur.sales_loc }</li>
         </ul>
         
      </div>
   </div>
</div>

<!-- ?????? ???????????? ?????? ?????? -->
<script type="text/javascript">
   const loadMap = function() {
      hotel_map_modal.style.display = 'block';
      
      var mapContainer = document.querySelector('.map_modal_img'), // ????????? ????????? div 
       mapOption = {
          center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
          level: 3 // ????????? ?????? ??????
       };
    
      // ????????? ???????????????    
      var map = new kakao.maps.Map(mapContainer, mapOption); 
      
      // ??????-?????? ?????? ????????? ???????????????
      var geocoder = new kakao.maps.services.Geocoder();
      
      // ????????? ????????? ???????????????
      geocoder.addressSearch('${entrepreneur.sales_loc}', function(result, status) {
         // ??????????????? ????????? ??????????????? 
         if (status === kakao.maps.services.Status.OK) {
      
             var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
      
                // ??????????????? ?????? ????????? ????????? ???????????????
                var marker = new kakao.maps.Marker({
                 map: map,
                  position: coords
              });
      
              // ?????????????????? ????????? ?????? ????????? ???????????????
              var infowindow = new kakao.maps.InfoWindow({
                  content: '<div style="width:150px;text-align:center;padding:6px 0;font-family: Sans-Serif;">${entrepreneur.shop_eng}</div>'
              });
              infowindow.open(map, marker);
      
              // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
              map.setCenter(coords);
          } 
      });    
   }
</script>


<!-- ?????? script -->
<script>

   const modal_overlay = document.querySelectorAll('.modal_overlay');
    const hotel_map_modal = document.querySelector('.hotel_map_modal');
   
   modal_overlay.forEach(overlay => {      // ?????? ??????????????? ????????? ???????????? ???????????? ????????? ????????? ?????? ??????
      overlay.onclick = function(event) {
         event.target.style.zIndex = -1;

         event.target.parentNode.style.display = 'none';
         event.target.parentNode.style.zIndex = -1;
         console.log('close');
      }
   })
   
   const openModalList = document.querySelectorAll('.openModal');   // ????????? ?????? ???????????? ????????????
   openModalList.forEach(openModal => {                     // ????????? ????????? ???????????? ???
      openModal.onclick = function(event) {
         
         let target = (event.target.nodeName == 'H3') ? event.target.parentNode.parentNode : event.target;
         
         const modal = document.querySelector('.hotel_' + target.classList[1] + '_modal');      // ?????? ??????????????? ????????? ?????????
         
         // ?????? map ???????????? ????????? ?????? ???????????? ?????? ??????
         if(modal.className == 'hotel_map_modal') {      
            loadMap();
         }
         
         modal.style.display = 'block';   // ???????????? ????????? ????????????
         modal.style.zIndex = 15;
         console.log('open');
      }
   });
   
   const rvFormList = document.querySelectorAll('.reservation-form');
   const rvHandler = (event) => {
      event.preventDefault();
      const from = '${searchInfo.from}';
      const to = '${searchInfo.to}';
      const roomIdx = event.target.querySelector('input[name="roomIdx"]').value;
      const price = event.target.querySelector('input[name="price"]').value;
      console.log(roomIdx, price);
      
      if("${login}" == '') {
         alert('???????????? ????????????.');
         location.href='${cpath}/login/login_form';
      }
      else if("${login.userkind}" == 4 || "${login.userkind}" == 5){
         alert('??? ????????? ????????? ???????????????.');
      }   
      else {
         if(from === '' || to === '') {
            alert('????????? ????????? ??????????????????');
            const calendar_modal = document.querySelector('.hotel_calendar_modal');
            calendar_modal.style.display = 'block';
            calendar_modal.style.zIndex = 15;
            
            const roomInput = document.createElement('input');
            roomInput.type = 'hidden';
            roomInput.name = 'roomIdx';
            roomInput.value = roomIdx;
            
            const priceInput = document.createElement('input');
            priceInput.type = 'hidden';
            priceInput.name = 'price';
            priceInput.value = price;
            
            calendar_modal.children[1].querySelector('form').appendChild(roomInput);
            calendar_modal.children[1].querySelector('form').appendChild(priceInput);
            
            return;
         }
         event.target.submit();
      }
   }
   rvFormList.forEach(element => element.onsubmit = rvHandler);

</script>

<!-- filter script -->
<script>
   
   /* ?????? ????????? */
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


<!-- ???????????? -->
<script>
/* ????????? ???????????? ?????? */
/* ????????? ???????????? ?????? */
   var now = new Date();
   document.getElementById('from').value = now.toISOString().substring(0, 10);
   
   var tomorrow = new Date(now.setDate(now.getDate() + 1));   // ??????
   document.getElementById('to').value = tomorrow.toISOString().substring(0, 10);
   
   $(function() {
        //?????????.
        $('#from').datepicker({
            dateFormat: "yy-mm-dd",             // ????????? ??????
            minDate: 0,                         // ?????????????????? ????????????, ( 0 : ?????? ?????? ?????? ?????? ??????)
            maxDate: 30,
            onClose: function( selectedDate ) {    
               let date = new Date(selectedDate);
               date.setDate(date.getDate() + 1);
               // ?????????(from) datepicker??? ?????????
                // ?????????(to)??? ?????????????????? ?????? ??????(minDate)??? ????????? ????????? ???????????? ??????
                $("#to").datepicker( "option","minDate", date.toISOString().substring(0, 10));
            }                
        });

        //?????????
        $('#to').datepicker({
            dateFormat: "yy-mm-dd",
            minDate: 0,
            maxDate: 30,
            onClose: function( selectedDate ) {
                // ?????????(to) datepicker??? ?????????
                // ?????????(from)??? ?????????????????? ?????? ??????(maxDate)??? ????????? ???????????? ?????? 
                $("#from").datepicker( "option", "maxDate", selectedDate);
            }                
        });
        document.querySelector('#ui-datepicker-div').style.zIndex = '20';
    });
</script>

<%@ include file="../layout/footer.jsp" %>