<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@include file="index.jsp" %>
</head>
<body>
<div class="container mt-5">
  <h2 class="mb-4">Login Section</h2>
  <div class="row" offset-4>
   <form action="LoginSection.jsp" method="post">
    <!-- Email -->
    <div class="mb-3 col-4">
      <label for="exampleInputEmail1" class="form-label">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" 
             name="email" placeholder="Enter Email.." required>
    </div>
    
    <!-- Password -->
    <div class="mb-3 col-4">
      <label for="exampleInputPassword1" class="form-label">Password</label>
      <input type="password" class="form-control" id="exampleInputPassword1"
             name="pass" placeholder="Enter password.." required>
    </div>
    
    <!-- Submit -->
    <button type="submit" class="btn btn-primary">Login</button>
  </form>
  
  
  
  
  </div>
 
</div>
</body>
</html>
