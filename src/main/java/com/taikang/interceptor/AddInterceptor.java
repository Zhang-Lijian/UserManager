package com.taikang.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.taikang.entity.Admin;

public class AddInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean flag = false;
		Admin ad = (Admin)request.getSession().getAttribute("admin");
		String dep = request.getParameter("department");
		String ins = request.getParameter("institution");
		if(dep.equals(ad.getDepartment())||ins.equals(ad.getInstitution())) {
			flag=true;
		}
		return flag;
	}	
}
