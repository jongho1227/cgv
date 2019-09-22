package com.yi.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.yi.domain.Movie;
import com.yi.domain.RunTheater;
import com.yi.domain.RunTime;
import com.yi.domain.ThInfo;

public interface ReservationServiceHandlerDao {
	public List<RunTime> selectAll() throws Exception;
	public void endRmovie(RunTime rt) throws Exception;
	public Movie selectMovie(Movie mv) throws Exception;
	public ThInfo selectName(String thName) throws Exception;
	public List<RunTheater> selectAllSeat(Map<String, Object> map) throws Exception;
	public List<RunTheater> selectUnReserve(Map<String, Object> map) throws Exception;
	public List<RunTime> selectDateAll(String showDate) throws Exception;
	public RunTime selectOneClose() throws Exception;
	public List<RunTime> selectDateClose(String closeDate) throws Exception;
}
