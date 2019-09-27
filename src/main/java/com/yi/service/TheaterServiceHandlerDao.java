package com.yi.service;

import java.util.List;
import java.util.Map;

import com.yi.domain.RunTime;
import com.yi.domain.Structure;
import com.yi.domain.ThInfo;

public interface TheaterServiceHandlerDao {
	public void insertTheater(ThInfo theater) throws Exception;
	public List<ThInfo> theaterList() throws Exception;
	public void delTheater(String name) throws Exception;
	public List<Structure> select1(String tname) throws Exception;
	public void selectedRemove(Map<String, Object> update) throws Exception;
	public void rowRemove(Map<String, Object> rowRemove) throws Exception;
	public void colRemove(Map<String, Object> colRemove) throws Exception;
	public void restore(String tname) throws Exception;
	public ThInfo selectNameByAll(String thName) throws Exception;
	public void reTheater(Map<String, Object> map) throws Exception;
	public RunTime recentInsert() throws Exception;
	public List<Structure> selectByKwan(String kwan) throws Exception;
	public void insertRunTheater(Map<String, Object> rMap) throws Exception;
	public List<RunTime> selectruntheater(Map<String, Object> map) throws Exception;
}
