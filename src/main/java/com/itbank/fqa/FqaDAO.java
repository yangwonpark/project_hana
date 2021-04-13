package com.itbank.fqa;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.servlet.ModelAndView;

public interface FqaDAO {

	int insertFqa(FqaDTO dto);

	List<FqaDTO> selectSelectValue(String selectvalue);

	List<FqaDTO> getFqaResult(HashMap<String, String> param);

	List<FqaDTO> getSearchFqa(HashMap<String, String> param);

	List<FqaDTO> getSearchAllFqa(HashMap<String, String> param);

	List<FqaDTO> selectAll();

	List<FqaDTO> selectOnlySearch(String search);

}
