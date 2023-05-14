package com.mul.Healthygym.service;

import java.util.List;

import com.mul.Healthygym.dto.MemberDto;

public interface MemberService {
	List<MemberDto> allMember();
	MemberDto login(MemberDto dto);
	boolean idCheck(String email);
	boolean addMember(MemberDto dto);
	boolean modifyName(MemberDto dto);
	boolean modifyEmail(MemberDto dto);
	boolean modifyContact(MemberDto dto);
	boolean modifyAuth(MemberDto dto);
	
	List<MemberDto> NomalMems();
	List<MemberDto> BanMems();
	List<MemberDto> Managers();
}
