package com.group2.scheduler.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/enroll")
public class EnrollController {
	
	//신청 리스트 화면
	@RequestMapping("/list")
	public String list() {
		
		return "enroll/list";
	}
}
