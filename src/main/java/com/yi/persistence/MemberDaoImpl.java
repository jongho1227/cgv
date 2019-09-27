package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.Member;
@Repository
public class MemberDaoImpl implements MemberDao {
	private static final String namespace = "com.yi.mapper.MemberMapper";
	
	@Autowired
	SqlSession sqlsession;
	@Override
	
	public Member selectDuplMember(Member member) throws Exception {
		
		return sqlsession.selectOne(namespace+".selectDuplMember",member);
	}
	@Override
	public void insertMember(Member member) throws Exception {
		sqlsession.insert(namespace+".insertMember",member);
		
	}
	@Override
	public Member selectlMemberByIdPass(Member member) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectlMemberByIdPass",member);
	}

}
