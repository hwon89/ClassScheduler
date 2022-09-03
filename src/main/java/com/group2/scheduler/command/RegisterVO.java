package com.group2.scheduler.command;

public class RegisterVO extends EnrollVO {
	int id;
	int userid;
	int tutorid;
	
	public RegisterVO() {}

	public RegisterVO(int userid, int tutorid) {
		this.userid = userid;
		this.tutorid = tutorid;
	}
	
	public RegisterVO(int id, int userid, int tutorid) {
		this.id = id;
		this.userid = userid;
		this.tutorid = tutorid;
	}

	@Override
	public String toString() {
		return "RegisterVO [id=" + id + ", userid=" + userid + ", tutorid=" + tutorid + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
