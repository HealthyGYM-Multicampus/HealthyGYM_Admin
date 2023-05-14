package com.mul.Healthygym.dao;

import java.util.List;

import com.mul.Healthygym.dto.BbsDto;

public interface BbsDao {
	
	List<BbsDto> bbsList();
	int delBbs(BbsDto dto);
	int showBbs(BbsDto dto);
}
