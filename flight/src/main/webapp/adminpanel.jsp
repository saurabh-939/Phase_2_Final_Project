<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
      <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap.min.css" >

    <title>Flight</title>
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
        <a class="nav-link" href="#">Welcome Admin</a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="ChangePassword.jsp">Change Password</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admin.jsp">Logout</a>
      </li>
   
    </ul>
  </div>

</nav>

<%
try
{
	  String p1="admin";
	    String p2=(String)session.getAttribute("p2");
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost/airways";
		String username="root";
		String password="root";
		String q="update adminlogin set password="+"'"+p1+"'"+"where id=1";
		Connection con=DriverManager.getConnection(url,username,password);
		Statement stmt1=con.createStatement();
		ResultSet rs1=stmt1.executeQuery(q);
		rs1.next();
 		rs1.close();
		stmt1.close();
		con.close();
}
		catch(Exception e)
{
		e.printStackTrace();
}


%>
   
  
  
  <div class="container">
    <a  class="btn btn-info float-right mb-3"href="admin.jsp">Logout</a>
  <h4 class="text-center m-4">Schedule Flights</h4>
  
  	<%
	String msg=(String)session.getAttribute("flight");
	if(msg!=null){ %>
			
		
		<div class="alert alert-success alert-dismissible fade show" role="alert">
  		<strong>Flight Added Successfully</strong> 
  	   <button type="button" onclick="close"class="close" data-dismiss="alert" aria-label="Close">
    	<span aria-hidden="true">&times;</span>
  		</button>
		</div>
			
			
		<% }%>

  <form action="flights" method="post">
 
    
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">Airlines Name</label>
      <select id="airlines" class="form-control" name="airline">
        <option selected>Select Airlines</option>
        <option value="Airindia">AirIndia</option>
        <option value="Indigo">Indigo</option>
        <option value="Spicejet">Spicejet</option>
          <option value="JetAirways">JetAirways</option>
      </select>
    </div>
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
     
  </div>
  <div class="form-row">
  <div class="form-group col-md-4">
    <label for="inputCity">Capacity</label>
      <input type="number" class="form-control" name="capacity">
     
    </div>
        <div class="form-group col-md-4">
    <label for="inputCity">Available Date</label>
      <input type="date" class="form-control" name="available_date">
     
    </div>
      <div class="form-group col-md-4">
    <label for="inputCity">Price</label>
      <input type="number" class="form-control" name="price">
     
    </div>
  </div>
 
  <button type="submit" class="btn btn-primary">Add Flights</button>
</form>
<div class="mt-6">

    <%
try
{
    
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url="jdbc:mysql://localhost/airways";
	String username="root";
	String password="root";
	String query="select * from flights";
	Connection conn=DriverManager.getConnection(url,username,password);
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(query); %>
<table class="table table-dark mt-4">
  <thead>
    <tr>
      <th scope="col">Flight No</th>
      <th scope="col">Airlines</th>
      <th scope="col">From</th>
      <th scope="col">To</th>
       <th scope="col">Capacity</th>
       <th scope="col">Date</th>
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
    }

%>
</table>
</div>
  
  </div>

</body>
<script>
function close(){
	<% session.invalidate();%>
}
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</html>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
