package com.mul.Healthygym.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mul.Healthygym.dao.MemberDao;
import com.mul.Healthygym.dao.imp.MemberDaoImpl;
import com.mul.Healthygym.dto.MemberDto;
import com.mul.Healthygym.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	// Dao 접근(생성) == MemberDao dao = new MemberDaoImpl();를 auto로
	@Autowired
	MemberDao dao;
	

	@Override
	public List<MemberDto> allMember() {
		return dao.allMember();
	}
	@Override
	public List<MemberDto> BanMems() {
		return dao.BanMems();

	}@Override
	public List<MemberDto> Managers() {
		return dao.Managers();

	}@Override
	public List<MemberDto> NomalMems() {
		return dao.NomalMems();

	}


	@Override
	public boolean idCheck(String email) {
		int count = dao.idCheck(email);
		return count>0?true:false;
	}


	@Override
	public boolean addMember(MemberDto dto) {
		int count = dao.addMember(dto);
		return count>0?true:false;
	}


	@Override
	public MemberDto login(MemberDto dto) {
		return dao.login(dto);
	}
	@Override
	public boolean modifyName(MemberDto dto) {
		int count = dao.modifyName(dto);
		return count>0?true:false;
	}
	@Override
	public boolean modifyContact(MemberDto dto) {
		int count = dao.modifyContact(dto);
		return count>0?true:false;
	}
	@Override
	public boolean modifyEmail(MemberDto dto) {
		int count = dao.modifyEmail(dto);
		return count>0?true:false;
	}
	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean modifyAuth(MemberDto dto) {
		int count = dao.modifyAuth(dto);
		return count>0?true:false;
	}
}