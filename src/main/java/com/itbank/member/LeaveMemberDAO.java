package com.itbank.member;

public interface LeaveMemberDAO{

	int insertMemberTalte(LeaveMemberDTO user);

	String selectLeaveReason(String leave_reason);

}
