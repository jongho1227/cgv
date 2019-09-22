package com.yi.domain;

public class Grade {
	private String grade;
	private int gDiscount;
	public Grade() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Grade(String grade, int gDiscount) {
		super();
		this.grade = grade;
		this.gDiscount = gDiscount;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getgDiscount() {
		return gDiscount;
	}
	public void setgDiscount(int gDiscount) {
		this.gDiscount = gDiscount;
	}
	@Override
	public String toString() {
		return "Grade [grade=" + grade + ", gDiscount=" + gDiscount + "]";
	}
	
	
}
