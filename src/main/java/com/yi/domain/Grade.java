package com.yi.domain;

public class Grade {
	private int g_number;
	private String grade;
	private int gDiscount;
	public Grade() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getG_number() {
		return g_number;
	}

	public void setG_number(int g_number) {
		this.g_number = g_number;
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
		return "Grade [g_number=" + g_number + ", grade=" + grade + ", gDiscount=" + gDiscount + "]";
	}
	
	
	
}
