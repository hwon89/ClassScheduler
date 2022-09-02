package com.group2.scheduler.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group2.scheduler.command.UserVO;
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
	public String signIn(UserVO vo,
						 RedirectAttributes ra,
						 Model model,
						 HttpSession session){
		
		String msg = "";
		
		if (schedulerService.checkId(vo) == 0) { //없는 아이디라면
			
			msg = "아이디가 존재하지 않습니다.";
			ra.addFlashAttribute("msg", msg);
			
			return "redirect:/user/login";
		} else if (!vo.getPw().equals(schedulerService.getPassword(vo))) { //비밀번호가 틀리다면
			
			msg = "비밀번호가 일치하지 않습니다.";
			ra.addFlashAttribute("msg", msg);
			
			return "redirect:/user/login";
		} else { //로그인 성공
			
			model.addAttribute("vo", schedulerService.getUser(vo));
			session.setAttribute("sessionVO", vo);
			return "redirect:/enroll/list";
		}
		
	}
	
	//회원가입 기능
	@RequestMapping("/signup")
	public String signUp(UserVO vo, 
						 RedirectAttributes ra) {
		
		String msg = "";
		System.out.println(vo.toString());
		if (schedulerService.checkId(vo)!= 0) { //기존에 있는 아이디라면
			
			msg = "이미 존재하는 아이디입니다.";
			ra.addFlashAttribute("msg", msg);
			
			return "redirect:/user/join";
		} else if (!vo.getPw().equals(vo.getValid_pw())) { //비밀번호가 틀리다면
			
			msg = "비밀번호가 일치하지 않습니다.";
			ra.addFlashAttribute("msg", msg);
			
			return "redirect:/user/join";
		} else { //회원가입 성공
			
			schedulerService.signup(vo);
			ra.addFlashAttribute("msg", "회원가입을 축하드립니다");
			
			return "redirect:/user/login";
		}
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/user/login";
		
	}
}
