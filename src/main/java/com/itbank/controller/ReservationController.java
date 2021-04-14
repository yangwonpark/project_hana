package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.reservation.ReservationDTO;
import com.itbank.service.ReservationService;
import com.itbank.tour_option.Tour_OptionDTO;
import com.itbank.tour_price.Tour_PriceDTO;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService rs;
	
	@RequestMapping(value="/reservation/reservation_view", method=RequestMethod.GET)
	public void reservation_view() {}

	@RequestMapping(value="/reservation/reservation_view", method=RequestMethod.POST)
	public ModelAndView reservation_view1() {
		
		ModelAndView mav = new ModelAndView("/reservation/reservation_view");
		
		Tour_OptionDTO tour_option = rs.getTour_Option();
		Tour_PriceDTO tour_price = rs.getTour_Price();
		ReservationDTO reservation = rs.getReservation();
		
		mav.addObject("tour_option", tour_option);
		mav.addObject("tour_price", tour_price);
		mav.addObject("reservation", reservation);
		return mav;
	}
}