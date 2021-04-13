package com.itbank.qa;

import java.sql.Date;

public class QaDTO {
//	
//	idx				번호		N	number		PK					qa_seq.nextval
//	member_idx		회원번호	N	number		FK				member 테이블 idx 참조
//	reservation_idx	예약번호	N	number		FK				reservation 테이블 idx 참조
//	alert			알림수단	N	number				check(0 or 1)		< 0 : 휴대폰, 1 : 이메일 >
//	qa_kind_idx	 	문의 유형	N	number						qa_kind 테이블 idx 참조
//	title			문의 제목	N	varchar2()			100			
//	content			문의 내용	N	varchar2()			4000			
//	img				파일첨부	Y	varchar2()			300			MultipartFile을 배열로 생성해서 전송
//	status			답변 상태	N	number						< 0 : 미완료, 1 : 완료 >
//	admin_idx		관리자번호	N	number		FK				member 테이블 idx 참조
//	time			문의 시간	N	Date						
	
	private int idx;
	private int member_idx;
	private int reservation_idx;
	private int alert;
	private int qa_kind_idx;
	private String title;
	private String content;
	private String img;
	private int status;
	private int admin_idx;
	private Date time;
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
	public int getReservation_idx() {
		return reservation_idx;
	}
	public void setReservation_idx(int reservation_idx) {
		this.reservation_idx = reservation_idx;
	}
	public int getAlert() {
		return alert;
	}
	public void setAlert(int alert) {
		this.alert = alert;
	}
	public int getQa_kind_idx() {
		return qa_kind_idx;
	}
	public void setQa_kind_idx(int qa_kind_idx) {
		this.qa_kind_idx = qa_kind_idx;
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getAdmin_idx() {
		return admin_idx;
	}
	public void setAdmin_idx(int admin_idx) {
		this.admin_idx = admin_idx;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
}
