package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.team.TeamDAO;
import com.itbank.team.TeamDTO;

@Service
public class TeamService {
	@Autowired
	private TeamDAO td;
	
	public ModelAndView insertTeam(TeamDTO team) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/myMenu/msg");
		int t = td.insertTeamMember(team);
		if (t == 1) {
			mav.addObject("msg", "등록 성공");
		}else {
			mav.addObject("msg", "등록 실패");
		}
		mav.addObject("path", "/myMenu/admin_teamlist");
		return mav;
	}

}
