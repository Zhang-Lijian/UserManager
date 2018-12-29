package com.taikang.entity;


public class Users {
	private int id;
	private String oa;
	private String department;
	private String systemname;
	private String username;
	private String applytime;
	private String applyid;
	private String endtime;
	private String endid;
	private String status="有效";
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOa() {
		return oa;
	}
	public void setOa(String oa) {
		this.oa = oa;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getSystemname() {
		return systemname;
	}
	public void setSystemname(String systemname) {
		this.systemname = systemname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getApplytime() {
		return applytime;
	}
	public void setApplytime(String applytime) {
		this.applytime = applytime;
	}
	public String getApplyid() {
		return applyid;
	}
	public void setApplyid(String applyid) {
		this.applyid = applyid;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getEndid() {
		return endid;
	}
	public void setEndid(String endid) {
		this.endid = endid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", oa=" + oa + ", department=" + department + ", systemname=" + systemname
				+ ", username=" + username + ", applytime=" + applytime + ", applyid=" + applyid + ", endtime="
				+ endtime + ", endid=" + endid + ", status=" + status + "]";
	}
	
	
}
