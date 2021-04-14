package com.itbank.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;


import com.itbank.entrepreneur.EntrepreneurDTO;
import com.itbank.local.LocalDTO;
import com.itbank.metro.MetroDTO;
import com.itbank.package_detail.Package_DetailDTO;
import com.itbank.package_middle.Package_MiddleDTO;
import com.itbank.payment.PaymentDTO;
import com.itbank.service.TourService;
import com.itbank.tour_item.Tour_ItemDTO;
import com.itbank.tour_option.Tour_OptionDTO;
import com.itbank.tour_price.Tour_PriceDTO;

@Controller
public class TourController {
	
	@Autowired
	private TourService ts;
	
	@GetMapping("tour/tourView")
	public ModelAndView tourView() {
		ModelAndView mav = new ModelAndView("tour/tourView");
		
		List<Tour_ItemDTO> tour_itemList = ts.getTour_ItemList();
		List<EntrepreneurDTO> entrepreneurAll = ts.getEntrepreneurAll(); 
		
		mav.addObject("tour_itemList", tour_itemList);
		mav.addObject("entrepreneurAll", entrepreneurAll);
		return mav;
	}
	
	@GetMapping("/tour/tour_gangwon/{page}")
	public ModelAndView tour_gangwon(@PathVariable int page, String type, String word) {
		ModelAndView mav = new ModelAndView("/tour/tour_gangwonList");
		HashMap<String, Object> map = ts.getTour_ItemList(page, type, word);
		List<Package_MiddleDTO> pmdto = ts.getPackage_Middle();
		List<Package_DetailDTO> pddto = ts.getPackage_Detail();
		mav.addObject("map", map);
		mav.addObject("pmdto", pmdto);
		mav.addObject("pddto", pddto);
		return mav;
	}
	
	@GetMapping("/tour/tour_jeju/{page}")
	public ModelAndView tour_jeju(@PathVariable int page, String type, String word) {
		ModelAndView mav = new ModelAndView("/tour/tour_jejuList");
		HashMap<String, Object> map = ts.getTour_ItemList(page, type, word);
		List<Package_MiddleDTO> pmdto = ts.getPackage_Middle();
		List<Package_DetailDTO> pddto = ts.getPackage_Detail();
		mav.addObject("map", map);
		mav.addObject("pmdto", pmdto);
		mav.addObject("pddto", pddto);
		return mav;
	}
	
	@GetMapping("/tour/tour_seoul/{page}")
	public ModelAndView tour_seoul(@PathVariable int page, String type, String word) {
		ModelAndView mav = new ModelAndView("/tour/tour_seoulList");
		HashMap<String, Object> map = ts.getTour_ItemList(page, type, word);
		List<Package_MiddleDTO> pmdto = ts.getPackage_Middle();
		List<Package_DetailDTO> pddto = ts.getPackage_Detail();
		mav.addObject("map", map);
		mav.addObject("pmdto", pmdto);
		mav.addObject("pddto", pddto);
		return mav;
	}
	
	@GetMapping("/tour/tour_gyeonggi/{page}")
	public ModelAndView tour_gyeonggi(@PathVariable int page, String type, String word) {
		ModelAndView mav = new ModelAndView("/tour/tour_gyeonggiList");
		HashMap<String, Object> map = ts.getTour_ItemList(page, type, word);
		List<Package_MiddleDTO> pmdto = ts.getPackage_Middle();
		List<Package_DetailDTO> pddto = ts.getPackage_Detail();
		mav.addObject("map", map);
		mav.addObject("pmdto", pmdto);
		mav.addObject("pddto", pddto);
		return mav;
	}
	
	@GetMapping("/tour/tour_gyeongsang/{page}")
	public ModelAndView tour_gyeongsang(@PathVariable int page, String type, String word) {
		ModelAndView mav = new ModelAndView("/tour/tour_gyeongsangList");
		HashMap<String, Object> map = ts.getTour_ItemList(page, type, word);
		List<Package_MiddleDTO> pmdto = ts.getPackage_Middle();
		List<Package_DetailDTO> pddto = ts.getPackage_Detail();
		mav.addObject("map", map);
		mav.addObject("pmdto", pmdto);
		mav.addObject("pddto", pddto);
		return mav;
	}
	
	@GetMapping("/tour/tour_jeolla/{page}")
	public ModelAndView tour_jeolla(@PathVariable int page, String type, String word) {
		ModelAndView mav = new ModelAndView("/tour/tour_jeollaList");
		HashMap<String, Object> map = ts.getTour_ItemList(page, type, word);
		List<Package_MiddleDTO> pmdto = ts.getPackage_Middle();
		List<Package_DetailDTO> pddto = ts.getPackage_Detail();
		mav.addObject("map", map);
		mav.addObject("pmdto", pmdto);
		mav.addObject("pddto", pddto);
		return mav;
	}
	
