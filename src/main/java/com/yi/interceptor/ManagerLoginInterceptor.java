package com.yi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

public class ManagerLoginInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(ManagerLoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		return super.preHandle(request, response, handler);
	}
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("===================ManagerLoginInterceptorPost");
		HttpSession session = request.getSession();
		
		Object loginVO = modelAndView.getModel().get("loginVO");
		
		if(loginVO!=null) {
			logger.info("===================로그인 성공");
			session.setAttribute("MAuth", loginVO);
			Object dest = session.getAttribute("dest");
			String path = (dest !=null) ? (String) dest : request.getContextPath()+"manager/managerMain";
			response.sendRedirect(path);
		}else {
			logger.info("===================아이디 비번 틀렸거나 없음");
			session.setAttribute("loginResult", "fail");
			response.sendRedirect(request.getContextPath()+"/member/managerLogin");
		}
	}


	
}
