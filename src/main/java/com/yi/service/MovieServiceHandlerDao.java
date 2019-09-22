package com.yi.service;

import java.util.List;

import com.yi.domain.Movie;
import com.yi.domain.RunTime;
import com.yi.domain.ThInfo;

public interface MovieServiceHandlerDao {
	public void insertMovie(Movie movie) throws Exception;
	public ThInfo selectName(String thName) throws Exception;
	public Movie selectMovie(Movie movie) throws Exception;
	public void insertRunMovie(RunTime rt) throws Exception;
	public List<Movie> selectMovieAll() throws Exception;
	public List<RunTime> selectByNN(Movie mv) throws Exception;
	public void endMv(Movie mv) throws Exception;
	public Movie selectFirst() throws Exception;
	public RunTime selectByNumber(int rtNumber) throws Exception;
	public void updateRMovie(RunTime rt) throws Exception;
	public void updateMv(Movie mv) throws Exception;
	public List<RunTime> selectByTimeAndThName(RunTime rt) throws Exception;
}
