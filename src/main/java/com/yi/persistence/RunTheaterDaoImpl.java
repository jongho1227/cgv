package com.yi.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.RunTheater;
import com.yi.domain.RunTime;

@Repository
public class RunTheaterDaoImpl implements RunTheaterDao {
	private static final String namespace = "com.yi.mapper.RunTheaterMapper";
	
	@Autowired
	SqlSession sqlsession;
	
	@Override
	public void insertRunTheater(Map<String, Object> rMap) throws Exception {
		sqlsession.insert(namespace+".insertRunTheater", rMap);

	}

	@Override
	public void updateBykwan(RunTime rt) throws Exception {
		sqlsession.insert(namespace+".updateBykwan", rt);
		
	}

	@Override
	public List<RunTheater> selectAllSeat(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectAllSeat", map);
	}

	@Override
	public List<RunTheater> selectUnReserve(String no) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectUnReserve", no);
	}

	@Override
	public void updateByRev(Map<String, Object> map) throws Exception {
		sqlsession.update(namespace+".updateByRev", map);
		
	}


}
