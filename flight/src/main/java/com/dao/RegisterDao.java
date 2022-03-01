package com.dao;
import java.sql.*;

import com.entity.AdminLogin;
import com.entity.Customer;
import com.entity.CustomerLogin;
import com.servlet.login;


public class RegisterDao {
private Connection con;
public RegisterDao(Connection con) {
	super();
	this.con=con;
}
 public boolean addCustomer(Customer c) {
	 boolean f=false;
	 try {
		 String sql="insert into register(fname,lname,email,password)values(?,?,?,?)";
		 PreparedStatement ps=con.prepareStatement(sql);
		 ps.setString(1,c.getFname());
		 ps.setString(2,c.getLname());
		 ps.setString(3,c.getEmail());
		 ps.setString(4,c.getPassword());
		 int result=ps.executeUpdate();
		 if(result==1) {
			 f=true;
		 }
		 
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	 return f;
 }
 
 public boolean loginCustomer(CustomerLogin cl) {
	 boolean f=false;

	try {
		 String sql="select email,password from register where email=? and password= ?";
		 PreparedStatement ps=con.prepareStatement(sql);
		 ps.setString(1,cl.getEmails());
		 ps.setString(2,cl.getPasswords());
		 ResultSet result=ps.executeQuery();
		f= result.next();
		 if(result.getRow()==1) {
			f=true;
		 }
		
	}catch(Exception e) {
		 e.printStackTrace();
	}
	return f;

	 
 }
 
 public boolean loginAdmin(AdminLogin al) {
	 boolean f=false;

	try {
		 String sql="select email,password from adminlogin where email=? and password=?";
		 PreparedStatement ps=con.prepareStatement(sql);
		 ps.setString(1,al.getEmail1());
		 ps.setString(2,al.getPassword1());
		 ResultSet result=ps.executeQuery();
		f= result.next();
		 if(result.getRow()==1) {
			f=true;
		 }
		
	}catch(Exception e) {
		 e.printStackTrace();
	}
	return f;

	 
 }
 


}
