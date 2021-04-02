package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.member.LeaveMemberDAO;
import com.itbank.member.LeaveMemberDTO;
import com.itbank.member.MemberDAO;

@Service
public class LeaveMemberService {
	
	@Autowired
	private LeaveMemberDAO ldao;
	@Autowired
	private MemberDAO dao;
	
	public ModelAndView insertMemberTalte(LeaveMemberDTO user, String userid) {
		int member = ldao.insertMemberTalte(user);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index");
		if(member == 1) {
			int userkind = dao.updateMemberTalte(userid);
			if (userkind == 1) {
				return  mav.addObject("msg", "성공");				
			}else {
				return  mav.addObject("msg", "실패");
			}
		}else {
			return  mav.addObject("msg", "불가");
		}
	}
}
