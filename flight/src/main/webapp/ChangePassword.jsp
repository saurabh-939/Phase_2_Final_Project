<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
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
        <a class="nav-link"  data-toggle="modal" data-target="#exampleModal" href="#">Change Password</a>
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
	  
	  	int id=1;
	  	Connection con = null;
	  	PreparedStatement ps = null;
	  	String p1=(String)session.getAttribute("p1");
	    String p2=(String)session.getAttribute("p2");
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost/airways";
		String username="root";
		String db_password="root";
		String sql="update adminlogin set password=? where id="+id;
	    con=DriverManager.getConnection(url,username,db_password);
		ps = con.prepareStatement(sql);
		ps.setString(1,p1);
		
		int result = ps.executeUpdate();
		
		if(result==1){ 
			
		}
		
		
		con.close();
		   
}
		catch(Exception e)
{
		e.printStackTrace();
}


%>
 	

   
  <div class="container">
  	<%
	String msg=(String)session.getAttribute("yes");
	if(msg!=null){ %>
			
		
		<div class="alert alert-success alert-dismissible fade show" role="alert">
  		<strong>Password Updated Successfully</strong> 
  	   <button type="button" onclick="close"class="close" data-dismiss="alert" aria-label="Close">
    	<span aria-hidden="true">&times;</span>
  		</button>
		</div>
			
			
		<% }%>
    <a  class="btn btn-info float-right mb-3"href="adminpanel.jsp">Back</a>
  <h4 class="text-center m-4">Change Password</h4>
  <form action="changepwd" method="post">
          <div class="form-group">
    	<label for="exampleInputEmail1">New Password</label>
    	<input type="password" class="form-control"id="pass1" name="pass1">
   
  	</div>
  <div class="form-group">
    	<label for="exampleInputPassword1">Confirm New Password</label>
  		
    	<input type="password" class="form-control"id="pass2" name="pass2">
  </div>
 
        <button type="submit" class="btn btn-primary">Update</button>
         </form>

<div class="mt-6">

    
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    





























































































































































      
 
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
