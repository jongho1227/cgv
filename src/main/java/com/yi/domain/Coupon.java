package com.yi.domain;

public class Coupon {
	private String cpName;
	private int cpDiscount;
	public Coupon() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Coupon(String cpName, int cpDiscount) {
		super();
		this.cpName = cpName;
		this.cpDiscount = cpDiscount;
	}
	public String getCpName() {
		return cpName;
	}
	public void setCpName(String cpName) {
		this.cpName = cpName;
	}
	public int getCpDiscount() {
		return cpDiscount;
	}
	public void setCpDiscount(int cpDiscount) {
		this.cpDiscount = cpDiscount;
	}
	@Override
	public String toString() {
		return "Coupon [cpName=" + cpName + ", cpDiscount=" + cpDiscount + "]";
	}
	
	
}
