package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.Movie;
import com.yi.domain.RunTime;
import com.yi.domain.ThInfo;
import com.yi.persistence.MovieDao;
import com.yi.persistence.RunTheaterDao;
import com.yi.persistence.RuntimeDao;
import com.yi.persistence.StructureDao;
import com.yi.persistence.ThInfoDao;

@Service
public class MovieServiceHandlerImpl implements MovieServiceHandlerDao {
	
	@Autowired
	MovieDao mDao;
	@Autowired
	ThInfoDao tDao;
	@Autowired
	RuntimeDao rDao;
	@Autowired
	RunTheaterDao rtDao;
	@Override
	public void insertMovie(Movie movie) throws Exception {
		mDao.insertMovie(movie);
		
	}

	@Override
	public ThInfo selectName(String thName) throws Exception {
		return tDao.selectName(thName);
	}

	@Override
	public Movie selectMovie(Movie movie) throws Exception {
		return mDao.selectMovie(movie);
	}

	@Override
	public void insertRunMovie(RunTime rt) throws Exception {
		rDao.insertRunMovie(rt);
		
	}

	@Override
	public List<Movie> selectMovieAll() throws Exception {
		return mDao.selectMovieAll();
	}

	@Override
	public List<RunTime> selectByNN(Movie mv) throws Exception {
		// TODO Auto-generated method stub
		return rDao.selectByNN(mv);
	}

	@Override
	public void endMv(Movie mv) throws Exception {
		mDao.endMv(mv);
		
	}

	@Override
	public Movie selectFirst() throws Exception {
		// TODO Auto-generated method stub
		return mDao.selectFirst();
	}

	@Override
	public RunTime selectByNumber(int rtNumber) throws Exception {
		// TODO Auto-generated method stub
		return rDao.selectByNumber(rtNumber);
	}

	@Override
	public void updateRMovie(RunTime rt) throws Exception {
		rDao.updateRMovie(rt);
		rtDao.updateBykwan(rt);
	}

	@Override
	public void updateMv(Movie mv) throws Exception {
		mDao.updateMv(mv);
		
		
	}

	@Override
	public List<RunTime> selectByTimeAndThName(RunTime rt) throws Exception {
		// TODO Auto-generated method stub
		return rDao.selectByTimeAndThName(rt);
	}
	
	

}
