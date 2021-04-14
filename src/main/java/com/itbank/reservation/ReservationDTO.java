package com.itbank.reservation;

import java.util.Date;

public class ReservationDTO {

	private int idx, major_category_idx, member_idx, info_idx, tot_price, status;
	private String client, reserv_serial;
	//private Date start_date, end_date;
	private String start_date, end_date;
	
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
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
	public int getTot_price() {
		return tot_price;
	}
	public void setTot_price(int tot_price) {
		this.tot_price = tot_price;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public String getReserv_serial() {
		return reserv_serial;
	}
	public void setReserv_serial(String reserv_serial) {
		this.reserv_serial = reserv_serial;
	}

}