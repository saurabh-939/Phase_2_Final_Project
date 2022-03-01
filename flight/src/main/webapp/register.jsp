<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
        <a class="nav-link" href="index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="SearchFlights.jsp">Search Flight</a>
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
 <div class="container mb-4">
  <h4 class="text-center mb-2 mt-4">Customer Registration</h4>

  <%String msg = (String)session.getAttribute("success");if(msg!=null){ %>
  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong><%  out.print(msg); %></strong> 
  <button type="button"  onclick="close"class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<%} %>




<script>
function close(){
	<%
	session.invalidate();
	%>
}
</script>
    <form action="register" method="post">
      <div class="form-row">
    <div class="form-group col-md-6">
      <label for="fname">First Name</label>
      <input type="text" class="form-control" name="fname" required>
    </div>
    <div class="form-group col-md-6">
      <label for="lname">Last Name</label>
      <input type="text" class="form-control" name="lname" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="email">Email</label>
      <input type="email" class="form-control" name="email"required> 
    </div>
    <div class="form-group col-md-6">
      <label for="password">Password</label>
      <input type="password" class="form-control" name="password" required>
    </div>
  </div>
 <div class="mt-3">

  <button type="submit" class="btn btn-primary">Sign Up</button>
    <a  class="btn btn-info ml-4" href="customerlogin.jsp">Sign In</a>
 </div> 
</form>
  </div>
  
  </body>
   <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
  
  </html>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
