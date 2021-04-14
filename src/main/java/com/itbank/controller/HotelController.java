package com.itbank.controller;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.add_category.Add_CategoryDTO;
import com.itbank.con_category.Con_CategoryDTO;
import com.itbank.entrepreneur.EntrepreneurDTO;
import com.itbank.hotel.HotelDTO;
import com.itbank.hotel_price.HotelPriceDTO;
import com.itbank.local.LocalDTO;
import com.itbank.metro.MetroDTO;
import com.itbank.payment.PaymentDTO;
import com.itbank.reservation.ReservationDTO;
import com.itbank.room.RoomDTO;
import com.itbank.room_kind.RoomKindDTO;
import com.itbank.searchInformation.SearchInformationDTO;
import com.itbank.service.HotelService;
import com.itbank.view_kind.ViewKindDTO;

@Controller
public class HotelController {

	@Autowired
	private HotelService hs;

	// 호텔예약으로 이동
	@GetMapping("/hotel/hotelView")
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("hotel/hotelView");

		List<MetroDTO> metroList = hs.getMetroList();
		List<LocalDTO> localList = hs.getLocalList();
		List<HotelDTO> hotelList = hs.getHotelList();
		List<EntrepreneurDTO> entrepreneurAll = hs.getEntrepreneurAll();
		List<HotelPriceDTO> hotelPriceList = hs.getHotelPriceList();
		
