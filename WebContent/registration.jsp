<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <link href="scc/background.css"  rel="stylesheet" type="text/css"/>
  <link href="scc/fluid background.css"  rel="stylesheet" type="text/css"/>
<head>
<meta charset="UTF-8">
<title>registration</title>
</head>
<body style="background-color:#aed581">
<%@ include file="navbar.jsp" %>


<main style="margin-top:50px">
<div class="container">
<div class="col-md-4 offset-md-4">
<div class="card" style="background-color:#dcedc8">

<div class="card-header text-center">
<span class="fas fa-user-plus fa fa-2x "></span>
 
<h3 style="text-align:center">Registration</h3>

</div>
<div class="card-body">

<form action="registration" method="get">
<div class="form-group">
    <label for="username">User name</label>
    <input type="text"  name="name" class="form-control" id="username" aria-describedby="username" placeholder="Enter Username">
    <br>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email"  name="email"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <br>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <br>
    <div class="form-group">
    
    <textarea  class="form-control"  id="textarea"  name="about" placeholder="tell me about yourself"></textarea>
  </div>
   
  
  <div class="form-group">
    <label for="gender"> Enter Gender</label>
    <br>
    <input type="radio"  id="gender"  name=gender value="male">Male
     <br>
      <input type="radio"  id="gender" name=gender value="female" >Female
       <br>
  </div>
  
  
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" name="check" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">agree term and conditions</label>
  </div>
  <button type="submit"  class="btn btn-lg" style="background-color:#9e9d24">Submit</button>
</form>


</div>
<div class="card-footer">

</div>





</div>





</div>




</div>

</main>


















 <!-- script -->
  <script
  src="https://code.jquery.com/jquery-3.6.2.min.js"
  integrity="sha256-2krYZKh//PcchRtd+H+VyyQoZ/e3EcrkxhM8ycwASPA="
  crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  
</body>
</html>