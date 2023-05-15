package com.mul.Healthygym.dao;

import java.util.List;

import com.mul.Healthygym.dto.BbsDto;
import com.mul.Healthygym.dto.MemberDto;

public interface BbsDao {
	
	List<BbsDto> bbsList();
	int delBbs(BbsDto dto);
	int showBbs(BbsDto dto);
	
	List<BbsDto> bbs2();
	List<BbsDto> bbs3();
	List<BbsDto> bbs4();
	List<BbsDto> bbs11();
	List<BbsDto> bbs5();
	List<BbsDto> bbs10();
	
	List<BbsDto> bbsReport();
}
