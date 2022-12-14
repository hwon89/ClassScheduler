package com.group2.scheduler.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.group2.scheduler.command.EnrollVO;
import com.group2.scheduler.command.RegisterVO;
import com.group2.scheduler.command.UserVO;


public interface SchedulerService {

	public int signup(UserVO vo);
	
	public UserVO getUser(UserVO vo);
	
	public int checkId(UserVO vo);
	
	public String getPassword(UserVO vo);
	
	public List<RegisterVO> myPage(int userId);
	
	public int register(RegisterVO vo) throws Exception;
	
	public int getRegister(int registerId);
	
	public int deleteRegister(int id);
	
	public List<EnrollVO> getList();
	
	public void upHit(int max);
	
	public EnrollVO getListDetail(int id);
	
	EnrollVO getDetail(int id);

	public int countTutorId(int tutorId);
}
