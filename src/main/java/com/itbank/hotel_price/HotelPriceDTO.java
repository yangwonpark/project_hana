package com.itbank.hotel_price;

public class HotelPriceDTO {
	
	private int idx, hotel_info_idx, room_info_idx, age_idx, weekend, price;

	public int getIdx() {
		return idx;
	}

	public int getHotel_info_idx() {
		return hotel_info_idx;
	}

	public int getRoom_info_idx() {
		return room_info_idx;
	}

	public int getAge_idx() {
		return age_idx;
	}

	public int getWeekend() {
		return weekend;
	}

	public int getPrice() {
		return price;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public void setHotel_info_idx(int hotel_info_idx) {
		this.hotel_info_idx = hotel_info_idx;
	}

	public void setRoom_info_idx(int room_info_idx) {
		this.room_info_idx = room_info_idx;
	}

	public void setAge_idx(int age_idx) {
		this.age_idx = age_idx;
	}

	public void setWeekend(int weekend) {
		this.weekend = weekend;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
