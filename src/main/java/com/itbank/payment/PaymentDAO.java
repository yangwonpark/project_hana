package com.itbank.payment;


public interface PaymentDAO {

	int insertPayment(PaymentDTO dto);

	int getSelectOnePayment();

	PaymentDTO getPayment(int idx);

	int insertTourPayMent(PaymentDTO pdto);

}
