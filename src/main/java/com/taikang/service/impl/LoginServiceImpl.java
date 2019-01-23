package com.taikang.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taikang.entity.Admin;
import com.taikang.mapper.LoginMapper;
import com.taikang.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired 
	private LoginMapper loginMapper;
	
	/*
	 * public void setLoginMapper(LoginMapper loginMapper) {
	 * this.loginMapper=loginMapper; }
	 */
	 	 
	 
	@Override
	public Admin centralLogin(Admin admin) {
		return loginMapper.centralLogin(admin);
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
