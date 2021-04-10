package com.itbank.noticecategory;

import java.util.List;

public interface NoticeCategoryDAO {

	int insertNoticeCategory(NoticeCategoryDTO dto);

	List<NoticeCategoryDTO> selectNoticeCategoryAll();

	int getSelectNoti(String noti);
	
}
