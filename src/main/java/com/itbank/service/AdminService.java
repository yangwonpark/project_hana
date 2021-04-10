package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.adminmember.AdminMemberDAO;
import com.itbank.adminmember.AdminMemberDTO;
import com.itbank.fqacategory.FqaCategoryDAO;
import com.itbank.fqacategory.FqaCategoryDTO;
import com.itbank.fqadetail.FqaDetailDAO;
import com.itbank.fqadetail.FqaDetailDTO;
import com.itbank.notice.NoticeDAO;
import com.itbank.notice.NoticeDTO;
import com.itbank.noticecategory.NoticeCategoryDAO;
import com.itbank.noticecategory.NoticeCategoryDTO;
import com.itbank.team.TeamDAO;
import com.itbank.team.TeamDTO;

@Service
public class AdminService {
	
	@Autowired private AdminMemberDAO amd;
	@Autowired private NoticeCategoryDAO ncd;
	@Autowired private NoticeDAO nd;
	@Autowired private FqaCategoryDAO fc;
	@Autowired private FqaDetailDAO fd;
	
	public List<HashMap<String, String>> getSelectAll() {	
		return amd.selectAll();
	}

	public List<NoticeCategoryDTO> getNoticeCategoryAll() {
		List<NoticeCategoryDTO> nlist = ncd.selectNoticeCategoryAll();
		return nlist;

	}

	public int insertNoticeCategory(NoticeCategoryDTO dto) {
		
		return ncd.insertNoticeCategory(dto);
	}

	public int insertNotice(NoticeDTO dto) {
		
		return nd.insertNotice(dto);
	}

	public int getSelectNoti(String noti) {
		System.out.println("noti : " + noti);
		if (noti.equals("=== 공지사항 종류 ===")){
			noti = "일반";
		}
		return	ncd.getSelectNoti(noti);
	}

	public ModelAndView insertCategory1(FqaCategoryDTO dto) {
		ModelAndView mav = new ModelAndView();
		int category1 = fc.insertCategory1(dto);
		mav.setViewName("/myMenu/msg");
		if(category1 == 1) {
			mav.addObject("msg", "등록이 되었습니다.");
		}else {
			mav.addObject("msg", "등록에 실패되었습니다. ");
		}
		mav.addObject("path", "/myMenu/admin_fqa");
		return mav;
	}

	public List<FqaCategoryDTO> getFqaCategory() {
		
		return fc.selectFqaCategory();
	}
	public List<FqaDetailDTO> getFqaDetail() {
		
		return fd.selectFqaDetail();
	}

	public int getKindIndex(String kindcheck) {
		
		return fc.selectKindIndex(kindcheck);
	}

	public ModelAndView insertCategoryDetail(FqaDetailDTO dto) {
		ModelAndView mav = new ModelAndView();
		int category2 = fd.insertCategoryDetail(dto);
		mav.setViewName("/myMenu/msg");
		if(category2 == 1) {
			mav.addObject("msg", "등록이 되었습니다.");
		}else {
			mav.addObject("msg", "등록에 실패되었습니다. ");
		}
		mav.addObject("path", "/myMenu/admin_fqa");	
		return mav;
	}


}
