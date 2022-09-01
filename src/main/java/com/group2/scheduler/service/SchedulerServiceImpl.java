package com.group2.scheduler.service;

import org.springframework.beans.factory.annotation.Autowired;

public class SchedulerServiceImpl implements SchedulerService {

	@Autowired
	SchedulerMapper schedulerMapper;
	
	@Override
	public int signup() {
		
		return schedulerMapper.signup();
	}
	
}
