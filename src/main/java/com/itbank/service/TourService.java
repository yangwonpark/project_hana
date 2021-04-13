package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.tour_item.Tour_ItemDAO;
import com.itbank.tour_item.Tour_ItemDTO;
import com.itbank.tour_option.Tour_OptionDAO;
import com.itbank.tour_option.Tour_OptionDTO;
import com.itbank.tour_price.Tour_PriceDAO;
import com.itbank.tour_price.Tour_PriceDTO;
import com.itbank.entrepreneur.EntrepreneurDAO;
import com.itbank.entrepreneur.EntrepreneurDTO;
import com.itbank.local.LocalDAO;
import com.itbank.local.LocalDTO;
import com.itbank.metro.MetroDAO;
import com.itbank.metro.MetroDTO;
import com.itbank.package_category.Package_CategoryDAO;
import com.itbank.package_category.Package_CategoryDTO;
import com.itbank.package_detail.Package_DetailDAO;
import com.itbank.package_detail.Package_DetailDTO;
import com.itbank.package_middle.Package_MiddleDAO;
import com.itbank.package_middle.Package_MiddleDTO;
import com.itbank.payment.PaymentDAO;
import com.itbank.payment.PaymentDTO;
import com.itbank.reservation.ReservationDAO;
import com.itbank.reservation.ReservationDTO;
import com.itbank.tour_item.Paging;

@Service
public class TourService {
	
	@Autowired
	private Package_CategoryDAO package_categoryDAO;
	@Autowired
	private Package_MiddleDAO package_middleDAO;
	@Autowired
	private Package_DetailDAO package_detailDAO;
	@Autowired
	private MetroDAO metroDAO;	
	@Autowired
	private LocalDAO localDAO;
	@Autowired
	private Tour_PriceDAO tour_priceDAO;
	@Autowired
	private Tour_ItemDAO tour_itemDAO;
	@Autowired
	private Tour_OptionDAO tour_optionDAO;
	@Autowired
	private ReservationDAO reservationDAO;
	@Autowired
	private EntrepreneurDAO entrepreneurDAO;
	@Autowired
	private PaymentDAO pdao;
	
	public HashMap<String, Object> getTour_ItemList(int page, String type, String word) {
		type = "".equals(type) ? null : type;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("word", word);
		
		int count = tour_itemDAO.selectCount(map);
		System.out.println("count : " + count);
		
		Paging paging = new Paging(page, count);
		map.put("first", paging.getFirst());
		map.put("last", paging.getLast());
		map.put("paging", paging);
		
		List<Tour_ItemDTO> list = tour_itemDAO.selectList(map);
		map.put("list", list);
		
		return map;
	}

	public Tour_ItemDTO getTour_Item(int idx) {
		return tour_itemDAO.selectOne(idx);
	}

	public int writeTour_Item(Tour_ItemDTO user) {
		int row = tour_itemDAO.inputTour_Item(user);		
		int idx = row == 1 ? tour_itemDAO.selectMaxIdx() : 0;	
		return idx;
	}

	public List<MetroDTO> getMetroList() {
		List<MetroDTO> metroList = metroDAO.getMetroList();
		return metroList;
	}

	public List<LocalDTO> getLocalList() {
		List<LocalDTO> localList = localDAO.getLocalList();
		return localList;
	}

	public List<EntrepreneurDTO> getEntrepreneurAll() {
		List<EntrepreneurDTO> entrepreneurAll = entrepreneurDAO.getEntrepreneurAll();
		return entrepreneurAll;
	}

	public List<Tour_ItemDTO> getTour_ItemList() {
		List<Tour_ItemDTO> tour_itemList = tour_itemDAO.getTour_ItemList();
		return tour_itemList;
	}
	
	public List<Tour_PriceDTO> getTour_PriceList() {
		List<Tour_PriceDTO> tour_priceList = tour_priceDAO.getTour_PriceList();
		return tour_priceList;
	}
	
	public List<Tour_OptionDTO> getTour_OptionList() {
		List<Tour_OptionDTO> tour_optionList = tour_optionDAO.getTour_OptionList();
		return tour_optionList;
	}
	
	public EntrepreneurDTO getEntrepreneur(int entrepreneur_idx) {
		EntrepreneurDTO edto = entrepreneurDAO.getEntrepreneur(entrepreneur_idx);
		return edto;
	}

	public List<Package_CategoryDTO> getPackage_Category() {
		List<Package_CategoryDTO> package_category = package_categoryDAO.getPackage_Category();
		return package_category;
	}

	public List<Package_MiddleDTO> getPackage_Middle() {
		List<Package_MiddleDTO> package_middle = package_middleDAO.getPackage_Middle();
		return package_middle;
	}

	public List<Package_DetailDTO> getPackage_Detail() {
		List<Package_DetailDTO> package_detail = package_detailDAO.getPackage_Detail();
		return package_detail;
	}

	public Tour_PriceDTO getTour_Price(int idx) {
		return tour_priceDAO.selectOne(idx);
	}

	public Tour_OptionDTO getTour_Option(int one) {
		return tour_optionDAO.selectOne(one);
	}

	public ReservationDTO getReservation(int idx) {
		return reservationDAO.selectOne(idx);
	}

	public int insertTourPayment(PaymentDTO pdto) {
		return pdao.insertTourPayMent(pdto);
		
	}
}