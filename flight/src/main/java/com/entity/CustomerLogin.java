package com.entity;

public class CustomerLogin {
	private String email;
	private String password;
	
	public CustomerLogin(String email,String password) {
		super();
		this.email=email;
		this.password=password;
	}
	public CustomerLogin() {
		
	}
	public String getEmails() {
		return email;
	}
	public void setEmails(String email) {
		this.email = email;
	}
	public String getPasswords() {
		return password;
	}
	public void setPasswords(String password) {
		this.password = password;
	}

}
