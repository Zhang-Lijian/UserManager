package com.taikang.service.impl;

import java.util.List;

import com.taikang.entity.Admin;
import com.taikang.entity.Users;
import com.taikang.mapper.UserMapper;
import com.taikang.service.UserService;

public class UserServiceImpl implements UserService{
private UserMapper userMapper;

	public void setUserMapper(UserMapper userMapper) {
	this.userMapper = userMapper;
}

	@Override
	public List<Users> selectUser(String dp) {
		List<Users> u =userMapper.selectUser(dp);
		return u;
	}

	@Override
	public void addUser(Users u) {
		// TODO Auto-generated method stub
		userMapper.addUser(u);
	}

	@Override
	public void deleteUser(int id) {
		userMapper.deleteUser(id);
		
	}

	@Override
	public Admin checkLogin(Admin admin) {
		// TODO Auto-generated method stub
		return userMapper.checkLogin(admin);
	}

	@Override
	public List<Users> selectAll() {
		List<Users> u =userMapper.selectAll();
		return u;
	}

}
