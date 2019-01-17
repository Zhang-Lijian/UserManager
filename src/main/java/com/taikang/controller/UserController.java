package com.taikang.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.taikang.entity.Admin;
import com.taikang.entity.Users;
import com.taikang.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userServiceImpl;
	@RequestMapping("queryBydpt")
	public String selectUser(@RequestParam("department") String dpt, Map<String, List<Users>> m) {		
		List<Users> user= userServiceImpl.queryBydpt(dpt);
		m.put("list", user);
		return "main";
	}
	@RequestMapping("addUser")
	public String addUser(Users u,Map<String, List<Users>> m) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		u.setApplytime(sdf.format(date));
		userServiceImpl.addUser(u);
		Users u1 = userServiceImpl.queryByid(u.getId());
		List<Users> list =new ArrayList<Users>();
		list.add(u1);
		m.put("list", list);
		return "main";
	}
	@RequestMapping("deleteUser")
	public String delete(@RequestParam("id")int id) {
		userServiceImpl.deleteUser(id);	
		return "forward:selectUser";
	}
	@RequestMapping("changeStatus")
	public String changeStatus(@RequestParam("id")int id) {
		userServiceImpl.changeStatus(id);	
		return "main";
	}
	@RequestMapping("updateUI")
	public String update(@RequestParam("id")int id,Map<String, Users> m) {
		Users u = userServiceImpl.queryByid(id);
		m.put("users", u);	
		return "update";
	}
	@RequestMapping("update")
	public String update(Users u,Map<String, List<Users>> m) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		u.setEndtime(sdf.format(date));
		userServiceImpl.update(u);
		Users u1 = userServiceImpl.queryByid(u.getId());
		List<Users> list =new ArrayList<Users>();
		list.add(u1);
		m.put("list", list);
		return "main";
	}
	@RequestMapping("queryByoa")
	public String queryByoa(@RequestParam("oa")String oa, @RequestParam("dpt")String dpt,Map<String, List<Users>> m,HttpSession session) {
		Admin ad = (Admin)session.getAttribute("admin");
		List<Users> user;
		if(!ad.getDepartment().equals("管理员")) {
			user = userServiceImpl.query(oa,dpt);
		}else {
			user = userServiceImpl.queryByoa(oa);
		}
		m.put("list", user);
		return "main";
	}
	
	@RequestMapping("queryByoa2")
	public String queryByoa2(@RequestParam("oa")String oa, @RequestParam("institution")String ins,Map<String, List<Users>> m,HttpSession session) {		
		List<Users> user = userServiceImpl.queryByoa2(oa,ins);		
		m.put("list", user);
		return "main";
	}
	
	@RequestMapping("queryByins")
	public String queryAll(@RequestParam("institution") String ins,Map<String, List<Users>> m) {
		List<Users> user = userServiceImpl.queryByins(ins);
		m.put("list", user);
		return "main";
	}
	
}
