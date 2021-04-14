package com.itbank.tour_price;

import java.util.List;

public interface Tour_PriceDAO {

	Tour_PriceDTO selectOne(int idx);
	
	List<Tour_PriceDTO> getTour_PriceList();

	Tour_PriceDTO selectOne();
	
	Tour_PriceDTO getTour_PriceSelectOne();
	
}