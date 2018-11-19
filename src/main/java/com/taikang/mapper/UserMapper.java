package com.taikang.mapper;

import java.util.List;

import com.taikang.entity.Admin;
import com.taikang.entity.Users;

public interface UserMapper {
	public void addUser(Users u);
	public List<Users> selectUser(String db);
	public void deleteUser(int id);
	public Admin checkLogin(Admin admin);
	public List<Users> selectAll() ;
}
