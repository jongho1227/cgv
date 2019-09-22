package com.yi.persistence;

import java.util.List;
import java.util.Map;

import com.yi.domain.ThInfo;

public interface ThInfoDao {
	public void insertTheater(ThInfo theater) throws Exception;
	public List<ThInfo> theaterList() throws Exception;
	public void delTheater(String name) throws Exception;
	public void reTheater(Map<String, Object> map) throws Exception;
	public ThInfo selectName(String thName) throws Exception;
	public ThInfo selectNameByAll(String thName) throws Exception;
}
