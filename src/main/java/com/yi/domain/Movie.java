package com.yi.domain;

import java.util.Date;

public class Movie {
	private int mvNumber;
	private String mvTitle;
	private String mvImg;
	private int mvPrice;
	private String mvAgeLimit;
	private int mvRuntime;
	private String mvSummary;
	private boolean mvWithdrawal;
	private Date mvStart;
	private String mvGenre;
	
	
	public Date getMvStart() {
		return mvStart;
	}
	public void setMvStart(Date mvStart) {
		this.mvStart = mvStart;
	}
	public String getMvGenre() {
		return mvGenre;
	}
	public void setMvGenre(String mvGenre) {
		this.mvGenre = mvGenre;
	}
	public String getMvSummary() {
		return mvSummary;
	}
	public void setMvSummary(String mvSummary) {
		this.mvSummary = mvSummary;
	}
	public boolean isMvWithdrawal() {
		return mvWithdrawal;
	}
	public void setMvWithdrawal(boolean mvWithdrawal) {
		this.mvWithdrawal = mvWithdrawal;
	}
	public int getMvRuntime() {
		return mvRuntime;
	}
	public void setMvRuntime(int mvRuntime) {
		this.mvRuntime = mvRuntime;
	}
	public int getMvNumber() {
		return mvNumber;
	}
	public void setMvNumber(int mvNumber) {
		this.mvNumber = mvNumber;
	}
	public String getMvTitle() {
		return mvTitle;
	}
	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}
	public String getMvImg() {
		return mvImg;
	}
	public void setMvImg(String mvImg) {
		this.mvImg = mvImg;
	}
	public int getMvPrice() {
		return mvPrice;
	}
	public void setMvPrice(int mvPrice) {
		this.mvPrice = mvPrice;
	}
	public String getMvAgeLimit() {
		return mvAgeLimit;
	}
	public void setMvAgeLimit(String mvAgeLimit) {
		this.mvAgeLimit = mvAgeLimit;
	}
	@Override
	public String toString() {
		return "Movie [mvNumber=" + mvNumber + ", mvTitle=" + mvTitle + ", mvImg=" + mvImg + ", mvPrice=" + mvPrice
				+ ", mvAgeLimit=" + mvAgeLimit + ", mvRuntime=" + mvRuntime + ", mvSummary=" + mvSummary
				+ ", mvWithdrawal=" + mvWithdrawal + ", mvStart=" + mvStart + ", mvGenre=" + mvGenre + "]";
	}
	
	public String toString2() {
		return "[영화이름=" + mvTitle + "mvAgeLimit=" + mvAgeLimit + ", mvRuntime=" + mvRuntime + "]";
	}
	
	
}
