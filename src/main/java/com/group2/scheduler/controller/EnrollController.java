package com.group2.scheduler.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.group2.scheduler.command.EnrollVO;
import com.group2.scheduler.command.RegisterVO;
import com.group2.scheduler.service.SchedulerService;

@Controller
@RequestMapping("/enroll")
public class EnrollController {
	
	@Autowired
	@Qualifier ("SchedulerService")
	SchedulerService schedulerService;
	
	
	@RequestMapping("/list")
	public String enrollList(Model model) {
		List<EnrollVO> list = schedulerService.getList();
		model.addAttribute("list", list);
		
		return "enroll/list";
	}
	
	@RequestMapping("/detail")
	public String enrollDetail(@RequestParam("id") int id,
			Model model) {
		int result = schedulerService.countTutorId(id);
		model.addAttribute("countTutorId", result);
		
		EnrollVO list = schedulerService.getDetail(id);
		System.out.println(list.toString());
		model.addAttribute("list", list);
		
		return "enroll/detail";
	}
	
	@RequestMapping("/register")
	public String register(@RequestParam("sessionId") int userId,
						   @RequestParam("id") int tutorId,
						   Model model
						   ) {
		
		int result = schedulerService.countTutorId(tutorId);
		
		model.addAttribute("countTutorId", result);
		
		if(result >= 5) {
			
			return "redirect:/enroll/list";
		} else {
			RegisterVO vo = new RegisterVO(userId, tutorId);
			schedulerService.register(vo);
			
			return "redirect:/enroll/list";
		
		}
	
	
	
	}
}
