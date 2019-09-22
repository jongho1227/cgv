package com.yi.domain;

public class RunTheater {
	private int rtNumber;
	private String thName;
	private String seatNumber;
	private boolean rvWithdrawal;
	public int getRtNumber() {
		return rtNumber;
	}
	public void setRtNumber(int rtNumber) {
		this.rtNumber = rtNumber;
	}
	public String getThName() {
		return thName;
	}
	public void setThName(String thName) {
		this.thName = thName;
	}
	public String getSeatNumber() {
		return seatNumber;
	}
	public void setSeatNumber(String seatNumber) {
		this.seatNumber = seatNumber;
	}
	public boolean isRvWithdrawal() {
		return rvWithdrawal;
	}
	public void setRvWithdrawal(boolean rvWithdrawal) {
		this.rvWithdrawal = rvWithdrawal;
	}
	@Override
	public String toString() {
		return "RunTheater [rtNumber=" + rtNumber + ", thName=" + thName + ", seatNumber=" + seatNumber
				+ ", rvWithdrawal=" + rvWithdrawal + "]";
	}
	
	
	
	
}
