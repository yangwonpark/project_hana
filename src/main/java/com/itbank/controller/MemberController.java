package com.itbank.controller;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.kakaomember.KakaoMemberDTO;
import com.itbank.member.LeaveMemberDTO;
import com.itbank.member.MemberDTO;
import com.itbank.oauth.OAuthToken;
import com.itbank.reason.ReasonDTO;
import com.itbank.service.AdminService;
import com.itbank.service.KakaoService;
import com.itbank.service.LeaveMemberService;
import com.itbank.service.MemberService;
import com.itbank.service.ReasonService;
import com.itbank.team.TeamDTO;

@Controller
public class MemberController {
	
	@Autowired private MemberService ms;
	@Autowired private AdminService as;
	@Autowired private LeaveMemberService lms;
	@Autowired private ReasonService rs;
	@Autowired private KakaoService ks;
	
// 관리자 회원가입 관련 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	@GetMapping("/join/join_admin")
	public String loginAdmin() {	
		return "/join/join_admin";
	}

// 관리자 회원가입 관련 컨트롤러
	@PostMapping("/join/join_admin")
	public ModelAndView loginAdmin(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/myMenu/msg");
		int insert = ms.insertAdminMember(dto);
		mav.addObject("path","/login/login_form" );
		if(insert == 1) {
			mav.addObject("msg", "관리자 등급 회원이 추가되었습니다.");
		}else {
			mav.addObject("msg", "관리자 회원 추가가 실패하였습니다. 관리자에게 문의하세요");
		}
		return mav;
	}
		
// 회원가입 관련 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	@PostMapping("/join/join_form")
	public ModelAndView login(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		int s = ms.insertMember(dto);
		if (s == 1) {
			mav.addObject("msg", "축하합니다. 회원가입이 되었습니다.^^");
		}else {
			mav.addObject("msg", "회원가입에 실패하였습니다.");
		}
		mav.addObject("path", "/login/login_form");
		mav.setViewName("/myMenu/msg");		
		return mav;
	}
	
	@PostMapping(value="checkId", produces="application/text;charset=utf8")
	@ResponseBody
	public String checkId(String userid) {
		boolean alreadyExist = ms.checkId(userid);
		return alreadyExist ? "이미 사용중 입니다" : "사용 가능합니다"; 
	}
	
	@PostMapping(value="checkPnum", produces="application/text;charset=utf8")
	@ResponseBody
	public String checkPnum(String pnum) {
		boolean alreadyExist = ms.checkPnum(pnum);
		return alreadyExist ? "이미 사용중 입니다" : "사용 가능합니다"; 
	}

// 로그인 관련 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// 인터셉터 코드 = 주석으로 처리	
//	@PostMapping("/login/login_form")
//	public String login(MemberDTO user, String uri, HttpSession session) {
//		session.setAttribute("login", ms.getMember(user));
//		uri = (uri == null) ? "/" : uri;
//		return "redirect:" + uri;
//	}
	
	@PostMapping("/login/login_form")
	public ModelAndView login(MemberDTO user, String uri, HttpSession session) {	
		ModelAndView mav = new ModelAndView();
		MemberDTO dto = ms.getMember(user);
		if (dto != null) {
			session.setAttribute("login", dto);
			uri = (uri == null) ? "/" : uri;
			mav.setViewName("redirect:"+ uri);
			return mav;
		}else {
			mav.setViewName("/login/login_form");
			mav.addObject("lg", "로그인 실패");
			return mav;
		}
	}

// 로그아웃관련 컨트롤러~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	@RequestMapping("/logout/logout_form")
	public String logout(HttpSession session) {
		session.removeAttribute("login");
		session.removeAttribute("kakao");
		return "logout/logout_form";
	}

// 마이메뉴 관련 컨트롤러~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	@GetMapping("/myMenu/myinfo")
	public String myinfo() {
		return "myMenu/myinfo";
	}	

// 마이메뉴 회원 수정 관련 컨트롤러~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	@PostMapping("/myMenu/myinfo")
	public ModelAndView myinfo(MemberDTO user, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int edit = ms.updateMember(user);
		if (edit == 1) {
			mav.addObject("msg", "회원수정이 되었습니다.");
		}else {
			mav.addObject("msg", "회원수정이 실패하였습니다.");
		}
		mav.addObject("path", "/myMenu/myinfo");
		mav.setViewName("/myMenu/msg");		
		session.setAttribute("login", ms.updateUserMember(user.getUserid()));	
		return mav;
	}	

	
	
// 탈퇴 사유 등록 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	@GetMapping("/myMenu/admin_outmemberreason")
	public String outmemberreason() {
		return "/myMenu/admin_outmemberreason";
	}	
		
	@GetMapping(value="myMenu/admin_outmemberreason/{reason}", produces="application/text;charset=utf8")
	@ResponseBody 	
	public String member(@PathVariable String reason) throws JsonProcessingException {
		System.out.println("탈퇴 사유 : " + reason);
		int sucess = rs.insertReason(reason);
		if (sucess == 1) {
			return "성공";
		}else {
			return "실패";
		}
	}
	
// 탈퇴 회원 등록 컨트롤러 (서비스 이용한 컨트롤러) ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	@PostMapping("/join/talte")
	public ModelAndView talte(LeaveMemberDTO user, String userid, String leave_reason, HttpSession session) {
		ModelAndView mav = lms.insertMemberTalte(user, userid, leave_reason);
		System.out.println("떠난 사유 문자 : " + leave_reason);
		session.removeAttribute("login");
		return mav;
	}

// 탈퇴 이유 불러올때, 아무것도 없을때 예외사항 발생 처리 구문
	@ExceptionHandler(IndexOutOfBoundsException.class)
	public ModelAndView loginFail(IndexOutOfBoundsException e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "회원 탈퇴를 실패하였습니다.관리자에게 문의하세요.(이유:참조할수 있는 DB 정보가 없습니다.)");
		mav.addObject("path", "/myMenu/myinfo");
		mav.setViewName("/myMenu/msg");	
		return mav;
	}

// 탈퇴 이유 불러왔는데, 아무내용없이 db에 저장하려고 할때 발생하는 무결성 제약조건위배 발생시 예외사항처리구문
	@ExceptionHandler(SQLIntegrityConstraintViolationException.class)
	public ModelAndView loginFail(SQLIntegrityConstraintViolationException e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "탈퇴목록이 없습니다..관리자에게 문의하세요..(이유:무결성 제약조건 위배)");
		mav.addObject("path", "/myMenu/myinfo");
		mav.setViewName("/myMenu/msg");	
		return mav;
	}
	@ExceptionHandler(NumberFormatException.class)
	public ModelAndView loginFail(NumberFormatException e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "탈퇴 사유를 선택해주세요.");
		mav.addObject("path", "/myMenu/myinfo");
		mav.setViewName("/myMenu/msg");	
		return mav;
	}
	
// 탈퇴 이유 불러오는 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	@GetMapping(value="/reason", produces="application/json;charset=utf8")
	@ResponseBody
	public List<ReasonDTO> reasonList() throws JsonProcessingException {
		List<ReasonDTO> list = rs.getReasonList();
		return list;
	}

// 탈퇴 회원 목록 가져오기 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	@RequestMapping(value="/myMenu/admin_outmemberlist")
	public ModelAndView outMemberList() {
		System.out.println("탈퇴 회원 목록 가져오기");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/myMenu/admin_outmemberlist");
		mav.addObject("list", lms.getOutMemberList());
		return mav;
	}
}
