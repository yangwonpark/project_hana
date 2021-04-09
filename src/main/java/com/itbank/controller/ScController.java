package com.itbank.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.ScService;

@Controller
public class ScController {
	@Autowired
	private ScService ss;
	

	@GetMapping("/manage/sc_notice")
	public ModelAndView notice() {	
		ModelAndView mav = new ModelAndView();
		
		List<HashMap<String, String>> allN = ss.getSelectAllN();
		List<HashMap<String, String>> normalN = ss.getSelectNormalN();
		List<HashMap<String, String>> eventN = ss.getSelectEventN();
		List<HashMap<String, String>> lotteN = ss.getSelectLotteN();
		mav.setViewName("/manage/sc_notice");
		mav.addObject("allN", allN);
		mav.addObject("normalN", normalN);
		mav.addObject("eventN", eventN);
		mav.addObject("lotteN", lotteN);
		return mav;
	}
	
	@GetMapping("/manage/sc_fqa")
	public ModelAndView fqa() {	
		ModelAndView mav = new ModelAndView();
		
//		List<HashMap<String, String>> allN = ss.getSelectAllN();
//		List<HashMap<String, String>> normalN = ss.getSelectNormalN();
//		List<HashMap<String, String>> eventN = ss.getSelectEventN();
//		List<HashMap<String, String>> lotteN = ss.getSelectLotteN();
//		mav.setViewName("/manage/sc_notice");
//		mav.addObject("allN", allN);
//		mav.addObject("normalN", normalN);
//		mav.addObject("eventN", eventN);
//		mav.addObject("lotteN", lotteN);
		return null;
	}
}
