package com.itbank.payment;

import java.util.Date;

public class PaymentDTO {

	private int	idx;
	private int	reservation_idx;
	private int	status;
	private int	kind;
	private String bank_card;
	private String account;
	private String card_serial;
	private String approv_serial;
	private int	tax_able;
	private int	coupon_yn;
	private int	coupon_idx;
	private String tax_serial;
	private Date pdate;
	
	public int getIdx() {
		return idx;
	}
	public int getReservation_idx() {
		return reservation_idx;
	}
	public int getStatus() {
		return status;
	}
	public int getKind() {
		return kind;
	}
	public String getBank_card() {
		return bank_card;
	}
	public String getAccount() {
		return account;
	}
	public String getCard_serial() {
		return card_serial;
	}
	public String getApprov_serial() {
		return approv_serial;
	}
	public int getTax_able() {
		return tax_able;
	}
	public int getCoupon_yn() {
		return coupon_yn;
	}
	public int getCoupon_idx() {
		return coupon_idx;
	}
	public String getTax_serial() {
		return tax_serial;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public void setReservation_idx(int reservation_idx) {
		this.reservation_idx = reservation_idx;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	public void setBank_card(String bank_card) {
		this.bank_card = bank_card;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public void setCard_serial(String card_serial) {
		this.card_serial = card_serial;
	}
	public void setApprov_serial(String approv_serial) {
		this.approv_serial = approv_serial;
	}
	public void setTax_able(int tax_able) {
		this.tax_able = tax_able;
	}
	public void setCoupon_yn(int coupon_yn) {
		this.coupon_yn = coupon_yn;
	}
	public void setCoupon_idx(int coupon_idx) {
		this.coupon_idx = coupon_idx;
	}
	public void setTax_serial(String tax_serial) {
		this.tax_serial = tax_serial;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

}
