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
        <a class="nav-link" href="index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="SearchFlights.jsp">Book Flight</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admin.jsp">Admin Login</a>
      </li>
      <li class="nav-item">
           <a class="nav-link" href="customerlogin.jsp">Customer Login</a>
      </li>
 
    </ul>
  </div>
  </nav>
  <div class="container">
  <h4 class="text-center mt-2 mb-2">Book Tickets</h4>
  

   <form action="search" method="post">
 
    
  <div class="form-row">
  
        <div class="form-group col-md-4">
    <label for="src">From</label>
      <select id="src" class="form-control" name="src">
        <option selected>Select City</option>
        <option value="kolhapur">Kolhapur</option>
        <option value="pune">Pune</option>
        <option value="mumbai">Mumbai</option>
          <option value="delhi">Delhi</option>
      </select>
    </div>
    <div class="form-group col-md-4">
      <label for="to">To</label>
      <select id="dest" class="form-control" name="dest">
        <option selected>Select City</option>
        <option value="kolhapur">Kolhapur</option>
        <option value="pune">Pune</option>
        <option value="mumbai">Mumbai</option>
          <option value="delhi">Delhi</option>
      </select>
     
    </div>
         <div class="form-group col-md-4">
    <label for="inputCity">Available Date</label>
      <input type="date" class="form-control" name="date">
    <!--   <input type="hidden" value="search" name="ip">  -->
  
     
  </div>
  </div>
 
  <button type="submit" class="btn btn-primary">Search Flight</button>
</form>


<div>

<% try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url="jdbc:mysql://localhost/airways";
	String username="root";
	String password="root";
	
	String src=(String)session.getAttribute("src"); 
	String dest=(String)session.getAttribute("dest"); 
	String date=(String)session.getAttribute("date"); 

	String query="select * from flights where src="+'"'+src+'"'+"and dest="+'"'+dest+'"'+"and available_date="+'"'+date+'"';
	Connection conn=DriverManager.getConnection(url,username,password);
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(query);
	  
	
	%>
	

<table class="table table-dark mt-4">
  <thead>
    <tr>
      <th scope="col">Flight No</th>
      <th scope="col">Airlines</th>
      <th scope="col">From</th>
      <th scope="col">To</th>
       <th scope="col">Capacity</th>
       <th scope="col">Date</th>
        <th scope="col">Price</th>
       <th scope="col">Book</th>
    </tr>
  </thead>
 
  <tbody>

  <% while(rs.next())
{

%>
   <tr>
      <th scope="row"><%= rs.getInt("flight_number") %></th>
      <td><%= rs.getString("airline") %></td>
      <td><%=rs.getString("src") %></td>
      <td><%=rs.getString("dest") %></td>
       <td><%=rs.getInt("capacity") %></td>
      <td><%=rs.getString("available_date") %></td>
      <td><%=rs.getString("price") %></td>
      <td><a class="btn btn-info" href="customerlogin.jsp">Book Flight</a></td>
       </tr>
   <%} %>
  </tbody>

   
   <%

    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }%>
</tbody>
</table>
</div>

</div>



</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</html>   
  


      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      