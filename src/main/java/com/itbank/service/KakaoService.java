package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.member.Hash;
import com.itbank.member.MemberDAO;
import com.itbank.member.MemberDTO;

@Service
public class KakaoService {

	@Autowired private MemberDAO md;
	
	public int insertKakaoMember(String substring) {
		System.out.println("substring : " + substring);
		System.out.println(md.selectId(substring));
		String kakoid = md.selectId(substring);
		if( kakoid == null) {
			MemberDTO dto = new MemberDTO();
			dto.setUserid(substring);
			dto.setUserpw(Hash.getHash("1"));
			dto.setAgree_email(1);
			dto.setAgree_pnum(1);
			dto.setAgree_post(1);
			dto.setAgree_sms(1);
			dto.setUserkind("1");
			dto.setBirth_date(java.sql.Date.valueOf("1980-02-17"));
			dto.setExpiry_date(1);
			dto.setForeign(1);
			dto.setGender(1);
			dto.setName("kakao");
			//dto.setPnum("000-000-000");			
			return md.insertKakaoMember(dto);
		}else {
			return 1;
		}

	}
}
