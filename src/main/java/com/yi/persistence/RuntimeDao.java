package com.yi.persistence;

import java.util.List;
import java.util.Map;

import com.yi.domain.Movie;
import com.yi.domain.RunTime;

public interface RuntimeDao {
	public void insertRunMovie(RunTime rt) throws Exception;
	public List<RunTime> selectAll() throws Exception;
	public List<RunTime> selectByNN(Movie mv) throws Exception;
	public RunTime selectByNumber(int rtNumber) throws Exception;
	public void updateRMovie(RunTime rt) throws Exception;
	public List<RunTime> selectByTimeAndThName(RunTime rt) throws Exception;
	public RunTime recentInsert() throws Exception;
	public void endRmovie(RunTime rt) throws Exception;
	public List<RunTime> selectDateAll(String showDate) throws Exception;
	public RunTime selectOneClose() throws Exception;
	public List<RunTime> selectDateClose(String closeDate) throws Exception;
	public List<RunTime> selectDateCloseKwan(Map<String, Object> map) throws Exception;
	public List<RunTime> selectDateCloseKwanTime(Map<String, Object> map) throws Exception;
	public List<RunTime> selectruntheater(Map<String, Object> map) throws Exception;
}
