package com.itbank.fqadetail;

import java.util.List;

public interface FqaDetailDAO {
	
	int insertCategoryDetail(FqaDetailDTO dto);
	List<FqaDetailDTO> selectFqaDetail();
	List<FqaDetailDTO> getFqaDetailList(String p3);

}
