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

    <title>Customer Login</title>
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

  <h4 class="text-center mb-2 mt-2">Customer Login</h4>
  <form action="login" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control"  name="email">
   
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password">
  </div>
 <div class="form-group">
  <button type="submit" class="btn btn-primary">Sign In</button>
  <a  class="btn btn-info ml-4"  href="register.jsp">Sign Up</a>
  </div>
</form>
  </div>
  
  
  
  </body>
  </html>