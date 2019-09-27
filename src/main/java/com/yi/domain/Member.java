package com.yi.domain;

import java.util.Date;

public class Member {
	private String mbId;
	private String mbPassword;
	private String mbName;
	private String mbBirth;
	private String mbPhone;
	private String mbEmail;
	private Date mbJoinDate;
	private boolean mbWithdrawal;
	private Grade mbGrade;
	private int mbMileage;
	private String mbPassQuestion;
	private String mbPassAnswer;
	private Date mbInfoChange;
	private Date mbDrop;
	public String getMbId() {
		return mbId;
	}
	public void setMbId(String mbId) {
		this.mbId = mbId;
	}
	public String getMbPassword() {
		return mbPassword;
	}
	public void setMbPassword(String mbPassword) {
		this.mbPassword = mbPassword;
	}
	public String getMbName() {
		return mbName;
	}
	public void setMbName(String mbName) {
		this.mbName = mbName;
	}
	public String getMbBirth() {
		return mbBirth;
	}
	public void setMbBirth(String mbBirth) {
		this.mbBirth = mbBirth;
	}
	public String getMbPhone() {
		return mbPhone;
	}
	public void setMbPhone(String mbPhone) {
		this.mbPhone = mbPhone;
	}
	public String getMbEmail() {
		return mbEmail;
	}
	public void setMbEmail(String mbEmail) {
		this.mbEmail = mbEmail;
	}
	public Date getMbJoinDate() {
		return mbJoinDate;
	}
	public void setMbJoinDate(Date mbJoinDate) {
		this.mbJoinDate = mbJoinDate;
	}
	public boolean isMbWithdrawal() {
		return mbWithdrawal;
	}
	public void setMbWithdrawal(boolean mbWithdrawal) {
		this.mbWithdrawal = mbWithdrawal;
	}
	public Grade getMbGrade() {
		return mbGrade;
	}
	public void setMbGrade(Grade mbGrade) {
		this.mbGrade = mbGrade;
	}
	public int getMbMileage() {
		return mbMileage;
	}
	public void setMbMileage(int mbMileage) {
		this.mbMileage = mbMileage;
	}
	public String getMbPassQuestion() {
		return mbPassQuestion;
	}
	public void setMbPassQuestion(String mbPassQuestion) {
		this.mbPassQuestion = mbPassQuestion;
	}
	public String getMbPassAnswer() {
		return mbPassAnswer;
	}
	public void setMbPassAnswer(String mbPassAnswer) {
		this.mbPassAnswer = mbPassAnswer;
	}
	public Date getMbInfoChange() {
		return mbInfoChange;
	}
	public void setMbInfoChange(Date mbInfoChange) {
		this.mbInfoChange = mbInfoChange;
	}
	public Date getMbDrop() {
		return mbDrop;
	}
	public void setMbDrop(Date mbDrop) {
		this.mbDrop = mbDrop;
	}
	@Override
	public String toString() {
		return "Member [mbId=" + mbId + ", mbPassword=" + mbPassword + ", mbName=" + mbName + ", mbBirth=" + mbBirth
				+ ", mbPhone=" + mbPhone + ", mbEmail=" + mbEmail + ", mbJoinDate=" + mbJoinDate + ", mbWithdrawal="
				+ mbWithdrawal + ", mbGrade=" + mbGrade + ", mbMileage=" + mbMileage + ", mbPassQuestion="
				+ mbPassQuestion + ", mbPassAnswer=" + mbPassAnswer + ", mbInfoChange=" + mbInfoChange + ", mbDrop="
				+ mbDrop + "]";
	}
	
	
	
	
}
