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
        <a class="nav-link" href="FlightBooked.jsp">Booking History</a>
      </li>
   
      <li class="nav-item">
        <a class="nav-link" href="customerlogin.jsp">Logout</a>
      </li>
 
    </ul>
  </div>
  </nav>
  <div class="container">
 
  <h4 class="text-center mt-2 mb-2">Book Tickets</h4>
  
  <% try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url="jdbc:mysql://localhost/airways";
	String username="root";
	String password="root";
	
	

	String query="select * from flights where flight_number="+request.getParameter("f_id");
		     
	Connection conn=DriverManager.getConnection(url,username,password);
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(query);
	  
	
	%>
	
	  <% while(rs.next())
{

%> 

  <div class="border border-dark p-4">
<h4 class="text-center mt-2 mb-2">Payment Getway</h4>
<form action="booking" method="post">
   <div class="form-row">
   
     <div class="form-group col-md-6">
    <label for="flight_number">Flight Number</label>
      <input type="number" class="form-control"  value="<%= rs.getInt("flight_number") %>"name="flight_id">
     
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Airlines Name</label>
      <select id="airlines" class="form-control" name="airline">
        <option value="<%= rs.getString("airline") %>" selected><%= rs.getString("airline") %></option>
       
      </select>
    </div>
  
  
     
  </div>
  
     <div class="form-row">
           <div class="form-group col-md-6">
    <label for="src">From</label>
      <select id="src" class="form-control" name="src">
        <option value="<%= rs.getString("src") %>" selected><%= rs.getString("src") %></option>
      
      </select>
      <input type="hidden" value="<%String email1= request.getParameter("email"); out.print(email1); %>" name="user">
    </div>
    
    <div class="form-group col-md-6">
      <label for="to">To</label>
      <select id="dest" class="form-control" name="dest">
        <option value="<%= rs.getString("dest") %>"selected><%= rs.getString("dest") %></option>
      </select>
    </div>
     </div>
  
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="price">Price</label>
    	<input type="number" class="form-control" value="<%= rs.getString("price") %>" id="price" name="price" readonly>
    	
    </div>
    
      <div class="form-group col-md-4">
      <label for="to">No of Passenger </label>
      <input type="number" class="form-control" max="1" name="passenger">
      </select>
    </div>
      <div class="form-group col-md-4">
    <label for="flight_number">Available Date</label>
      <input type="date" readonly class="form-control"  value="<%=rs.getString("available_date") %>"name="booking_date">
     
    </div>
    
  </div>
   <button type="submit" class="btn btn-primary mb-2">Book</button>
</form>
</div>


   <%
}
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
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  