package com.yi.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.RunTheater;
import com.yi.domain.RunTime;
import com.yi.domain.Structure;
import com.yi.domain.ThInfo;
import com.yi.persistence.RunTheaterDao;
import com.yi.persistence.RuntimeDao;
import com.yi.persistence.StructureDao;
import com.yi.persistence.ThInfoDao;

@Service
public class TheaterServiceHandlerImpl implements TheaterServiceHandlerDao {
	
	@Autowired
	ThInfoDao tDao;
	@Autowired
	StructureDao sDao;
	@Autowired
	RuntimeDao rDao;
	@Autowired
	RunTheaterDao rtDao;
	
	
	@Override
	public void insertTheater(ThInfo theater) throws Exception {
		tDao.insertTheater(theater);
		sDao.insertTheaterStructure(theater);

	}

	@Override
	public List<ThInfo> theaterList() throws Exception {
		return tDao.theaterList();
	}

	@Override
	public void delTheater(String name) throws Exception {
		tDao.delTheater(name);
		
	}

	@Override
	public List<Structure> select1(String tname) throws Exception {
		return sDao.select1(tname);
	}

	@Override
	public void selectedRemove(Map<String, Object> update) throws Exception {
		sDao.selectedRemove(update);
		
	}

	@Override
	public void rowRemove(Map<String, Object> rowRemove) throws Exception {
		sDao.rowRemove(rowRemove);
		
	}

	@Override
	public void colRemove(Map<String, Object> colRemove) throws Exception {
		sDao.colRemove(colRemove);
		
	}

	@Override
	public void restore(String tname) throws Exception {
		sDao.restore(tname);
		
	}

	@Override
	public ThInfo selectNameByAll(String thName) throws Exception {
		// TODO Auto-generated method stub
		return tDao.selectNameByAll(thName);
	}

	@Override
	public void reTheater(Map<String, Object> map) throws Exception {
		tDao.reTheater(map);
		
	}

	@Override
	public RunTime recentInsert() throws Exception {
		// TODO Auto-generated method stub
		return rDao.recentInsert();
	}

	@Override
	public List<Structure> selectByKwan(String kwan) throws Exception {
		// TODO Auto-generated method stub
		return sDao.selectByKwan(kwan);
	}

	@Override
	public void insertRunTheater(Map<String, Object> rMap) throws Exception {
		rtDao.insertRunTheater(rMap);
		
	}

}
