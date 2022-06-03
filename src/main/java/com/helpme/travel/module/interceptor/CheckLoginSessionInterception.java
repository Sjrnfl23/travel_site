package com.helpme.travel.module.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		String hostURL = "/host/loginForm";
		String adminURL = "/admin/loginForm";

		String URL = request.getRequestURI();
		String[] splitURL = URL.split("/");

		if (splitURL[1].equals("host")) {
			if (request.getSession().getAttribute("sessName") != null) {
				
			} else {
				System.out.println("호스트 접근");
				response.sendRedirect(hostURL);
				return false;
			}
		} else if (splitURL[1].equals("admin")) {
			if (request.getSession().getAttribute("adminSessName") != null) {

			} else {
				System.out.println("어드민 접근");
				response.sendRedirect(adminURL);
				return false;
			}
		}

		return super.preHandle(request, response, handler);
	}

}
