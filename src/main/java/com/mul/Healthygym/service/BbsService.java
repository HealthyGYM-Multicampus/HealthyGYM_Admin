package com.mul.Healthygym.service;

import java.util.List;

import com.mul.Healthygym.dto.BbsDto;

public interface BbsService {
	List<BbsDto> bbsList();
	boolean delBbs(BbsDto dto);
	boolean showBbs(BbsDto dto);
	
	List<BbsDto> bbs2();
	List<BbsDto> bbs3();
	List<BbsDto> bbs4();
	List<BbsDto> bbs11();
	List<BbsDto> bbs5();
	List<BbsDto> bbs10();
	
	List<BbsDto> bbsReport();
}
