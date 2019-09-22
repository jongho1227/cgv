package com.yi.domain;

public class ThInfo {
	private String thName;
	private String thKinds;
	private int thPrice;
	private boolean thWithdrawal;
	
	public ThInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public ThInfo(String thName, String thKinds, int thPrice, boolean thWithdrawal) {
		super();
		this.thName = thName;
		this.thKinds = thKinds;
		this.thPrice = thPrice;
		this.thWithdrawal = thWithdrawal;
	}


	public boolean isThWithdrawal() {
		return thWithdrawal;
	}
	public void setThWithdrawal(boolean thWithdrawal) {
		this.thWithdrawal = thWithdrawal;
	}
	public String getThName() {
		return thName;
	}
	public void setThName(String thName) {
		this.thName = thName;
	}
	public String getThKinds() {
		return thKinds;
	}
	public void setThKinds(String thKinds) {
		this.thKinds = thKinds;
	}
	public int getThPrice() {
		return thPrice;
	}
	public void setThPrice(int thPrice) {
		this.thPrice = thPrice;
	}

	@Override
	public String toString() {
		return "ThInfo [thName=" + thName + ", thKinds=" + thKinds + ", thPrice=" + thPrice + ", thWithdrawal="
				+ thWithdrawal + "]";
	}
		
}
