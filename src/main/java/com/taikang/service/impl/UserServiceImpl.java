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
		return userMapper.selectUser(dp);
	}

	@Override
	public int addUser(Users u) {
		// TODO Auto-generated method stub
		return userMapper.addUser(u);
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
		return userMapper.selectAll();
		 
	}

	@Override
	public void changeStatus(int id) {
		userMapper.changeStatus(id);
		
	}

	@Override
	public List<Users> query(String oa,String dpt) {
		return userMapper.query(oa,dpt);
		
	}

	@Override
	public List<Users> queryByoa(String oa) {
		return userMapper.queryByoa(oa);
	}

	@Override
	public void update(Users u) {
		userMapper.update(u);
		
	}

	@Override
	public Users queryByid(int id) {
		
		return userMapper.queryByid(id);
	}

	@Override
	public void changepsd(String dpt, String newpsd) {
		
		userMapper.changepsd(dpt,newpsd);
	}

}
