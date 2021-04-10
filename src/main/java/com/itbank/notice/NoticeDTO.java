package com.itbank.notice;

import java.sql.Date;

public class NoticeDTO {
	private int idx;
	private String title;
	private String content;
	private Date ndate;
	private int notice_category_idx;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getNdate() {
		return ndate;
	}
	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}
	public int getNotice_category_idx() {
		return notice_category_idx;
	}
	public void setNotice_category_idx(int notice_category_idx) {
		this.notice_category_idx = notice_category_idx;
	}
}
