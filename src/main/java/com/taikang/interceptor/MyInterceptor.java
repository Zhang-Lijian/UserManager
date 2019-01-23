package com.taikang.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import com.taikang.entity.Admin;

public class MyInterceptor implements HandlerInterceptor {
	private static final String[] IGNORE_URI = { "login","html" };

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//System.out.println("preHandle方法执行了...");
		boolean flag = false;
		String servletPath = request.getServletPath();
		//System.out.println(servletPath);
		for (String s : IGNORE_URI) {
			if (servletPath.contains(s)) {
				flag = true;
				break;
			}
		}
		if (flag == false) {
			Admin admin = (Admin) request.getSession().getAttribute("admin");
			if (admin == null) {
//				request.setAttribute("error", "您还没有登录，请登录！");
//				request.getRequestDispatcher("login").forward(request, response);
				response.sendRedirect("login");
			} else {
				flag = true;
			}
		}
		return flag;
	}

//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//		System.out.println("postHandle方法执行了...");
//	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		//System.out.println("afterCompletion方法执行了...");
	}

}
