package com.taikang.mapper;

import java.util.List;

import com.taikang.entity.Admin;
import com.taikang.entity.Users;

public interface UserMapper {
	public int addUser(Users u);
	public List<Users> selectUser(String db);
	public void deleteUser(int id);
	public Admin checkLogin(Admin admin);
	public List<Users> selectAll() ;
	public void changeStatus(int id);
	public List<Users> query(String oa,String dpt);
	public List<Users> queryByoa(String oa);
	public void update(Users u);
	public Users queryByid(int id);
	public void changepsd(String dpt, String newpsd);
}
