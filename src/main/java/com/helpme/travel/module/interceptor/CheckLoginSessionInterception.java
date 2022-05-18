package com.helpme.travel.module.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;





public class CheckLoginSessionInterception extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String url="/host/loginForm";
		
		if (request.getSession().getAttribute("sessName") != null) {
			// by pass
		} else {
			System.out.println("비정상적인 접근");
			response.sendRedirect(url); 
            return false;
		}
		
		return super.preHandle(request, response, handler);
	}
	
}
