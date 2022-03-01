package com.entity;

public class Flights {
	private  int flight_number;
	private String airline;
	private String src;
	private String dest;
	private String available_date;
	private String capacity;
	private int price;



public Flights(String airline,String src,String dest,String available_date,String capacity,int price) {
	
	super();
	this.airline=airline;
	this.src=src;
	this.dest=dest;
	this.available_date=available_date;
	this.capacity=capacity;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public Flights() {
	
}
public int getFlight_number() {
	return flight_number;
}

public void setFlight_number(int flight_number) {
	this.flight_number = flight_number;
}

public String getAirline() {
	return airline;
}

public void setAirline(String airline) {
	this.airline = airline;
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

public String getAvailable_date() {
	return available_date;
}

public void setAvailable_date(String available_date) {
	this.available_date = available_date;
}

public String getCapacity() {
	return capacity;
}

public void setCapacity(String capacity) {
	this.capacity = capacity;
}
}