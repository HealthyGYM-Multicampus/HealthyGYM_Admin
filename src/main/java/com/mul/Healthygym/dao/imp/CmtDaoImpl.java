package com.mul.Healthygym.dao.imp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mul.Healthygym.dao.CmtDao;
import com.mul.Healthygym.dto.CmtDto;
@Repository
public class CmtDaoImpl implements CmtDao{
	
	@Autowired
	SqlSession session;
	
	String ns = "Cmt.";	
	
	@Override
	public List<CmtDto> cmtList() {
		return session.selectList(ns + "cmtList");
	}

	@Override
	public int delCmt(CmtDto dto) {
		return session.update(ns + "delCmt", dto);
	}

	@Override
	public int showCmt(CmtDto dto) {
		return session.update(ns + "showCmt", dto);
	}


}
