package com.group2.scheduler.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group2.scheduler.command.UserVO;

@Service("SchedulerService")
public class SchedulerServiceImpl implements SchedulerService {

	@Autowired
	SchedulerMapper schedulerMapper;
	
	@Override
	public int signup(UserVO vo) {
		
		return schedulerMapper.signup(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return schedulerMapper.getUser(vo);
	}

	@Override
	public int checkId(UserVO vo) {
		return schedulerMapper.checkId(vo);
	}

	@Override
	public String getPassword(UserVO vo) {
		return schedulerMapper.getPassword(vo);
	}
	
}
