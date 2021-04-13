package com.itbank.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.fqa.FqaDTO;
import com.itbank.fqacategory.FqaCategoryDTO;
import com.itbank.fqadetail.FqaDetailDTO;
import com.itbank.notice.NoticeDTO;
import com.itbank.service.AdminService;
import com.itbank.service.ScService;

@Controller
public class ScController {
	@Autowired 	private ScService ss;
	@Autowired 	private AdminService as;
	

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
	
	
	@GetMapping("/manage/sc_notice/{idx}")
	public ModelAndView notice(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView();

		NoticeDTO ndto = ss.getSelectNoticeIndex(idx);
		mav.addObject("nindexdto", ndto);
		mav.setViewName("/manage/sc_noticedetail");
		return mav;
	}
	
	
	@GetMapping("/manage/sc_fqa")
	public ModelAndView fqa(HttpSession session) {	
		ModelAndView mav = new ModelAndView();
		List<FqaCategoryDTO> fqacategorylist = as.getFqaCategory();
		List<FqaDTO> fqaalllist = as.selectAll();

		mav.addObject("fqacategorylist", fqacategorylist);
		mav.addObject("fqaalllist", fqaalllist);


		return mav;
	}
	
	@PostMapping("/manage/sc_fqa")
	public String fqa(HttpSession session, String category1, String category2, String search) {	
		System.out.println("category1 : " + category1);
		System.out.println("category2 : " + category2);
		System.out.println("search : " + search);
			
			if(category1.equals("====선택===") && !search.equals("")) {
				List<FqaDTO> fqasession = as.getOnlySearch(search);
				session.setAttribute("fqasession", fqasession);
			}else {
				if(category1.equals("====선택===") || search.equals("")) {
					List<FqaDTO> fqasession = as.selectAll();
					session.setAttribute("fqasession", fqasession);

				}else {
					if (search.equals("")) {
						List<FqaDTO> fqasession = as.getSearchFqa(category1, category2);
						session.setAttribute("fqasession", fqasession);

					}else {
						if(category1.equals("====선택===")) {
							List<FqaDTO> fqasession = as.getOnlySearch(search);
							session.setAttribute("fqasession", fqasession);
						}else {
			
							List<FqaDTO> fqasession = as.getSearchAllFqa(category1, category2, search);
							session.setAttribute("fqasession", fqasession);						
						}
					}					
				}
			}
			
	
		
		return "redirect:/manage/sc_fqa"; 
	}
	
	@GetMapping(value="/manage/sc_fqa/result", produces="application/json;charset=utf8")
	@ResponseBody
	public List<FqaDTO> fqaResult(String selectvalue, String selectvalue2) {
		
		System.out.println("selectvalue : " + selectvalue);
		System.out.println("selectvalue : " + selectvalue2);
		List<FqaDTO> fqalist = as.getFqaResult(selectvalue, selectvalue2);
		
		return fqalist;
	}
	
	
	
	@GetMapping(value="/manage/sc_fqa/{selectvalue}", produces="application/json;charset=utf8")
	@ResponseBody
	public Map<String, Object> fqa(@PathVariable String selectvalue) {	
		List<FqaDetailDTO> fqaDetaillist = as.getFqaDetailList(selectvalue);	
		List<FqaDTO> fqalist = as.getFqaList(selectvalue);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("fqaDetaillist", fqaDetaillist);
		map.put("fqalist", fqalist);
		
		List<FqaDetailDTO> fdd = (List<FqaDetailDTO>)(map.get("fqaDetaillist"));

		return map;
	}
	
	
	
	@GetMapping("/manage/sc_qa")
	public ModelAndView qa() {	
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
		return mav;
	}
}
