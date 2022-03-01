package com.entity;

public class AdminLogin {
	private String email;
	private String password;
	
	public AdminLogin(String email,String password) {
		super();
		this.email=email;
		this.password=password;
	}
	public AdminLogin() {
		
	}
	public String getEmail1() {
		return email;
	}
	public void setEmail1(String email) {
		this.email = email;
	}
	public String getPassword1() {
		return password;
	}
	public void setPassword1(String password) {
		this.password = password;
	}

}
