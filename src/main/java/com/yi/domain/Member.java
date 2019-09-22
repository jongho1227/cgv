package com.yi.domain;

import java.util.Date;

public class Member {
	private String mbId;
	private String mbPassword;
	private String mbName;
	private Date mbBirth;
	private String mbPhone;
	private String mbEmail;
	private Date mbJoinDate;
	private boolean mbWithdrawal;
	private Grade mbGrade;
	private int mbMileage;
	private String mbPassQuestion;
	private String mbPassAnswer;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String mbId, String mbPassword, String mbName, Date mbBirth, String mbPhone, String mbEmail,
			Date mbJoinDate, boolean mbWithdrawal, Grade mbGrade, int mbMileage, String mbPassQuestion,
			String mbPassAnswer) {
		super();
		this.mbId = mbId;
		this.mbPassword = mbPassword;
		this.mbName = mbName;
		this.mbBirth = mbBirth;
		this.mbPhone = mbPhone;
		this.mbEmail = mbEmail;
		this.mbJoinDate = mbJoinDate;
		this.mbWithdrawal = mbWithdrawal;
		this.mbGrade = mbGrade;
		this.mbMileage = mbMileage;
		this.mbPassQuestion = mbPassQuestion;
		this.mbPassAnswer = mbPassAnswer;
	}
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
	public Date getMbBirth() {
		return mbBirth;
	}
	public void setMbBirth(Date mbBirth) {
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
	@Override
	public String toString() {
		return "Member [mbId=" + mbId + ", mbPassword=" + mbPassword + ", mbName=" + mbName + ", mbBirth=" + mbBirth
				+ ", mbPhone=" + mbPhone + ", mbEmail=" + mbEmail + ", mbJoinDate=" + mbJoinDate + ", mbWithdrawal="
				+ mbWithdrawal + ", mbGrade=" + mbGrade + ", mbMileage=" + mbMileage + ", mbPassQuestion="
				+ mbPassQuestion + ", mbPassAnswer=" + mbPassAnswer + "]";
	}
	
	
}
