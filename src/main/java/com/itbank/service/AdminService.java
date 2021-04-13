package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.adminmember.AdminMemberDAO;
import com.itbank.adminmember.AdminMemberDTO;
import com.itbank.fqa.FqaDAO;
import com.itbank.fqa.FqaDTO;
import com.itbank.fqacategory.FqaCategoryDAO;
import com.itbank.fqacategory.FqaCategoryDTO;
import com.itbank.fqadetail.FqaDetailDAO;
import com.itbank.fqadetail.FqaDetailDTO;
import com.itbank.notice.NoticeDAO;
import com.itbank.notice.NoticeDTO;
import com.itbank.noticecategory.NoticeCategoryDAO;
import com.itbank.noticecategory.NoticeCategoryDTO;
import com.itbank.qakind.QaKindDAO;
import com.itbank.qakind.QaKindDTO;
import com.itbank.team.TeamDAO;
import com.itbank.team.TeamDTO;

@Service
public class AdminService {
	
	@Autowired private AdminMemberDAO amd;
	@Autowired private NoticeCategoryDAO ncd;
	@Autowired private NoticeDAO nd;
	@Autowired private FqaCategoryDAO fc;
	@Autowired private FqaDetailDAO fd;
	@Autowired private FqaDAO fdao;
	@Autowired private QaKindDAO qd;
	
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

	public List<FqaDetailDTO> getFqaDetailList(String p3) {
		return fd.getFqaDetailList(p3);
	}

	public ModelAndView insertFqa(FqaDTO dto) {
		ModelAndView mav = new ModelAndView();
		int fqa = fdao.insertFqa(dto);
		mav.setViewName("/myMenu/msg");
		mav.addObject("path", "/myMenu/admin_fqa");
		if (fqa == 1) {
			mav.addObject("msg", "등록이 정상적으로 되었습니다.");
		}else {
			mav.addObject("msg", "등록이 실패되었습니다.");
		}
		return mav;
	}

	public List<FqaDTO> getFqaList(String selectvalue) {
		
		return fdao.selectSelectValue(selectvalue);
	}

	public List<FqaDTO> getFqaResult(String selectvalue, String selectvalue2) {
		HashMap<String, String> param = new HashMap<String, String>();
		param.put("selectvalue", selectvalue);
		param.put("selectvalue2", selectvalue2);
		return fdao.getFqaResult(param);
	}

	public List<FqaDTO> getSearchFqa(String category1, String category2) {
		
		
		System.out.println(category1 + category2);
		HashMap<String, String> param = new HashMap<String, String>();
		param.put("category1", category1);
		param.put("category2", category2);
		List<FqaDTO> fqasession = fdao.getSearchFqa(param);
//		System.out.println(fdao.getSearchFqa(param).get(0).getTitle());
//		System.out.println(fdao.getSearchFqa(param).get(1).getTitle());
		
		
		return fqasession;
	}

	public List<FqaDTO> getSearchAllFqa(String category1, String category2, String search) {
		System.out.println(category1);
		System.out.println(category2);
		System.out.println(search);
		HashMap<String, String> param = new HashMap<String, String>();
		param.put("category1", category1);
		param.put("category2", category2);
		param.put("search", search);
		List<FqaDTO> fqasession = fdao.getSearchAllFqa(param);
		return fqasession;
	}

	public List<FqaDTO> selectAll() {
		
		return fdao.selectAll();
	}

	public List<FqaDTO> getOnlySearch(String search) {
		
		return fdao.selectOnlySearch(search);
	}

	public int insertQaCategory(QaKindDTO dto) {

		return qd.insertQaCategory(dto);
	}


}
