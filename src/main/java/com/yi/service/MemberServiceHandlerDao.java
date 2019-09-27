package com.yi.service;

import com.yi.domain.Manager;
import com.yi.domain.Member;

public interface MemberServiceHandlerDao {
	public Member selectDuplMember(Member member) throws Exception;
	public void insertMember(Member member) throws Exception;
	public Member selectlMemberByIdPass(Member member) throws Exception;
	public Manager selectManager(Manager mg) throws Exception;
}
