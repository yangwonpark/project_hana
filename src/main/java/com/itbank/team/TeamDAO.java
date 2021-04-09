package com.itbank.team;

public interface TeamDAO {

	int insertTeamMember(TeamDTO team);

	String selectTeam(String teamname);
	
}
