package com.yi.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ReservationDaoImpl implements ReservationDao {
	private static final String namespace = "com.yi.mapper.ReservationMapper";
	@Autowired
	SqlSession sqlsession;
	@Override
	public void insertRev(Map<String, Object> map) throws Exception {
		sqlsession.insert(namespace+".insertRev",map);
	}

}
