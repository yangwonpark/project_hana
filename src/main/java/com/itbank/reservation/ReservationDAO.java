package com.itbank.reservation;

public interface ReservationDAO {

	int insertReservation(ReservationDTO dto);

	ReservationDTO getReservationSelectOne(int idx);

	int getReservationIdx();

}
