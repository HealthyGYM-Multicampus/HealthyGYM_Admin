package com.mul.Healthygym.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mul.Healthygym.dao.BbsDao;
import com.mul.Healthygym.dto.BbsDto;
import com.mul.Healthygym.service.BbsService;
@Service
public class BbsServiceImpl implements BbsService{
	
	@Autowired
	BbsDao dao;
	@Override
	public List<BbsDto> bbsList() {
		return dao.bbsList();
	}

	@Override
	public boolean delBbs(BbsDto dto) {
		int count = dao.delBbs(dto);
		return count>0?true:false;
	}

	@Override
	public boolean showBbs(BbsDto dto) {
		int count = dao.showBbs(dto);
		return count>0?true:false;
	}
	
}
