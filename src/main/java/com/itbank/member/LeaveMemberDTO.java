package com.itbank.member;

import java.sql.Date;

public class LeaveMemberDTO {
	private int idx;
	private int member_idx;
	private int leave_reason_idx;
	private String wish;
	private Date leave_date;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getLeave_reason_idx() {
		return leave_reason_idx;
	}
	public void setLeave_reason_idx(int leave_reason_idx) {
		this.leave_reason_idx = leave_reason_idx;
	}
	public String getWish() {
		return wish;
	}
	public void setWish(String wish) {
		this.wish = wish;
	}
	public Date getLeave_date() {
		return leave_date;
	}
	public void setLeave_date(Date leave_date) {
		this.leave_date = leave_date;
	}
}
