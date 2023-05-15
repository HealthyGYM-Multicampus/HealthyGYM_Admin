package com.mul.Healthygym.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mul.Healthygym.dao.CmtDao;
import com.mul.Healthygym.dto.CmtDto;
import com.mul.Healthygym.service.CmtService;
@Service
public class CmtServiceImpl implements CmtService{
	
	@Autowired
	CmtDao dao;
	@Override
	public List<CmtDto> cmtList() {
		return dao.cmtList();
	}

	@Override
	public boolean delCmt(CmtDto dto) {
		int count = dao.delCmt(dto);
		return count>0?true:false;
	}

	@Override
	public boolean showCmt(CmtDto dto) {
		int count = dao.showCmt(dto);
		return count>0?true:false;
	}
}
