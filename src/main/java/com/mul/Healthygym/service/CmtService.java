package com.mul.Healthygym.service;

import java.util.List;

import com.mul.Healthygym.dto.CmtDto;

public interface CmtService {
	List<CmtDto> cmtList();
	boolean delCmt(CmtDto dto);
	boolean showCmt(CmtDto dto);
}
