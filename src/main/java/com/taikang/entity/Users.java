package com.taikang.entity;


public class Users {
	private int id;
	private String systemname;
	private String department;
	private String username;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSystemname() {
		return systemname;
	}

	public void setSystemname(String systemname) {
		this.systemname = systemname;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "Users [id=" + id + ", systemname=" + systemname + ", department=" + department + ", username="
				+ username + "]";
	}
	
}
