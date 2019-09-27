package com.yi.domain;

import java.util.Date;

public class Reservation {
	private int rvOrder;
	private Member mbId;
	private RunTheater rtNumber;
	private RunTheater thName;
	private RunTheater seatNumber;
	private int rvNumber;
	private Date rvTime;
	private int rvPayment;
	private boolean rvCancel;
	
	public int getRvPayment() {
		return rvPayment;
	}
	public void setRvPayment(int rvPayment) {
		this.rvPayment = rvPayment;
	}
	public int getRvOrder() {
		return rvOrder;
	}
	public void setRvOrder(int rvOrder) {
		this.rvOrder = rvOrder;
	}
	public Member getMbId() {
		return mbId;
	}
	public void setMbId(Member mbId) {
		this.mbId = mbId;
	}
	public RunTheater getRtNumber() {
		return rtNumber;
	}
	public void setRtNumber(RunTheater rtNumber) {
		this.rtNumber = rtNumber;
	}
	public RunTheater getThName() {
		return thName;
	}
	public void setThName(RunTheater thName) {
		this.thName = thName;
	}
	public RunTheater getSeatNumber() {
		return seatNumber;
	}
	public void setSeatNumber(RunTheater seatNumber) {
		this.seatNumber = seatNumber;
	}
	public int getRvNumber() {
		return rvNumber;
	}
	public void setRvNumber(int rvNumber) {
		this.rvNumber = rvNumber;
	}
	public Date getRvTime() {
		return rvTime;
	}
	public void setRvTime(Date rvTime) {
		this.rvTime = rvTime;
	}
	public boolean isRvCancel() {
		return rvCancel;
	}
	public void setRvCancel(boolean rvCancel) {
		this.rvCancel = rvCancel;
	}
	@Override
	public String toString() {
		return "Reservation [rvOrder=" + rvOrder + ", mbId=" + mbId + ", rtNumber=" + rtNumber + ", thName=" + thName
				+ ", seatNumber=" + seatNumber + ", rvNumber=" + rvNumber + ", rvTime=" + rvTime + ", rvPayment="
				+ rvPayment + ", rvCancel=" + rvCancel + "]";
	}
	
	
	
	
	
}
