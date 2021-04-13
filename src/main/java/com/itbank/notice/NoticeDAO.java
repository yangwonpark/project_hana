package com.itbank.notice;

import java.util.HashMap;
import java.util.List;

public interface NoticeDAO {
	
	int insertNotice(NoticeDTO dto);
	List<HashMap<String, String>> getSelectEventN();
	List<HashMap<String, String>> getSelectLotteN();
	List<HashMap<String, String>> getSelectNormalN();
	List<HashMap<String, String>> getSelectAllN();
	NoticeDTO getSelectNoticeIndex(int idx);

}
