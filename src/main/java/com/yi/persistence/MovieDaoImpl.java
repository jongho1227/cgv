package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.Movie;

@Repository
public class MovieDaoImpl implements MovieDao {
	
	private static final String namespace = "com.yi.mapper.MovieMapper";
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public void insertMovie(Movie movie) throws Exception {
		sqlsession.insert(namespace+".insertMovie", movie);
		
	}

	@Override
	public Movie selectMovie(Movie movie) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectMovie", movie);
	}

	@Override
	public List<Movie> selectMovieAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectMovieAll");
	}

	@Override
	public void endMv(Movie mv) throws Exception {
		sqlsession.update(namespace+".endMv", mv);
		
	}

	@Override
	public Movie selectFirst() throws Exception {
		
		return sqlsession.selectOne(namespace+".selectFirst");
	}

	@Override
	public void updateMv(Movie mv) throws Exception {
		sqlsession.update(namespace+".updateMv", mv);
		
	}

}
