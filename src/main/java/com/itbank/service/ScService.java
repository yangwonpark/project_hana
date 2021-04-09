package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.notice.NoticeDAO;

@Service
public class ScService {
	
	@Autowired
	private NoticeDAO nd;

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
	
}
