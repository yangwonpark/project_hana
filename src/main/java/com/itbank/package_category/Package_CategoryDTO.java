package com.itbank.package_category;

public class Package_CategoryDTO {
	
	private int idx, major_category_idx;
	private String name;
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}