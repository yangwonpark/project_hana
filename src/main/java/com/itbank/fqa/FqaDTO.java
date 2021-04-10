package com.itbank.fqa;

public class FqaDTO {
//	idx	번호	N	number
//	title	문의 제목	N	varchar2()
//	content	문의 내용	N	varchar2()
//	fga_categroy_idx	카테고리 번호	N	number
//	fga_detail_idx	상세 카테고리 번호	N	number
	
	private int idx;
	private String title;
	private String content;
	private int fga_categroy_idx;
	private int fga_detail_idx;
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
	public int getFga_categroy_idx() {
		return fga_categroy_idx;
	}
	public void setFga_categroy_idx(int fga_categroy_idx) {
		this.fga_categroy_idx = fga_categroy_idx;
	}
	public int getFga_detail_idx() {
		return fga_detail_idx;
	}
	public void setFga_detail_idx(int fga_detail_idx) {
		this.fga_detail_idx = fga_detail_idx;
	}
}
