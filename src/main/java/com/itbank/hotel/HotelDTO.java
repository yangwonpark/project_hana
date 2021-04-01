package com.itbank.hotel;

public class HotelDTO {
	
	private int idx, hotel_kind_idx, metro_idx, entrepreneur_idx, default_cancel;
	private String grade, check_in, check_out, floor, room_count, pnum, fax, main_img, 
					notice, room, con_facility, dining, add_facility;
	

	
//	객체속성값을 확인하기 위한 출력 메서드 (오버라이딩)
//	public String toString() {
//		return String.format("%s, %s, %s, %s, %s,"
//				+ " %s, %s, %s, %s, %s,"
//				+ " %s, %s, %s, %s, %s,"
//				+ " %s, %s, %s", 
//				idx, hotel_kind_idx, metro_idx, entrepreneur_idx, default_cancel,
//				grade, check_in, check_out, floor, room_count, pnum, fax, main_img, 
//				notice, room, con_facility, dining, add_facility);
//	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getHotel_kind_idx() {
		return hotel_kind_idx;
	}
	public void setHotel_kind_idx(int hotel_kind_idx) {
		this.hotel_kind_idx = hotel_kind_idx;
	}
	public int getMetro_idx() {
		return metro_idx;
	}
	public void setMetro_idx(int metro_idx) {
		this.metro_idx = metro_idx;
	}
	public int getEntrepreneur_idx() {
		return entrepreneur_idx;
	}
	public void setEntrepreneur_idx(int entrepreneur_idx) {
		this.entrepreneur_idx = entrepreneur_idx;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCheck_in() {
		return check_in;
	}
	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}
	public String getCheck_out() {
		return check_out;
	}
	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getRoom_count() {
		return room_count;
	}
	public void setRoom_count(String room_count) {
		this.room_count = room_count;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getMain_img() {
		return main_img;
	}
	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getCon_facility() {
		return con_facility;
	}
	public void setCon_facility(String con_facility) {
		this.con_facility = con_facility;
	}
	public String getDining() {
		return dining;
	}
	public void setDining(String dining) {
		this.dining = dining;
	}
	public String getAdd_facility() {
		return add_facility;
	}
	public void setAdd_facility(String add_facility) {
		this.add_facility = add_facility;
	}
	public int getDefault_cancel() {
		return default_cancel;
	}
	public void setDefault_cancel(int default_cancel) {
		this.default_cancel = default_cancel;
	}
}
