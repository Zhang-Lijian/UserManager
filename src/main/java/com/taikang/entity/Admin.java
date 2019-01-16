package com.taikang.entity;

public class Admin {
	private int id;
	private String institution;
	private String department;
	private String psd;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	
	public String getInstitution() {
		return institution;
	}
	public void setInstitution(String institution) {
		this.institution = institution;
	}
	@Override
	public String toString() {
		return "Admin [institution=" + institution + ", department=" + department + ", psd=" + psd + "]";
	}
	
	
}
