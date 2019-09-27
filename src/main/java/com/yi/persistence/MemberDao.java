package com.yi.persistence;

import com.yi.domain.Member;

public interface MemberDao {
	public Member selectDuplMember(Member member) throws Exception;
	public void insertMember(Member member) throws Exception;
	public Member selectlMemberByIdPass(Member member) throws Exception;
}
