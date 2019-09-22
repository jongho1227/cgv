package com.yi.domain;

public class Structure {
	private ThInfo thName;
	private String seatNumber;
	private String stRow;
	private int stColumn;
	private boolean useWithdrawal;
	public Structure() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Structure(ThInfo thName, String seatNumber, String stRow, int stColumn, boolean useWithdrawal) {
		super();
		this.thName = thName;
		this.seatNumber = seatNumber;
		this.stRow = stRow;
		this.stColumn = stColumn;
		this.useWithdrawal = useWithdrawal;
	}
	public ThInfo getThName() {
		return thName;
	}
	public void setThName(ThInfo thName) {
		this.thName = thName;
	}
	public String getSeatNumber() {
		return seatNumber;
	}
	public void setSeatNumber(String seatNumber) {
		this.seatNumber = seatNumber;
	}
	public String getStRow() {
		return stRow;
	}
	public void setStRow(String stRow) {
		this.stRow = stRow;
	}
	public int getStColumn() {
		return stColumn;
	}
	public void setStColumn(int stColumn) {
		this.stColumn = stColumn;
	}
	public boolean isUseWithdrawal() {
		return useWithdrawal;
	}
	public void setUseWithdrawal(boolean useWithdrawal) {
		this.useWithdrawal = useWithdrawal;
	}
	@Override
	public String toString() {
		return "Structure [thName=" + thName + ", seatNumber=" + seatNumber + ", stRow=" + stRow + ", stColumn="
				+ stColumn + ", useWithdrawal=" + useWithdrawal + "]";
	}
	
	
}
