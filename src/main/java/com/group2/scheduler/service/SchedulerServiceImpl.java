package com.group2.scheduler.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group2.scheduler.command.EnrollVO;
import com.group2.scheduler.command.RegisterVO;
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

	@Override
	public List<EnrollVO> myPage(int userId) {
		List<EnrollVO> list = schedulerMapper.myPage(userId);
		return list;
	}
	
	@Override
	public int register(RegisterVO vo) {
		return schedulerMapper.register(vo);
	}
	
	@Override
	public List<EnrollVO> getList() {
		List<EnrollVO> list = schedulerMapper.getList();
		return list;
	}

	@Override
	public void upHit(int max) {
		schedulerMapper.upHit(max);
		
	}

	@Override
	public EnrollVO getListDetail(int id) {
		return schedulerMapper.getDetail(id);
	}

	@Override
	public EnrollVO getDetail(int id) {
		return schedulerMapper.getDetail(id);
	}

	@Override
	public int countTutorId(int tutorId) {
		return schedulerMapper.countTutorId(tutorId);
	}
	
}
