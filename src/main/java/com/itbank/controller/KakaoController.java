package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.member.MemberDTO;
import com.itbank.oauth.OAuthToken;
import com.itbank.service.KakaoService;

@Controller
public class KakaoController {
	
	@Autowired
	private KakaoService ks;
	
	// 카카오 로그인 컨트롤러
		@GetMapping("/auth/kakao/callback")
		//@ResponseBody  // data를 리턴해주는 컨트롤러 함수
		public ModelAndView kakaoCallback(HttpSession session, String code) {
			
			RestTemplate rt = new RestTemplate();

			HttpHeaders headers = new HttpHeaders();

			MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
			params.add("grant_type", "authorization_code");
			params.add("client_id", "4e98c061f75136520e7139aead6e1df2");
			params.add("redirect_uri", "http://192.168.0.83:8080/hana/auth/kakao/callback");
			params.add("code", code);
			HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = 
					new HttpEntity<>(params,headers);
			
			// Http 요청하기 - Post 방식으로 - 그리고 response 변수의 응답 받음.
			ResponseEntity<String> response = rt.exchange(
					"https://kauth.kakao.com/oauth/token",
					HttpMethod.POST,
					kakaoTokenRequest,
					String.class
			);
			ObjectMapper objectMapper = new ObjectMapper();
			OAuthToken oauthToken = null;
			OAuthToken oauthMember = null;
			
			try {
				oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
			} catch (JsonProcessingException e) {
				
				e.printStackTrace();
			}
			
			System.out.println("카카오 엑세스 토큰 : " + oauthToken.getAccess_token());
					
			RestTemplate rt2 = new RestTemplate();
			HttpHeaders headers2 = new HttpHeaders();
			
			headers2.add("Authorization", "Bearer " + oauthToken.getAccess_token());
			headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			
			//KakaoMemberDTO kdto = new KakaoMemberDTO();
			HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 = 
					new HttpEntity<>(headers2);
			ResponseEntity<String> response2 = rt2.exchange(
					"https://kapi.kakao.com/v2/user/me",
					HttpMethod.POST,
					kakaoProfileRequest2,
					String.class
			);			
			//return "카카오 토큰 요청 완료 : 토큰요청에 대한 응답" + response2.getBody();
			
			ModelAndView mav = new ModelAndView();
			
			mav.setViewName("/myMenu/msg");
			int ka = ks.insertKakaoMember(response2.getBody().substring(6, 16));
			if(ka == 1) {
				mav.addObject("msg", "카카오 로그인이 되었습니다.");
			}else {
				mav.addObject("msg", "카카오 로그인이 실패하엿습니다.");
			}
			mav.addObject("path", "/myMenu/myMenu_main");
			session.setAttribute("kakao", "kakao");
			MemberDTO kakaoLogin = ks.selectOne(response2.getBody().substring(6, 16));
			session.setAttribute("login", kakaoLogin  );
			System.out.println("카카오로 : " + kakaoLogin.getUserid() );
			System.out.println("카카오로 : " + kakaoLogin.getUserkind() );
			System.out.println("카카오로 : " + kakaoLogin.getGender());
			System.out.println("카카오로 : " + kakaoLogin.getAgree_post());
			
			return mav;
		}
}
