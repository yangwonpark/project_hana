package com.itbank.room;

import java.util.List;

public interface RoomDAO {

	int insertRoom(RoomDTO dto);

	List<RoomDTO> getRoomList(int hotel_idx);

	RoomDTO getRoom(int roomIdx);

}
