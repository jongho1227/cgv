package com.yi.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.Member;
import com.yi.domain.Movie;
import com.yi.domain.Reservation;
import com.yi.domain.RunTheater;
import com.yi.domain.RunTime;
import com.yi.domain.ThInfo;
import com.yi.persistence.MemberDao;
import com.yi.persistence.MovieDao;
import com.yi.persistence.ReservationDao;
import com.yi.persistence.RunTheaterDao;
import com.yi.persistence.RuntimeDao;
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
	@Autowired
	MemberDao mbDao;
	@Autowired
	ReservationDao rsDao;
	
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
	@Override
	public List<RunTime> selectDateCloseKwan(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return rDao.selectDateCloseKwan(map);
	}
	@Override
	public List<RunTime> selectDateCloseKwanTime(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return rDao.selectDateCloseKwanTime(map);
	}
	@Override
	public List<RunTheater> selectUnReserve(String no) throws Exception {
		// TODO Auto-generated method stub
		return rtDao.selectUnReserve(no);
	}
	@Override
	@Transactional
	public void outReservation(Map<String, Object> map) throws Exception {
		rsDao.insertRev(map);
		String seat = (String) map.get("seat");
		String[] seatN = seat.split(",");
		for(int i=0; i<seatN.length; i++) {
			Map<String, Object> smap = new HashMap<String, Object>();
			smap.put("rtNumber", map.get("rtNumber"));
			smap.put("seat", seatN[i]);
			rtDao.updateByRev(smap);
		}
		
		
		
	}
	
	
	
	

}
