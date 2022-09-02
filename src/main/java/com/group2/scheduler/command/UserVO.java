package com.group2.scheduler.command;

public class UserVO {

	private String name;
	private String userid;
	private String pw;
	private String valid_pw;
	
	public UserVO() {}

	public UserVO(String name, String userid, String pw) {
		this.name = name;
		this.userid = userid;
		this.pw = pw;
	}

	@Override
	public String toString() {
		return "UserVO [name=" + name + ", userid=" + userid + ", pw=" + pw + ", valid_pw=" + valid_pw + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getValid_pw() {
		return valid_pw;
	}

	public void setValid_pw(String valid_pw) {
		this.valid_pw = valid_pw;
	}

}
