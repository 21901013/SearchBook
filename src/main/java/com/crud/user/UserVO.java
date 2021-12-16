package com.crud.user;

public class UserVO {
	private int id;
	private String userid;
	private String password;
	private String email;
	private String numPhone;
	private int numBook;
	
	
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumPhone() {
		return numPhone;
	}
	public void setNumPhone(String numPhone) {
		this.numPhone = numPhone;
	}
	public int getNumBook() {
		return numBook;
	}
	public void setNumBook(int numBook) {
		this.numBook = numBook;
	}
	
}
