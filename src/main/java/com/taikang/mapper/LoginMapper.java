package com.taikang.mapper;

import com.taikang.entity.Admin;

public interface LoginMapper {
	public Admin centralLogin(Admin admin);
	public Admin branchLogin(Admin admin);
	public void changepsd(int id, String newpsd);
}
