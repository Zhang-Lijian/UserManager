package com.taikang.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.taikang.entity.Admin;
import com.taikang.entity.Users;

public interface UserService {
	public List<Users> selectUser(String db);
	public List<Users> selectAll();
	public int addUser(Users u);
	public void deleteUser(int id);
	public Admin checkLogin(Admin admin);
	public void changeStatus(int id);
	public List<Users> query(String oa, String dpt);
	public List<Users> queryByoa(String oa);
	public void update(Users u);
	public Users queryByid(int id);
	public void changepsd(String dpt, String newpsd);
}
