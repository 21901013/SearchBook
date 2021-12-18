package com.crud.user;

public class UserVO {
	private int id;
	private String userid;
	private String password;
	private String numPhone;
	
	
	public String getNumPhone() {
		return numPhone;
	}
	public void setNumPhone(String numPhone) {
		this.numPhone = numPhone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
