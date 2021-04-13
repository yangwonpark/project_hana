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
	private int fqa_category_idx;
	private int fqa_detail_idx;
	

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
	public int getFqa_category_idx() {
		return fqa_category_idx;
	}
	public void setFqa_category_idx(int fqa_category_idx) {
		this.fqa_category_idx = fqa_category_idx;
	}
	public int getFqa_detail_idx() {
		return fqa_detail_idx;
	}
	public void setFqa_detail_idx(int fqa_detail_idx) {
		this.fqa_detail_idx = fqa_detail_idx;
	}
}
