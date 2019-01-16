package com.taikang.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.taikang.entity.Admin;
import com.taikang.mapper.LoginMapper;
import com.taikang.service.LoginService;

public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginMapper loginMapper;
	  public void setLoginMapper(LoginMapper loginMapper) { this.loginMapper
	  =loginMapper; }
	 
	 
	@Override
	public Admin centralLogin(Admin admin) {
		return loginMapper.centralLogin(admin);
	}

	@Override
	public void changepsd(String dpt, String newpsd) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Admin branchLogin(Admin admin) {
		return loginMapper.branchLogin(admin);
	}


	@Override
	public void changepsd(int id, String newpsd) {
		loginMapper.changepsd(id,newpsd);
		
	}

}