	@GetMapping("/tour/tour_chungcheong/{page}")
	public ModelAndView tour_chungcheong(@PathVariable int page, String type, String word) {
		ModelAndView mav = new ModelAndView("/tour/tour_chungcheongList");
		HashMap<String, Object> map = ts.getTour_ItemList(page, type, word);
		List<Package_MiddleDTO> pmdto = ts.getPackage_Middle();
		List<Package_DetailDTO> pddto = ts.getPackage_Detail();
		mav.addObject("map", map);
		mav.addObject("pmdto", pmdto);
		mav.addObject("pddto", pddto);
		return mav;
	}
	
	@GetMapping("/tour/tourGoods/{idx}")
	public ModelAndView tourGoods(@PathVariable int idx) {
		
		ModelAndView mav = new ModelAndView("/tour/tourGoods");
		EntrepreneurDTO entrepreneur = ts.getEntrepreneur(idx);
		Tour_ItemDTO tour_item = ts.getTour_Item(idx);
		Tour_PriceDTO tour_price = ts.getTour_Price(idx);
		Tour_OptionDTO tour_option = ts.getTour_Option(1);
		
		mav.addObject("entrepreneur", entrepreneur);
		mav.addObject("tour_item", tour_item);
		mav.addObject("tour_price", tour_price);
		mav.addObject("tour_option", tour_option);
		return mav;
	}
	
	@PostMapping("/tour/tourGoods/{idx}")
	public ModelAndView tourGoods() {
		
		ModelAndView mav = new ModelAndView("tour/tourGoods");
//		EntrepreneurDTO entrepreneurdto = ts.getEntrepreneur();
//		Tour_ItemDTO tour_itemdto = ts.getTour_Item();
//		Tour_PriceDTO tour_pricedto = ts.getTour_Price();
//		Tour_OptionDTO tour_optiondto = ts.getTour_Option();
//		
//		mav.addObject("entrepreneurdto", entrepreneurdto);
//		mav.addObject("tour_itemdto", tour_itemdto);
//		mav.addObject("tour_pricedto", tour_pricedto);
//		mav.addObject("tour_optiondto", tour_optiondto);
		List<MetroDTO> metroList = ts.getMetroList();
		List<LocalDTO> localList = ts.getLocalList();
		List<EntrepreneurDTO> entrepreneurAll = ts.getEntrepreneurAll();
		List<Tour_ItemDTO> tour_itemList = ts.getTour_ItemList();
		List<Tour_PriceDTO> tour_priceList = ts.getTour_PriceList();
		List<Tour_OptionDTO> tour_optionList = ts.getTour_OptionList();
		
//		EntrepreneurDTO entrepreneur = ts.getEntrepreneur(entrepreneur_idx);
//		Tour_ItemDTO tour_item = ts.getTour_Item(tour_item_idx);
//		Tour_PriceDTO tour_price = ts.getTour_Price(tour_price_idx);
		
		mav.addObject("metroList", metroList);
		mav.addObject("localList", localList);
		mav.addObject("entrepreneurAll", entrepreneurAll);
		mav.addObject("tour_itemList", tour_itemList);
		mav.addObject("tour_priceList", tour_priceList);
		mav.addObject("tour_optionList", tour_optionList);
		return mav;
	}
	
	@GetMapping("tour/tourInput")
	public String tourInput(HttpSession session) {
		return session.getAttribute("login") == null ? "redirect:/login/login_form" : "/tour/tourInput";
	}
	
	@PostMapping("tour/tourInput")
	public String tourInput(Tour_ItemDTO user) {
		int idx = ts.writeTour_Item(user);
		return idx != 0 ? "redirect:/tour/tourGoods/" + idx : "";
	}
	
	@GetMapping("tour/entrepreneur_detail")
	public ModelAndView entrepreneur_detail() {		
		ModelAndView mav = new ModelAndView("tour/entrepreneur_detail");
		List<EntrepreneurDTO> entrepreneurAll = ts.getEntrepreneurAll();
		mav.addObject("entrepreneurAll", entrepreneurAll);
		return mav;
	}
	
	@PostMapping("/tour_payment")
	public ModelAndView tourPayment(PaymentDTO pdto ) {
		ModelAndView mav = new ModelAndView();
		int pay = ts.insertTourPayment(pdto);
		mav.setViewName("/myMenu/msg");
		mav.addObject("path", "/index");
		if(pay == 1) {
			mav.addObject("msg", "결제가 성공적으로 완료되었습니다");
		}else {
			mav.addObject("msg", "결제 실패");
		}
		return mav;
	}

}