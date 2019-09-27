package com.yi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.Manager;
import com.yi.domain.Member;
import com.yi.persistence.ManagerDao;
import com.yi.persistence.MemberDao;
@Service
public class MemberServiceHandlerDaoImpl implements MemberServiceHandlerDao {
	
	@Autowired
	MemberDao mDao;
	@Autowired
	ManagerDao mgDao;
	@Override
	public Member selectDuplMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return mDao.selectDuplMember(member);
	}

	@Override
	public void insertMember(Member member) throws Exception {
		mDao.insertMember(member);
		
	}

	@Override
	public Member selectlMemberByIdPass(Member member) throws Exception {
		// TODO Auto-generated method stub
		return mDao.selectlMemberByIdPass(member);
	}
	
	@Override
	public Manager selectManager(Manager mg) throws Exception {
		// TODO Auto-generated method stub
		return mgDao.selectManager(mg);
	}

}
