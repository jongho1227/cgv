package com.yi.persistence;

import java.util.List;

import com.yi.domain.Movie;

public interface MovieDao {
	public void insertMovie(Movie movie) throws Exception;
	public Movie selectMovie(Movie movie) throws Exception;
	public List<Movie> selectMovieAll() throws Exception;
	public void endMv(Movie mv) throws Exception;
	public Movie selectFirst() throws Exception;
	public void updateMv(Movie mv) throws Exception;
}
