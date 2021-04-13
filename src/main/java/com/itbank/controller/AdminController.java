package com.itbank.controller;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.itbank.fqa.FqaDTO;
import com.itbank.fqacategory.FqaCategoryDTO;
import com.itbank.fqadetail.FqaDetailDTO;
import com.itbank.notice.NoticeDTO;
import com.itbank.noticecategory.NoticeCategoryDTO;
import com.itbank.qakind.QaKindDTO;
import com.itbank.reason.ReasonDTO;
import com.itbank.service.AdminService;

@Controller
public class AdminController {

	@Autowired private AdminService as;
	
// 관리자 목록	
	@GetMapping("/myMenu/admin_adminlist")
	public ModelAndView adminList() {
		List<HashMap<String, String>> list = as.getSelectAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("/myMenu/admin_adminlist");
		return mav; 
	}

// 공지사항 불러오기
	@GetMapping("/myMenu/admin_notice")
	public ModelAndView notice() {
		List<NoticeCategoryDTO> notice = as.getNoticeCategoryAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("notice", notice);
		return mav;
	}

// 공지사항 카테고리 등록
	@PostMapping("/myMenu/admin_notice")
	public ModelAndView noticeCategory(NoticeCategoryDTO dto) {
		ModelAndView mav = new ModelAndView();
		int ndto = as.insertNoticeCategory(dto);
		mav.addObject("path", "/myMenu/admin_notice");
		mav.setViewName("/myMenu/msg");
		if (ndto == 1) {
			mav.addObject("msg", "추가 성공");
		}else {
			mav.addObject("msg", "추가 실패");
		}
		return mav;
	}

// 공지사항 등록
	@PostMapping("/myMenu/admin_notice/reg")
	public ModelAndView notice(NoticeDTO dto, String noti) {
		ModelAndView mav = new ModelAndView();
		int notiindex = as.getSelectNoti(noti);	
		System.out.println("notiindex : " + notiindex);	
		dto.setNotice_category_idx(notiindex);
		int ndto = as.insertNotice(dto);
		mav.addObject("path", "/myMenu/admin_notice");
		mav.setViewName("/myMenu/msg");
		if (ndto == 1) {
			mav.addObject("msg", "추가 성공");
		}else {
			mav.addObject("msg", "추가 실패");
		}
		return mav;
	}
	
// 1:1문의하기 최초 접속
	@GetMapping("/myMenu/admin_qaCategory")
	public ModelAndView qaCategory() {
		//List<NoticeCategoryDTO> notice = as.getNoticeCategoryAll();
		ModelAndView mav = new ModelAndView();
		//mav.addObject("notice", notice);
		return mav;
	}

	
	
// 1:1문의내역 카테고리 등록
	@PostMapping("/myMenu/admin_qaCategory")
	public ModelAndView qaCategory(QaKindDTO dto) {
		ModelAndView mav = new ModelAndView();
		int ndto = as.insertQaCategory(dto);
		mav.addObject("path", "/myMenu/admin_qaCategory");
		mav.setViewName("/myMenu/msg");
		if (ndto == 1) {
			mav.addObject("msg", "추가 성공");
		}else {
			mav.addObject("msg", "추가 실패");
		}
		return mav;
	}
 	

// 자주찾는 질문 값 가져오기 (최초 접속)
	@GetMapping("/myMenu/admin_fqa")
	public ModelAndView fqa() {
		ModelAndView mav = new ModelAndView();
		List<FqaCategoryDTO> fqacategorylist = as.getFqaCategory();
//		List<FqaDetailDTO> fqadetaillist = as.getFqaDetail();
		mav.addObject("fqacategorylist", fqacategorylist);
//		mav.addObject("fqadetaillist", fqadetaillist);
		return mav;
	}	

	@PostMapping("/myMenu/admin_fqa")
	public ModelAndView fqa(FqaDTO dto) {
		ModelAndView mav = new ModelAndView();
		System.out.println("dto.getidx : " + dto.getIdx());
		System.out.println("dto.getTitle : " + dto.getTitle());
		System.out.println("dto.getContent : " + dto.getContent());
		System.out.println("dto.getFqa_category_idx : " + dto.getFqa_category_idx());
		System.out.println("dto.getFqa_detail_idx : " + dto.getFqa_detail_idx());
		return as.insertFqa(dto);
	}
	
	
	
// 자주하는 질문 중분류 등록하기
	@PostMapping("/myMenu/admin_fqa/category1")
	public ModelAndView fqa(FqaCategoryDTO dto) {
		return as.insertCategory1(dto);
	}

// 자주하는 질문 소분류 등록하기
	@PostMapping("/myMenu/admin_fqa/category2")
	public ModelAndView fqa2(FqaDetailDTO dto, String kindcheck) {	
		dto.setFqa_category_idx(as.getKindIndex(kindcheck));
		return as.insertCategoryDetail(dto);
	}	

// 자주 찾는 질문 중분류에 해당하는 소분류 불러오기 
	@GetMapping(value="/so/{p3}", produces="application/json;charset=utf8")
	@ResponseBody
	public List<FqaDetailDTO> getFqaDetailList(@PathVariable String p3) throws JsonProcessingException {
		List<FqaDetailDTO> fqaDetaillist = as.getFqaDetailList(p3);
		return fqaDetaillist;
	}

// 전체 예외사항 필터링
	@ExceptionHandler(SQLIntegrityConstraintViolationException.class)
	public ModelAndView loginFail(SQLIntegrityConstraintViolationException e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "예외 사항 발생");
		mav.addObject("path", "/myMenu/admin_notice");
		mav.setViewName("/myMenu/msg");	
		return mav;
	}
}
