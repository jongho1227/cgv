package com.yi.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.Movie;
import com.yi.domain.RunTheater;
import com.yi.domain.RunTime;
import com.yi.domain.ThInfo;
import com.yi.persistence.MovieDao;
import com.yi.persistence.RunTheaterDao;
import com.yi.persistence.RuntimeDao;
import com.yi.persistence.StructureDao;
import com.yi.persistence.ThInfoDao;

@Service
public class ReservationServiceHandlerImpl implements ReservationServiceHandlerDao {
	@Autowired
	RuntimeDao rDao;
	@Autowired
	MovieDao mDao;
	@Autowired
	ThInfoDao tDao;
	@Autowired
	RunTheaterDao rtDao;
	
	@Override
	public List<RunTime> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return rDao.selectAll();
	}
	@Override
	public void endRmovie(RunTime rt) throws Exception {
		rDao.endRmovie(rt);
		
	}
	@Override
	public Movie selectMovie(Movie mv) throws Exception {
		// TODO Auto-generated method stub
		return mDao.selectMovie(mv);
	}
	@Override
	public ThInfo selectName(String thName) throws Exception {
		// TODO Auto-generated method stub
		return tDao.selectName(thName);
	}
	@Override
	public List<RunTheater> selectAllSeat(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return rtDao.selectAllSeat(map);
	}
	@Override
	public List<RunTheater> selectUnReserve(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return rtDao.selectUnReserve(map);
	}
	@Override
	public List<RunTime> selectDateAll(String showDate) throws Exception {
		// TODO Auto-generated method stub
		return rDao.selectDateAll(showDate);
	}
	@Override
	public RunTime selectOneClose() throws Exception {
		// TODO Auto-generated method stub
		return rDao.selectOneClose();
	}
	@Override
	public List<RunTime> selectDateClose(String closeDate) throws Exception {
		// TODO Auto-generated method stub
		return rDao.selectDateClose(closeDate);
	}
	
	
	

}
