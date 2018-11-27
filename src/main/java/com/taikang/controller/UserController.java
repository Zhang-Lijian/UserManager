package com.taikang.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.taikang.entity.Admin;
import com.taikang.entity.Users;
import com.taikang.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userServiceImpl;

	public void setUserServiceImpl(UserService userServiceImpl) {
		this.userServiceImpl = userServiceImpl;
	}
	
	@RequestMapping("selectUser")
	public String selectUser(HttpSession session, Map<String, List<Users>> m) {
		Admin ad = (Admin)session.getAttribute("admin");
		//System.out.println(ad.getDepartment());
		List<Users> user;
		if(!ad.getDepartment().equals("管理员")) {
			user = userServiceImpl.selectUser(ad.getDepartment());
		}else {
			user = userServiceImpl.selectAll();
		}
		
		m.put("list", user);
		return "main";
	}
	@RequestMapping("addUser")
	public String addUser(Users u) {
		userServiceImpl.addUser(u);
		return "forward:selectUser";
	}
	@RequestMapping("deleteUser")
	public String delete(@RequestParam("id")int id) {
		userServiceImpl.deleteUser(id);
		
		return "forward:selectUser";
	}
	@RequestMapping("login")
	public String checkLogin( Admin admin,HttpServletRequest request) {
		
		Admin ad = userServiceImpl.checkLogin(admin);
		if(ad!=null) {
			request.getSession().setAttribute("admin", ad);
			return "redirect:views/admin_index.jsp";
		}else {
			return "forward:/index.html";
		}
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "forward:/index.html";
	}
}
