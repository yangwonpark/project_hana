package com.itbank.fqacategory;

import java.util.List;


public interface FqaCategoryDAO {

	int insertCategory1(FqaCategoryDTO dto);

	List<FqaCategoryDTO> selectFqaCategory();

	int selectKindIndex(String kindcheck);

	int getFqaDetail(String category1);


	

}
