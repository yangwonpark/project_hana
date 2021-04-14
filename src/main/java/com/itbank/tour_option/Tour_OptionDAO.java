package com.itbank.tour_option;

import java.util.List;

public interface Tour_OptionDAO {

	List<Tour_OptionDTO> getTour_OptionList();

	Tour_OptionDTO selectOne(int one);

	//Tour_OptionDTO selectOne();
	
	Tour_OptionDTO getTour_OptionSelectOne();

}