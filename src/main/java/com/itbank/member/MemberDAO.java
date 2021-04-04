package com.itbank.member;

public interface MemberDAO {

	int insertMember(MemberDTO dto);

	String selectId(String userId);
	
	String selectPnum(String userPnum);

	MemberDTO selectMember(MemberDTO dto);

	int updateMember(MemberDTO dto);

	MemberDTO updateUserMember(String userid);

	MemberDTO selectOne(String userid);

	int updateMemberTalte(String userid);

}
