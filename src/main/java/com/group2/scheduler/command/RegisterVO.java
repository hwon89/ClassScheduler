package com.group2.scheduler.command;

public class RegisterVO {
	int userid;
	int tutorid;
	
	public RegisterVO() {}

	public RegisterVO(int userid, int tutorid) {
		super();
		this.userid = userid;
		this.tutorid = tutorid;
	}
	
	@Override
	public String toString() {
		return "RegisterVO [userid=" + userid + ", tutorid=" + tutorid + "]";
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getTutorid() {
		return tutorid;
	}

	public void setTutorid(int tutorid) {
		this.tutorid = tutorid;
	}
	
}
