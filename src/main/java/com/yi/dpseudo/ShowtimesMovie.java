package com.yi.dpseudo;

import java.util.List;

import com.yi.domain.Movie;
import com.yi.domain.ThInfo;

public class ShowtimesMovie {
	private Movie movie;
	private List<Showtimeskwan> Showtimeskwan;
	public ShowtimesMovie() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShowtimesMovie(Movie movie, List<com.yi.dpseudo.Showtimeskwan> showtimeskwan) {
		super();
		this.movie = movie;
		Showtimeskwan = showtimeskwan;
	}
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	public List<Showtimeskwan> getShowtimeskwan() {
		return Showtimeskwan;
	}
	public void setShowtimeskwan(List<Showtimeskwan> showtimeskwan) {
		Showtimeskwan = showtimeskwan;
	}
	@Override
	public String toString() {
		return "ShowtimesMovie [movie=" + movie + ", Showtimeskwan=" + Showtimeskwan + "]";
	}
	
	
}
