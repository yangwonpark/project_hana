package com.itbank.hotel_price;

import java.util.List;

public interface HotelPriceDAO {

	List<HotelPriceDTO> getHotelPriceList();

	List<HotelPriceDTO> getPriceList(int hotel_idx);

	int getHotelPriceMin(int hotel_idx);


}
