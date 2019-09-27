package com.yi.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.Movie;
import com.yi.domain.RunTime;

@Repository
public class RuntimeDaoImpl implements RuntimeDao {
	private static final String namespace = "com.yi.mapper.RuntimeMapper";
	
	@Autowired
	SqlSession sqlsession;
	
	@Override
	public void insertRunMovie(RunTime rt) throws Exception {
		sqlsession.insert(namespace+".insertRunMovie", rt);

	}

	@Override
	public List<RunTime> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectAll");
	}

	@Override
	public List<RunTime> selectByNN(Movie mv) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectByNN",mv);
	}

	@Override
	public RunTime selectByNumber(int rtNumber) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectByNumber",rtNumber);
	}

	@Override
	public void updateRMovie(RunTime rt) throws Exception {
		sqlsession.update(namespace+".updateRMovie",rt);
		
	}

	@Override
	public List<RunTime> selectByTimeAndThName(RunTime rt) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectByTimeAndThName",rt);
	}

	@Override
	public RunTime recentInsert() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".recentInsert");
	}

	@Override
	public void endRmovie(RunTime rt) throws Exception {
		sqlsession.update(namespace+".endRmovie",rt);
		
	}

	@Override
	public List<RunTime> selectDateAll(String showDate) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectDateAll",showDate);
	}

	@Override
	public RunTime selectOneClose() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectOneClose");
	}

	@Override
	public List<RunTime> selectDateClose(String closeDate) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectDateClose",closeDate);
	}

	@Override
	public List<RunTime> selectDateCloseKwan(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectDateCloseKwan",map);
	}

	@Override
	public List<RunTime> selectDateCloseKwanTime(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectDateCloseKwanTime",map);
	}
	@Override
	public List<RunTime> selectruntheater(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectruntheater", map);
	}

}
