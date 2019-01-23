package com.taikang.service;

import com.taikang.entity.Admin;

public interface LoginService {
	public Admin centralLogin(Admin admin);
	public Admin branchLogin(Admin admin);
	public void changepsd(int id, String newpsd);
}
