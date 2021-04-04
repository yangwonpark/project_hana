package com.itbank.reason;

import java.util.List;

public interface ReasonDAO {

	int insertReason(String reason);

	List<ReasonDTO> selectReasonAll();
	
	
}
