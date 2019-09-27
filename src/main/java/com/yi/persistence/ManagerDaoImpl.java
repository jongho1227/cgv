package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.Manager;
@Repository
public class ManagerDaoImpl implements ManagerDao {
	private static final String namespace = "com.yi.mapper.ManagerMapper";
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public Manager selectManager(Manager mg) throws Exception {
		
		return sqlsession.selectOne(namespace+".selectManager",mg);
	}
	
	
	
}
