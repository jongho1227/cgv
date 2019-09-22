package com.yi.persistence;

import java.util.List;
import java.util.Map;

import com.yi.domain.Structure;
import com.yi.domain.ThInfo;

public interface StructureDao {
	public void insertTheaterStructure(ThInfo theater) throws Exception;
	public List<Structure> select1(String tname) throws Exception;
	public void selectedRemove(Map<String, Object> update) throws Exception;
	public void rowRemove(Map<String, Object> rowRemove) throws Exception;
	public void colRemove(Map<String, Object> colRemove) throws Exception;
	public void restore(String tname) throws Exception;
	public List<Structure> selectByKwan(String kwan) throws Exception;
}
