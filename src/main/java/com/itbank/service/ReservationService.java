package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.entrepreneur.EntrepreneurDAO;
import com.itbank.entrepreneur.EntrepreneurDTO;
import com.itbank.major_category.Major_CategoryDAO;
import com.itbank.major_category.Major_CategoryDTO;
import com.itbank.reservation.ReservationDAO;
import com.itbank.reservation.ReservationDTO;
//import com.itbank.tour_item.Tour_ItemDAO;
//import com.itbank.tour_item.Tour_ItemDTO;
import com.itbank.tour_option.Tour_OptionDAO;
import com.itbank.tour_option.Tour_OptionDTO;
import com.itbank.tour_price.Tour_PriceDAO;
import com.itbank.tour_price.Tour_PriceDTO;

@Service
public class ReservationService {
	
	@Autowired
	private Major_CategoryDAO major_categoryDAO;
	@Autowired
	private EntrepreneurDAO entrepreneurDAO;
	@Autowired
	private Tour_OptionDAO tour_optionDAO;
	@Autowired
	private Tour_PriceDAO tour_priceDAO;
	@Autowired
	private ReservationDAO reservationDAO;
	
	public List<Major_CategoryDTO> getMajor_CategoryList() {
		List<Major_CategoryDTO> major_categoryList = major_categoryDAO.getMajor_CategoryList();
		return major_categoryList;
	}

	public List<EntrepreneurDTO> getEntrepreneurAll() {
		return entrepreneurDAO.getEntrepreneurAll();
	}

	public List<Tour_OptionDTO> getTour_OptionList() {
		List<Tour_OptionDTO> tour_optionList = tour_optionDAO.getTour_OptionList();
		return tour_optionList;
	}

	public List<ReservationDTO> getReservationList() {
		List<ReservationDTO> reservationList = reservationDAO.getReservationList();
		return reservationList;
	}

	// 에러
	public Tour_OptionDTO getTour_Option() {
		return tour_optionDAO.selectOne(1);
	}
	
	public Tour_PriceDTO getTour_Price() {
		return tour_priceDAO.selectOne();
	}

	public ReservationDTO getReservation() {
		return reservationDAO.selectOne(1);
	}
}