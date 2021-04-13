package com.itbank.cart;

import java.sql.Date;

public class CartDTO {
//	idx					번호	N	number	PK					mark_seq.nextval
//	major_category_idx	대분류 번호	N	number		FK				major_category 테이블 참조 (호텔펜션 투어입장권)
//	member_idx			회원 번호	N	number		FK				member_idx 테이블 참조
//	info_idx			객실 / 투어 정보 번호	N	number						
//	start_date			예약 시작일	N	Date						
//	end_date			예약 종료일	N	Date						
//	client				예약 인원	N	varchar2()			300			age 테이블 참조
//	tot_price			총 상품 금액	N	number						자바 단에서 계산해서 저장
	
	private int idx;
	private int major_category_idx;
	private int member_idx;
	private int info_idx;
	private Date start_date;
	private Date end_date;
	private String client;
	private int tot_price;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getMajor_category_idx() {
		return major_category_idx;
	}
	public void setMajor_category_idx(int major_category_idx) {
		this.major_category_idx = major_category_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getInfo_idx() {
		return info_idx;
	}
	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public int getTot_price() {
		return tot_price;
	}
	public void setTot_price(int tot_price) {
		this.tot_price = tot_price;
	}
}
