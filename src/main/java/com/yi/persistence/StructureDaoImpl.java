package com.yi.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.Structure;
import com.yi.domain.ThInfo;

@Repository
public class StructureDaoImpl implements StructureDao {
	
	private static final String namespace = "com.yi.mapper.StructureMapper";
	
	@Autowired
	SqlSession sqlsession;
	
	@Override
	public void insertTheaterStructure(ThInfo theater) throws Exception {
		sqlsession.insert(namespace+".insertTheaterStructure",theater);

	}

	@Override
	public List<Structure> select1(String tname) throws Exception {
		return sqlsession.selectList(namespace+".select1", tname);
	}

	@Override
	public void selectedRemove(Map<String, Object> update) throws Exception {
		sqlsession.update(namespace+".selectedRemove", update);
		
	}

	@Override
	public void rowRemove(Map<String, Object> rowRemove) throws Exception {
		sqlsession.update(namespace+".rowRemove", rowRemove);
		
	}

	@Override
	public void colRemove(Map<String, Object> colRemove) throws Exception {
		sqlsession.update(namespace+".colRemove", colRemove);
		
	}

	@Override
	public void restore(String tname) throws Exception {
		sqlsession.update(namespace+".restore", tname);
		
	}

	@Override
	public List<Structure> selectByKwan(String kwan) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectByKwan", kwan);
	}

}
