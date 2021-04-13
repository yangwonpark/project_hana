package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.adminmember.AdminMemberDAO;
import com.itbank.adminmember.AdminMemberDTO;
import com.itbank.cart.CartDAO;
import com.itbank.cart.CartDTO;
import com.itbank.member.Hash;
import com.itbank.member.MemberDAO;
import com.itbank.member.MemberDTO;
import com.itbank.team.TeamDAO;

@Service
public class MemberService {

	@Autowired private MemberDAO md;
	@Autowired private AdminMemberDAO amd;
	@Autowired private TeamDAO td;
	@Autowired private CartDAO cd;
	
	
	// 일반 계정 등록
	public int insertMember(MemberDTO dto) {
		dto.setUserpw(Hash.getHash(dto.getUserpw()));
		return md.insertMember(dto); 	
	}
	// 관리자 계정 등록
	public int insertAdminMember(MemberDTO dto) {
		dto.setUserpw(Hash.getHash(dto.getUserpw()));
		md.insertMember(dto);
		dto = md.selectOne(dto.getUserid());
		if(dto.getUserkind().equals("4")) {
			AdminMemberDTO adminDTO = new AdminMemberDTO();
			String teamname = "본부";
			String checkTeam = td.selectTeam(teamname);
			if(checkTeam.equals(null)) {
				return 0;
			}else {
				adminDTO.setTeam_info_idx(Integer.valueOf(td.selectTeam(teamname)));
				adminDTO.setMember_idx(dto.getIdx());
				int admin = amd.insertAdminMember(adminDTO);
				if(admin == 1) {
					return 1;
				}else {
					return 0;
				}
			}
		}
		return 0;	
	}
	
	// 사용자 아이디 중복 체크
	public boolean checkId(String userid) {
		String dbId = md.selectId(userid);
		return dbId != null;
	}
	
	// 사용자 전화번호 중복 체크
	public boolean checkPnum(String userPnum) {
		String dbPnum = md.selectPnum(userPnum);
		return dbPnum != null;
	}

	// 로그인
	public MemberDTO getMember(MemberDTO dto) {
		dto.setUserpw(Hash.getHash(dto.getUserpw()));
		return md.selectMember(dto);
	}

	// 멤버 한명 정보 업데이트
	public int updateMember(MemberDTO dto) {
		return md.updateMember(dto);
	}

	// 멤버 id로만 DTO 정보 가져오기.. (기 로그인 되어 있는 상태)
	public MemberDTO updateUserMember(String userid) {
		return md.updateUserMember(userid);
	}

	public MemberDTO selectOne(String userid) {
		return md.selectOne(userid);
		
	}
	public List<CartDTO> getCartList(int cartidx) {
		
		return cd.selectCartList(cartidx);
	}

}
