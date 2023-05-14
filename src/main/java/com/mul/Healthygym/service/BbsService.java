package com.mul.Healthygym.service;

import java.util.List;

import com.mul.Healthygym.dto.BbsDto;

public interface BbsService {
	List<BbsDto> bbsList();
	boolean delBbs(BbsDto dto);
	boolean showBbs(BbsDto dto);
}
