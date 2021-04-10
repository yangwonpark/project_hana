package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.local.LocalDTO;
import com.itbank.add_category.Add_CategoryDAO;
import com.itbank.add_category.Add_CategoryDTO;
import com.itbank.con_category.Con_CategoryDAO;
import com.itbank.con_category.Con_CategoryDTO;
import com.itbank.entrepreneur.EntrepreneurDAO;
import com.itbank.entrepreneur.EntrepreneurDTO;
import com.itbank.hotel.HotelDAO;
import com.itbank.hotel.HotelDTO;
import com.itbank.local.LocalDAO;
import com.itbank.metro.MetroDTO;
import com.itbank.room.RoomDAO;
import com.itbank.room.RoomDTO;
import com.itbank.room_kind.RoomKindDAO;
import com.itbank.room_kind.RoomKindDTO;
import com.itbank.searchInformation.SearchInformationDTO;
import com.itbank.view_kind.ViewKindDAO;
import com.itbank.view_kind.ViewKindDTO;
import com.itbank.metro.MetroDAO;

@Service
public class HotelService {
	
	@Autowired
	private MetroDAO metroDAO;
	@Autowired
	private LocalDAO localDAO;
	@Autowired
	private Add_CategoryDAO add_categoryDAO;
	@Autowired
	private Con_CategoryDAO con_categoryDAO;
	@Autowired
	private HotelDAO hotelDAO;
	@Autowired
	private EntrepreneurDAO entreprenuerDAO;
	@Autowired
	private RoomKindDAO roomKindDAO;
	@Autowired
	private ViewKindDAO viewKindDAO;
	@Autowired
	private RoomDAO roomDAO;
	
	

	public List<MetroDTO> getMetroList() {
		List<MetroDTO> metroList = metroDAO.getMetroList();
		return metroList;
	}

	public List<LocalDTO> getLocalList() {
		List<LocalDTO> localList = localDAO.getLocalList();
		return localList;
	}

	public List<Add_CategoryDTO> getAdd_CategoryList() {
		List<Add_CategoryDTO> add_categoryList = add_categoryDAO.getAdd_CategoryList();
		return add_categoryList;
	}

	public List<Con_CategoryDTO> getCon_CategoryList() {
		List<Con_CategoryDTO> con_categoryList = con_categoryDAO.getCon_CategoryList();
		return con_categoryList;
	}

	public List<HotelDTO> getHotelList() {
		List<HotelDTO> hotelList = hotelDAO.getHotelList();
		return hotelList;
	}

	public List<EntrepreneurDTO> getEntrepreneurList(SearchInformationDTO dto) {
		String h_add = dto.getH_address();
		
		HashMap<String,String> map = new HashMap<String, String>();		

		String[] arr = h_add.split(" ");
		map.put("metro", arr[0]);
		map.put("local", arr[1]);
		
		List<EntrepreneurDTO> entrepreneurList = entreprenuerDAO.getEntrepreneurList(map);
		return entrepreneurList;
	}

	public EntrepreneurDTO getEntrepreneur(int entrepreneur_idx) {
		EntrepreneurDTO edto = entreprenuerDAO.getEntrepreneur(entrepreneur_idx);
		return edto;
	}

	public HotelDTO getHotel(int hotel_idx) {
		HotelDTO hotel = hotelDAO.getHotel(hotel_idx);
		return hotel;
	}

	public List<EntrepreneurDTO> getEntrepreneurAll() {
		List<EntrepreneurDTO> entrepreneurAll = entreprenuerDAO.getEntrepreneurAll();
		return entrepreneurAll;
	}

	public String getHotelKind(int hotel_kind_idx) {
		String hotelKind = hotelDAO.getHotelKind(hotel_kind_idx);
		return hotelKind;
	}

	public int insertHotel(HotelDTO dto) {
		int num = hotelDAO.insertHotel(dto);
		if(num == 1) {
			return hotelDAO.selectLastIdx();
		}
		return 0;
	}

	public List<RoomKindDTO> getRoomKindList() {
		List<RoomKindDTO> roomKindList = roomKindDAO.getRoomKindList();
		return roomKindList;
	}

	public List<ViewKindDTO> getViewKindList() {
		List<ViewKindDTO> viewKindList = viewKindDAO.getViewKindList();
		return viewKindList;
	}

	public int insertRoom(RoomDTO dto) {
		int num = roomDAO.insertRoom(dto);
		return num;
	}

	public List<RoomDTO> getRoomList(int hotel_idx) {
		List<RoomDTO> roomList = roomDAO.getRoomList(hotel_idx);
		return roomList;
	}

	public RoomDTO getRoom(int roomIdx) {
		RoomDTO room = roomDAO.getRoom(roomIdx);
		return room;
	}

}
