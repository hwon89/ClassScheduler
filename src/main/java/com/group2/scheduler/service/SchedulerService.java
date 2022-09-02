package com.group2.scheduler.service;

import org.springframework.stereotype.Service;

import com.group2.scheduler.command.UserVO;


public interface SchedulerService {

	public int signup(UserVO vo);
	
	public UserVO getUser(UserVO vo);
	
	public int checkId(UserVO vo);
	
	public String getPassword(UserVO vo);
}
