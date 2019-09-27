package com.yi.domain;

public class Manager {
	private String mgId;
	private String mgPass;
	
	public Manager() {
		
	}

	public Manager(String mgId, String mgPass) {
		super();
		this.mgId = mgId;
		this.mgPass = mgPass;
	}

	public String getMgId() {
		return mgId;
	}

	public void setMgId(String mgId) {
		this.mgId = mgId;
	}

	public String getMgPass() {
		return mgPass;
	}

	public void setMgPass(String mgPass) {
		this.mgPass = mgPass;
	}

	@Override
	public String toString() {
		return "Manager [mgId=" + mgId + ", mgPass=" + mgPass + "]";
	}

	
	
	
	
	
}
