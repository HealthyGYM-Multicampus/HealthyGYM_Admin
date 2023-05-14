package com.mul.Healthygym.dao;

import java.util.List;

import com.mul.Healthygym.dto.MemberDto;

public interface MemberDao {
	List<MemberDto> allMember();
	int idCheck(String email);
	int addMember(MemberDto dto);
	MemberDto login(MemberDto dto);
	int modifyName(MemberDto dto);
	int modifyEmail(MemberDto dto);
	int modifyContact(MemberDto dto);
	int modifyAuth(MemberDto dto);
	
	List<MemberDto> NomalMems();
	List<MemberDto> BanMems();
	List<MemberDto> Managers();
	
}
