package com.itbank.adminmember;

import java.util.HashMap;
import java.util.List;

public interface AdminMemberDAO {

	List<HashMap<String, String>> selectAll();
	int insertAdminMember(AdminMemberDTO dto);
	
}
