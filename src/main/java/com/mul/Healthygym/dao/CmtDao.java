package com.mul.Healthygym.dao;

import java.util.List;

import com.mul.Healthygym.dto.CmtDto;
import com.mul.Healthygym.dto.MemberDto;

public interface CmtDao {
	
	List<CmtDto> cmtList();
	int delCmt(CmtDto dto);
	int showCmt(CmtDto dto);

}
