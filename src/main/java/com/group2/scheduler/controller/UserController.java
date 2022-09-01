package com.group2.scheduler.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.group2.scheduler.service.SchedulerService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("SchedulerService")
	SchedulerService schedulerService;
	
	//로그인 페이지
	@RequestMapping("/login")
	public String login() {
		
		
		
		return "user/login";
	}
	
	//회원가입 페이지
	@RequestMapping("/join")
	public String join() {
		
		
		
		return "user/join";
	}
	
	//로그인 기능
	@RequestMapping("/signin") 
	public String signIn(){
		
		return "redirect:/enroll/list";
	}
	
	//회원가입 기능
	@RequestMapping("/signup")
	public String signUp() {
		
		schedulerService.signup();
		
		return "redirect:/user/login";
	}
}
