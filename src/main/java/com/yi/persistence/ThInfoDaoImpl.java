package com.yi.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ThInfo;

@Repository
public class ThInfoDaoImpl implements ThInfoDao {
	
	private static final String namespace = "com.yi.mapper.ThInfoMapper";
	
	@Autowired
	SqlSession sqlsession;
	
	@Override
	public void insertTheater(ThInfo theater) throws Exception {
		sqlsession.insert(namespace+".insertTheater", theater);

	}

	@Override
	public List<ThInfo> theaterList() throws Exception {
		return sqlsession.selectList(namespace+".theaterList");
	}

	@Override
	public void delTheater(String name) throws Exception {
		sqlsession.update(namespace+".delTheater", name);
		
	}

	@Override
	public ThInfo selectName(String thName) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectName", thName);
	}

	@Override
	public ThInfo selectNameByAll(String thName) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectNameByAll", thName);
	}

	@Override
	public void reTheater(Map<String, Object> map) throws Exception {
		sqlsession.update(namespace+".reTheater", map);
		
	}

}
