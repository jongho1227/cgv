package com.yi.dpseudo;

public class Showtimes {
	private String start;
	private String remainSeat;
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getRemainSeat() {
		return remainSeat;
	}
	public void setRemainSeat(String remainSeat) {
		this.remainSeat = remainSeat;
	}
	@Override
	public String toString() {
		return "Showtimes [start=" + start + ", remainSeat=" + remainSeat + "]";
	}
	
	
}
