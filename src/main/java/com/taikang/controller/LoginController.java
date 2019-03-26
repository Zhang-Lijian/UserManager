package com.taikang.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.taikang.entity.Admin;
import com.taikang.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginServiceImpl;
	@RequestMapping("login")
	public String login(Admin admin,HttpServletRequest request) {
		Admin result;
		if(admin.getDepartment()==null) {
			result = loginServiceImpl.centralLogin(admin);
		}else {
			result = loginServiceImpl.branchLogin(admin);
		}	
		if(result!=null) {
			request.getSession().setAttribute("admin", result);
			return "redirect:views/admin_index.jsp";
		}else {
			request.setAttribute("error", "密码错误，请重新登陆！");
			return "forward:/index.jsp";
		}
	}
	
	@RequestMapping("changepsd")
	public String changepsd(@RequestParam("newpsd")String newpsd, @RequestParam("currentpsd")String currentpsd,HttpServletRequest request) {
		Admin admin = (Admin)request.getSession().getAttribute("admin");
		admin.setPsd(currentpsd);
		Admin result;
		if(admin.getDepartment()==null) {
			result = loginServiceImpl.centralLogin(admin);
		}else {
			result = loginServiceImpl.branchLogin(admin);
		}	
		if(result==null) {
			request.setAttribute("error", "当前密码不正确");	
			}else {
				int id = result.getId();
				loginServiceImpl.changepsd(id,newpsd);
				request.setAttribute("error", "密码修改成功");
			}
		return "forward:views/changepsd.jsp";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "forward:/index.jsp";
	}
	@RequestMapping("toLoginPage")
	public String toLoginPage() {
		System.out.println("tologinpage");
		return "login";
	}
}
