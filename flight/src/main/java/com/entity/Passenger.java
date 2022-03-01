package com.entity;

public class Passenger {
private int p_id;
private int flight_id;
private String src;
private String dest;
private String booking_date;
private int passenger;
private String airline;
private String user;

public  Passenger(int flight_id,String src,String dest,int passenger,String airline,String booking_date,String user) {
	super();
	this.flight_id=flight_id;
	this.src=src;
	this.dest=dest;
	this.passenger=passenger;
	this.booking_date=booking_date;
	this.airline=airline;
	this.user=user;
	
}
public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
}
public String getAirline() {
	return airline;
}
public void setAirline(String airline) {
	this.airline = airline;
}
public Passenger() {
	
}
public int getP_id() {
	return p_id;
}
public void setP_id(int p_id) {
	this.p_id = p_id;
}
public int getFlight_id() {
	return flight_id;
}
public void setFlight_id(int flight_id) {
	this.flight_id = flight_id;
}
public String getSrc() {
	return src;
}
public void setSrc(String src) {
	this.src = src;
}
public String getDest() {
	return dest;
}
public void setDest(String dest) {
	this.dest = dest;
}
public String getBooking_date() {
	return booking_date;
}
public void setBooking_date(String booking_date) {
	this.booking_date = booking_date;
}
public int getPassenger() {
	return passenger;
}
public void setPassenger(int passenger) {
	this.passenger = passenger;
}


}
