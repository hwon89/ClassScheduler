package com.group2.scheduler.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/")
	public String home() {
		
		System.out.println("실행 완료");
		
		return "redirect:/user/login";
	}
	
}
