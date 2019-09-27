package com.yi.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yi.domain.Login;
import com.yi.domain.Manager;
import com.yi.domain.Member;
import com.yi.service.MemberServiceHandlerDao;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberServiceHandlerDao mService;
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void join() {
		logger.info("=================join");
		
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPost(Member member, RedirectAttributes ratt) throws Exception {
		logger.info("=================joinPost");
		logger.info("=================member="+member);
		mService.insertMember(member);
		ratt.addFlashAttribute("joinResult", "success");
		return "redirect:/member/login";
	}
	

	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public ResponseEntity<String> check(Member member) throws Exception {
		logger.info("=================check");
		ResponseEntity<String> entity = null;
		Member m = mService.selectDuplMember(member);
		if(m!=null) {
			entity = new ResponseEntity<>("duplicate",HttpStatus.OK);
		}else {
			entity = new ResponseEntity<>("success",HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() {
		logger.info("=================login");
		
	}
	
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPost(Member member,Model model) throws Exception {
		logger.info("=================loginPost");
		logger.info("=================member="+member.toString());
		Member loginMember = mService.selectlMemberByIdPass(member);
		
		if(loginMember == null) {//로그인 정보 없음.
			model.addAttribute("loginVO", null);
		}else {
			Login login = new Login();
			login.setUserid(loginMember.getMbId());
			login.setUsername(loginMember.getMbPassword());
			model.addAttribute("loginVO", login);		
		}
	}
	@RequestMapping(value = "/loginOut", method = RequestMethod.GET)
	public String loginOut(HttpServletRequest req) {
		logger.info("=================loginOut");
		
		req.getSession().removeAttribute("Auth");
		req.getSession().removeAttribute("dest");
		return "redirect:/";
	}
	
	@RequestMapping(value="/managerLogin", method=RequestMethod.GET)
	public void managerLogin() throws Exception{
		
		logger.info("===================managerLogin");
	}
	@RequestMapping(value="/managerLoginPost", method=RequestMethod.POST)
	public void managerLoginPost(Manager manager,Model model) throws Exception{
		
		logger.info("===================managerLoginPost");
		logger.info("===================manager="+manager);
		Manager mg = mService.selectManager(manager);
		logger.info("===================mg="+mg);
		model.addAttribute("loginVO", mg);
	}
	
	@RequestMapping(value="/managerLogOut", method=RequestMethod.GET)
	public String managerLogOut(HttpServletRequest req) throws Exception{
		
		logger.info("===================managerLogOut");
		
		req.getSession().removeAttribute("MAuth");
		req.getSession().removeAttribute("dest");
		return "redirect:/";
	}
}















