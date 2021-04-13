package com.itbank.package_middle;

public class Package_MiddleDTO {
	
	private int idx, package_category_idx;
	private String name;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getPackage_category_idx() {
		return package_category_idx;
	}
	public void setPackage_category_idx(int package_category_idx) {
		this.package_category_idx = package_category_idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}