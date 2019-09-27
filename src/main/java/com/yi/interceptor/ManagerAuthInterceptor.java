package com.yi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ManagerAuthInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(ManagerAuthInterceptor.class);
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("-------------------------ManagerAuthInterceptor postHandler");
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		logger.info("-------------------------ManagerAuthInterceptor preHandler");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("MAuth")==null) {
			logger.info("-------------------------ManagerAuthInterceptor not login");
			saveDest(request);// 원래의 목적지와 매개변수를 저장함.
			response.sendRedirect(request.getContextPath()+"/member/managerLogin");
			return false; // 컨트롤러로 아예 안가게함.
		}
		
		return true;
	}
	
	private void saveDest(HttpServletRequest request) {
		String uri = request.getRequestURI();//목적지
		String query = request.getQueryString();//매개변수
		
		if(query==null || query.equals("null")) {
			query = "";
		}else {
			query = "?"+query;
		}
		
		if(request.getMethod().equalsIgnoreCase("get")) {
			logger.info("dest : "+uri+query);
			request.getSession().setAttribute("dest", uri+query);
		}
		
		
	}
}











































