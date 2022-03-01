<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap.min.css" >

    <title>Flight Booking</title>
  </head>
  <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">FlyAway</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Welcome <%String email= request.getParameter("email"); out.print(email); %> </a>
      </li>
   
   
      <li class="nav-item">
        <a class="nav-link" href="FlightBooked.jsp?email=<%String email1= request.getParameter("email"); out.print(email1); %>">Booking History</a>
      </li>
   
      <li class="nav-item">
        <a class="nav-link" href="customerlogin.jsp">Logout</a>
      </li>
 
    </ul>
  </div>
  </nav>
  <div class="container">
  <h4 class="text-center mt-2 mb-2">Booked Ticket History </h4>
  <a href="bookflights.jsp" class="float-right btn btn-info mb-4">Back</a>
  
  <% try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url="jdbc:mysql://localhost/airways";
	String username="root";
	String password="root";
	String mail=request.getParameter("email"); 
	String query="select * from passenger where email="+"'"+mail+"'";		     
	Connection conn=DriverManager.getConnection(url,username,password);
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(query);
	  
	%>
	
	<table class="table table-dark mt-4">
  <thead>
    <tr>
      <th scope="col">Flight No</th>
      <th scope="col">No of ticket</th>
      <th scope="col">From</th>
      <th scope="col">To</th> 
       <th scope="col">Booking Date</th>
       <th scope="col">airlines</th>
	
    </tr>
  </thead>
 
  <tbody>
	
	  <% while(rs.next())
{

%>

   <tr>
      <th scope="row"><%= rs.getInt("flight_id") %></th>
      <td><%= rs.getInt("no_of_passenger") %></td>
      <td><%=rs.getString("src") %></td>
      <td><%=rs.getString("dest") %></td>
       <td><%=rs.getDate("booking_date") %></td>
      <td><%=rs.getString("airlines") %></td>
       </tr>
   <%} %>
  </tbody>
  </table>
   


   <%

    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }%>
  </div>
  </body>
  </html>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  