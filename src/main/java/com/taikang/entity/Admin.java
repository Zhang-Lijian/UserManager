package com.taikang.entity;

public class Admin {
	private String department;
	private String psd;
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPsd() {
		return psd;
	}
	public void setPsd(String psd) {
		this.psd = psd;
	}
	@Override
	public String toString() {
		return "Admin [department=" + department + ", psd=" + psd + "]";
	}
	
}
