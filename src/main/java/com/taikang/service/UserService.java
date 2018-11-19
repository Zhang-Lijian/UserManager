package com.taikang.service;

import java.util.List;

import com.taikang.entity.Admin;
import com.taikang.entity.Users;

public interface UserService {
	public List<Users> selectUser(String db);
	public List<Users> selectAll();
	public void addUser(Users u);
	public void deleteUser(int id);
	public Admin checkLogin(Admin admin);
}
