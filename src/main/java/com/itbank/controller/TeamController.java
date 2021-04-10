package com.itbank.controller;

import java.sql.SQLIntegrityConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.TeamService;
import com.itbank.team.TeamDTO;

@Controller
public class TeamController {
	
	@Autowired
	private TeamService ts;
// 팀 등록 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	@GetMapping("/myMenu/admin_teamlist")
	public String teamList() {
		return "myMenu/admin_teamlist";
	}	

	// 팀 등록 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	@PostMapping("/myMenu/admin_teamlist")
	public ModelAndView teamList(TeamDTO team) {
		return ts.insertTeam(team);
	}
	@ExceptionHandler(SQLIntegrityConstraintViolationException.class)
	public ModelAndView loginFail(SQLIntegrityConstraintViolationException e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "부서코드가 중복됩니다...(이유:무결성 제약조건 위배)");
		mav.addObject("path", "/myMenu/admin_teamlist");
		mav.setViewName("/myMenu/msg");	
		return mav;
	}
}
