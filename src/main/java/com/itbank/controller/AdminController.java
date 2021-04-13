package com.itbank.controller;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.fqacategory.FqaCategoryDTO;
import com.itbank.fqadetail.FqaDetailDTO;
import com.itbank.notice.NoticeDTO;
import com.itbank.noticecategory.NoticeCategoryDTO;
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

// 자주찾는 질문 값 가져오기 (최초 접속)
	@GetMapping("/myMenu/admin_fqa")
	public ModelAndView fqa() {
		ModelAndView mav = new ModelAndView();
		List<FqaCategoryDTO> fqacategorylist = as.getFqaCategory();
		List<FqaDetailDTO> fqadetaillist = as.getFqaDetail();
//		ModelAndView mav = new ModelAndView();
//		int notiindex = as.getSelectNoti(noti);	
//		System.out.println("notiindex : " + notiindex);	
//		dto.setNotice_category_idx(notiindex);
//		int ndto = as.insertNotice(dto);
//		mav.addObject("path", "/myMenu/admin_notice");
//		mav.setViewName("/myMenu/msg");
//		if (ndto == 1) {
//			mav.addObject("msg", "추가 성공");
//		}else {
//			mav.addObject("msg", "추가 실패");
//		} /myMenu/admin_fqa/category1
//		return mav;
		mav.addObject("fqacategorylist", fqacategorylist);
		mav.addObject("fqadetaillist", fqadetaillist);
		return mav;
	}	

// 자주하는 질문 중분류 등록하기
	@PostMapping("/myMenu/admin_fqa/category1")
	public ModelAndView fqa(FqaCategoryDTO dto) {
		return as.insertCategory1(dto);
	}

// 자주하는 질문 소분류 등록하기
	@PostMapping("/myMenu/admin_fqa/category2")
	public ModelAndView fqa2(FqaDetailDTO dto, String kindcheck) {	
		dto.setFga_category_idx(as.getKindIndex(kindcheck));
		return as.insertCategoryDetail(dto);
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
