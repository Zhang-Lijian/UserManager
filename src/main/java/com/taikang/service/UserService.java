package com.taikang.service;

import java.util.List;
import com.taikang.entity.Users;

public interface UserService {
	public List<Users> selectAll();
	public int addUser(Users u);
	public void deleteUser(int id);
	public void changeStatus(int id);
	public List<Users> query(String oa, String dpt);
	public List<Users> queryByoa(String oa);
	public void update(Users u);
	public Users queryByid(int id);
	public void changepsd(String dpt, String newpsd);
	public List<Users> queryByins(String ins);
	public List<Users> queryByoa2(String oa, String ins);
	public List<Users> queryBydpt(String dpt);
}
