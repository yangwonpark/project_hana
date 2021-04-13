package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.fqacategory.FqaCategoryDAO;
import com.itbank.fqacategory.FqaCategoryDTO;
import com.itbank.fqadetail.FqaDetailDAO;
import com.itbank.fqadetail.FqaDetailDTO;
import com.itbank.notice.NoticeDAO;
import com.itbank.notice.NoticeDTO;

@Service
public class ScService {
	
	@Autowired private NoticeDAO nd;
	@Autowired private FqaDetailDAO fdd;
	@Autowired private FqaCategoryDAO fcd;
	

	public List<HashMap<String, String>> getSelectNormalN() {
		
		return nd.getSelectNormalN();
	}

	public List<HashMap<String, String>> getSelectEventN() {
		
		return nd.getSelectEventN();
	}

	public List<HashMap<String, String>> getSelectLotteN() {
		
		return nd.getSelectLotteN();
	}

	public List<HashMap<String, String>> getSelectAllN() {
		
		return nd.getSelectAllN();
	}

	public NoticeDTO getSelectNoticeIndex(int idx) {
		
		return nd.getSelectNoticeIndex(idx) ;
	}




}
