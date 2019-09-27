package com.yi.domain;

import java.util.Date;

public class RunTime {
	private int rtNumber;
	private String rtName;
	private Movie mvNumber;
	private ThInfo thName;
	private Date thStart;
	private Date thEnd;
	private int rtPrice;
	private String allSeat;
	private String remainSeat;
	private boolean rtWithdrawal;
	
	
	public RunTime() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public RunTime(int rtNumber, Movie mvNumber, ThInfo thName, Date thStart, Date thEnd, int rtPrice,
			boolean rtWithdrawal, String rtName) {
		super();
		this.rtNumber = rtNumber;
		this.mvNumber = mvNumber;
		this.thName = thName;
		this.thStart = thStart;
		this.thEnd = thEnd;
		this.rtPrice = rtPrice;
		this.rtWithdrawal = rtWithdrawal;
		this.rtName = rtName;
	}

	

	public String getAllSeat() {
		return allSeat;
	}


	public void setAllSeat(String allSeat) {
		this.allSeat = allSeat;
	}


	public String getRemainSeat() {
		return remainSeat;
	}


	public void setRemainSeat(String remainSeat) {
		this.remainSeat = remainSeat;
	}


	public String getRtName() {
		return rtName;
	}
	public void setRtName(String rtName) {
		this.rtName = rtName;
	}
	public int getRtNumber() {
		return rtNumber;
	}
	public void setRtNumber(int rtNumber) {
		this.rtNumber = rtNumber;
	}
	public Movie getMvNumber() {
		return mvNumber;
	}
	public void setMvNumber(Movie mvNumber) {
		this.mvNumber = mvNumber;
	}
	public ThInfo getThName() {
		return thName;
	}
	public void setThName(ThInfo thName) {
		this.thName = thName;
	}
	public Date getThStart() {
		return thStart;
	}
	public void setThStart(Date thStart) {
		this.thStart = thStart;
	}
	public Date getThEnd() {
		return thEnd;
	}
	public void setThEnd(Date thEnd) {
		this.thEnd = thEnd;
	}
	public int getRtPrice() {
		return rtPrice;
	}
	public void setRtPrice(int rtPrice) {
		this.rtPrice = rtPrice;
	}
	public boolean isRtWithdrawal() {
		return rtWithdrawal;
	}
	public void setRtWithdrawal(boolean rtWithdrawal) {
		this.rtWithdrawal = rtWithdrawal;
	}


	@Override
	public String toString() {
		return "RunTime [rtNumber=" + rtNumber + ", rtName=" + rtName + ", mvNumber=" + mvNumber + ", thName=" + thName
				+ ", thStart=" + thStart + ", thEnd=" + thEnd + ", rtPrice=" + rtPrice + ", allSeat=" + allSeat
				+ ", remainSeat=" + remainSeat + ", rtWithdrawal=" + rtWithdrawal + "]";
	}


	
}
