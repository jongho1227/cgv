package com.yi.domain;

public class MemberCoupon {
	private int mcNo;
	private boolean mcUse;
	private Member mcMbId;
	private Coupon mcCpName;
	public MemberCoupon() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberCoupon(int mcNo, boolean mcUse, Member mcMbId, Coupon mcCpName) {
		super();
		this.mcNo = mcNo;
		this.mcUse = mcUse;
		this.mcMbId = mcMbId;
		this.mcCpName = mcCpName;
	}
	public int getMcNo() {
		return mcNo;
	}
	public void setMcNo(int mcNo) {
		this.mcNo = mcNo;
	}
	public boolean isMcUse() {
		return mcUse;
	}
	public void setMcUse(boolean mcUse) {
		this.mcUse = mcUse;
	}
	public Member getMcMbId() {
		return mcMbId;
	}
	public void setMcMbId(Member mcMbId) {
		this.mcMbId = mcMbId;
	}
	public Coupon getMcCpName() {
		return mcCpName;
	}
	public void setMcCpName(Coupon mcCpName) {
		this.mcCpName = mcCpName;
	}
	@Override
	public String toString() {
		return "MemberCoupon [mcNo=" + mcNo + ", mcUse=" + mcUse + ", mcMbId=" + mcMbId + ", mcCpName=" + mcCpName
				+ "]";
	}
	
	
}
