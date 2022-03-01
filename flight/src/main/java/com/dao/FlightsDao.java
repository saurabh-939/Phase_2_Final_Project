package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.entity.Flights;
import com.entity.Passenger;


public class FlightsDao {
	private Connection con;
	public FlightsDao(Connection con) {
		super();
		this.con=con;
	}
	
	 public boolean addFlights(Flights flt) {
		 boolean f=false;
		 try {
			 String sql="insert into flights(airline,src,dest,available_date,capacity,price)values(?,?,?,?,?,?)";
			 PreparedStatement ps=con.prepareStatement(sql);
			 ps.setString(1,flt.getAirline());
			 ps.setString(2,flt.getSrc());
			 ps.setString(3,flt.getDest());
			 ps.setString(4,flt.getAvailable_date());
			 ps.setString(5,flt.getCapacity());
			 ps.setInt(6,flt.getPrice());
			 int result=ps.executeUpdate();
			 if(result==1) {
				 f=true;
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return f;
	 }
	 
	 public boolean addPassenger(Passenger p) {
		 boolean f=false;
		 try {
			
			 String sql="insert into passenger(flight_id,no_of_passenger,src,dest,booking_date,airlines,email)values(?,?,?,?,?,?,?)";
			 PreparedStatement ps=con.prepareStatement(sql);
			 ps.setInt(1,p.getFlight_id());
			 ps.setInt(2,p.getPassenger());
			 ps.setString(3,p.getSrc());
			 ps.setString(4,p.getDest());
			 ps.setString(5,p.getBooking_date());
			 ps.setString(6,p.getAirline());
			 ps.setString(7,p.getUser());
		
			 int result=ps.executeUpdate();
			 if(result==1) {
				 f=true;
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return f;
	 }
	 
	
	
	

}
