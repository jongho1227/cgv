package com.yi.dpseudo;

import java.util.List;

public class Showtimeskwan {
	private String kwanKind;
	private String kwanName;
	private String allSeat;
	private List<Showtimes> showtimes;
	public String getKwanKind() {
		return kwanKind;
	}
	public void setKwanKind(String kwanKind) {
		this.kwanKind = kwanKind;
	}
	public String getKwanName() {
		return kwanName;
	}
	public void setKwanName(String kwanName) {
		this.kwanName = kwanName;
	}
	public String getAllSeat() {
		return allSeat;
	}
	public void setAllSeat(String allSeat) {
		this.allSeat = allSeat;
	}
	public List<Showtimes> getShowtimes() {
		return showtimes;
	}
	public void setShowtimes(List<Showtimes> showtimes) {
		this.showtimes = showtimes;
	}
	@Override
	public String toString() {
		return "Showtimeskwan [kwanKind=" + kwanKind + ", kwanName=" + kwanName + ", allSeat=" + allSeat
				+ ", showtimes=" + showtimes + "]";
	}
	
	
	
	
}
