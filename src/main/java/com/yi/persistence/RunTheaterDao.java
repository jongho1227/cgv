package com.yi.persistence;

import java.util.List;
import java.util.Map;

import com.yi.domain.RunTheater;
import com.yi.domain.RunTime;

public interface RunTheaterDao {
	public void insertRunTheater(Map<String, Object> rMap) throws Exception;
	public void updateBykwan(RunTime rt) throws Exception;
	public List<RunTheater> selectAllSeat(Map<String, Object> map) throws Exception;
	public List<RunTheater> selectUnReserve(String no) throws Exception;
	public void updateByRev(Map<String, Object> map) throws Exception;
	
}
