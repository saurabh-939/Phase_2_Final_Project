package com.entity;

public class Customer {
private  int id;
private String fname;
private String lname;
private String email;
private String password;

public Customer(String fname,String lname,String email,String password) {
	super();
	this.fname=fname;
	this.lname=lname;
	this.email=email;
	this.password=password;
}
public Customer() {
	
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getLname() {
	return lname;
}

public void setLname(String lname) {
	this.lname = lname;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

}