		mav.addObject("hotelPriceList", hotelPriceList);
		mav.addObject("hotelList", hotelList);
		mav.addObject("metroList", metroList);
		mav.addObject("localList", localList);
		mav.addObject("entrepreneurAll", entrepreneurAll);
		mav.addObject("metroListSize", metroList.size());
		return mav;
	}

	// 조건에 맞는 숙소 보여주는 페이지로 이동
	@RequestMapping(value = { "/hotel/hotelView", "/hotel/hotelSearch" }, method = RequestMethod.POST)
	public ModelAndView hotelSearch(SearchInformationDTO dto) {

		ModelAndView mav = new ModelAndView("/hotel/hotelSearch");

		List<MetroDTO> metroList = hs.getMetroList();
		List<LocalDTO> localList = hs.getLocalList();
		List<HotelDTO> hotelList = hs.getHotelList();
		List<Add_CategoryDTO> add_categoryList = hs.getAdd_CategoryList();
		List<Con_CategoryDTO> con_categoryList = hs.getCon_CategoryList();
		List<EntrepreneurDTO> entrepreneurList = hs.getEntrepreneurList(dto);
		List<HotelPriceDTO> hotelPriceList = hs.getHotelPriceList();
		
		mav.addObject("hotelPriceList", hotelPriceList);
		mav.addObject("searchInfo", dto);
		mav.addObject("metroList", metroList);
		mav.addObject("localList", localList);
		mav.addObject("hotelList", hotelList);
		mav.addObject("metroListSize", metroList.size());
		mav.addObject("add_categoryList", add_categoryList);
		mav.addObject("con_categoryList", con_categoryList);
		mav.addObject("entrepreneurList", entrepreneurList);
		return mav;
	}

	@GetMapping("/hotel/hotelSelectOne")
	public ModelAndView hotelSelectOne(int entrepreneur_idx, int hotel_idx, SearchInformationDTO dto,
			HttpServletRequest request) throws MalformedURLException {

		String dirPath = request.getSession().getServletContext().getResource("/resources/hotelimg").getPath();
		String[] list = null;

		ModelAndView mav = new ModelAndView("/hotel/hotelSelectOne");
		List<RoomDTO> roomList = hs.getRoomList(hotel_idx);
		List<ViewKindDTO> viewKindList = hs.getViewKindList();
		HotelDTO hotel = hs.getHotel(hotel_idx);
		
		List<HotelPriceDTO> hotelPriceList = hs.getHotelPriceList(hotel_idx);
		int hotelPriceMin = hs.getHotelPriceMin(hotel_idx);

		File loadFolder = new File(dirPath + "/" + hotel.getMain_img());
		if (loadFolder.exists() && loadFolder.isDirectory()) {
			list = loadFolder.list();
		}

		EntrepreneurDTO entrepreneur = hs.getEntrepreneur(entrepreneur_idx);
		String hotelKind = hs.getHotelKind(hotel.getHotel_kind_idx());

		String[] add_facilityArr = hotel.getAdd_facility().split(",");
		
		mav.addObject("viewKindList", viewKindList);
		mav.addObject("roomList", roomList);
		mav.addObject("imgList", list);
		mav.addObject("add_facilityArr", add_facilityArr);
		mav.addObject("hotelKind", hotelKind);
		mav.addObject("entrepreneur", entrepreneur);
		mav.addObject("hotel", hotel);
		mav.addObject("searchInfo", dto);
		mav.addObject("hotelPriceList", hotelPriceList);
		mav.addObject("hotelPriceMin", hotelPriceMin);
		return mav;
	}

	@PostMapping("/hotel/hotelSelectOne") 
	public ModelAndView reservation(int entrepreneurIdx, int hotelIdx, int roomIdx, int price, SearchInformationDTO dto ) {
		ModelAndView mav = new ModelAndView("/payment/reservation"); 
		
		EntrepreneurDTO entrepreneur = hs.getEntrepreneur(entrepreneurIdx);
		HotelDTO hotel = hs.getHotel(hotelIdx);
		RoomDTO room = hs.getRoom(roomIdx);
		
		mav.addObject("entrepreneur", entrepreneur);
		mav.addObject("hotel", hotel);
		mav.addObject("room", room);
		mav.addObject("searchInfo", dto);
		mav.addObject("price", price);
		
		return mav; 
	}
	
	
	@PostMapping("/payment/reservation")
	public ModelAndView payment(ReservationDTO dto) {
		String viewName = null;
		int result = hs.insertReservation(dto);
		
		int idx = hs.getReservationSelectOne();
		
		if(result == 1) {
			viewName="redirect:/payment/payment/" + idx;
		}
		else {
			viewName="redirect:/payment/reservation";
		}
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("reservation", dto);
		return mav;
	}
	
	@GetMapping("/payment/payment/{idx}")
	@ResponseBody
	public ModelAndView payment(@PathVariable int idx) {
		ReservationDTO reservation = hs.getReservationSelectOne(idx); 
		
		ModelAndView mav = new ModelAndView("/payment/payment");
		mav.addObject("reservation", reservation);
		return mav;
	}
	
	@PostMapping("/payment/payment/{idx}")
	public ModelAndView result(PaymentDTO dto) {
		System.out.println(dto.getKind());
		int result = hs.insertPayment(dto);
		String viewName = null;
		String msg = null;
		
		int idx = hs.getSelectOnePayment();
		System.out.println(idx);
		if(result == 1) {
			msg = "예약완료";
			viewName="redirect:/payment/result/" + idx;
		}
		else {
			msg = "예약실패";
			viewName="redirect:/payment/reservation";
		}
		
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("msg", msg);	
		return mav;
	}
	
	@GetMapping("/payment/result/{idx}")
	@ResponseBody
	public ModelAndView result(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("/payment/result");
		PaymentDTO dto = hs.getPayment(idx);
		mav.addObject("payment", dto);
		return mav;
	}
	
	
	@GetMapping("/hotel/hotelInsert")
	public ModelAndView hotelInsert() {
		ModelAndView mav = new ModelAndView("/hotel/hotelInsert");
		List<Add_CategoryDTO> addCategoryList = hs.getAdd_CategoryList();
		List<MetroDTO> metroList = hs.getMetroList();
		
		mav.addObject("addCategoryList", addCategoryList);
		mav.addObject("metroList", metroList);
		return mav;
	}

	@PostMapping("/hotel/hotelInsert")
	public ModelAndView hotelInsert(HotelDTO dto, HttpServletRequest request)
			throws IllegalStateException, IOException {

		String dirPath = request.getSession().getServletContext().getResource("/resources/hotelimg").getPath();
		String viewName;
		int idx = hs.insertHotel(dto);

		if (idx != 0) {
			viewName = "redirect:/hotel/roomInsert/" + idx;

			System.out.println(dirPath);
			File dir = new File(dirPath + "/" + dto.getMain_img());
			System.out.println("savePoint : " + dir.exists());
			System.out.println();

			if (dir.exists() == false) {
				dir.mkdir();
			}

			for (MultipartFile f : dto.getFolder()) {
				File dest = new File(dir, f.getOriginalFilename());
				f.transferTo(dest);
			}

		} else {
			viewName = "redirect:/hotel/hotelInsert";
		}

		ModelAndView mav = new ModelAndView(viewName);

		return mav;
	}

	@GetMapping("/hotel/roomInsert/{idx}")
	@ResponseBody
	public ModelAndView roomInsert(@PathVariable int idx) {
		HotelDTO hotel = hs.getHotel(idx);
		List<RoomKindDTO> roomKindList = hs.getRoomKindList();
		System.out.println(roomKindList);

		List<ViewKindDTO> viewKindList = hs.getViewKindList();

		ModelAndView mav = new ModelAndView("/hotel/roomInsert");

		mav.addObject("hotel", hotel);
		mav.addObject("roomKindList", roomKindList);
		mav.addObject("viewKindList", viewKindList);
		return mav;
	}

	@PostMapping("/hotel/roomInsert/")
	public ModelAndView roomInsert(RoomDTO dto, int hotelIdx) {
		int num = hs.insertRoom(dto);
		int result;
		String viewName=null;
		String resultMsg=null;
	
		if (num == 1) {
			resultMsg = "호텔등록완료";
			viewName = "redirect:/myMenu/myMenu_main";
			
		} else {
			result = hs.deleteHotel(hotelIdx);
			if(result == 1) {
				resultMsg = "호텔등록실패";
				viewName = "redirect:/hotel/hotelInsert";
			}
		}
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("resultMsg", resultMsg);

		return mav;
	}

}