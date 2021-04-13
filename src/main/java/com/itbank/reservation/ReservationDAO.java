package com.itbank.reservation;

import java.util.List;

public interface ReservationDAO {

	List<ReservationDTO> getReservationList();

	ReservationDTO selectOne(int idx);

	ReservationDTO selectOne();
	
	int insertReservation(ReservationDTO dto);

	ReservationDTO getReservationSelectOne(int idx);

	int getReservationIdx();
	
}