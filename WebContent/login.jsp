<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="com.entity.massageerror" %>
    <%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <link href="scc/background.css"  rel="stylesheet" type="text/css"/>
  <link href="scc/fluid background.css"  rel="stylesheet" type="text/css"/>
<meta charset="UTF-8">
<title>login</title>
</head>
<body style="background-color:#aed581">
<%@ include file="navbar.jsp" %>


<main class="d-flex align-items-center " style="margin-top:40px" >

<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">

<div class="card">
<div class="card-header text-center" style="background-color:#dcedc8">
<span class="fas fa-user-alt fa-2x" ></span>
<h3 style="text-align:center">LOGIN</h3>
</div>
  <%
  massageerror m=(massageerror) session.getAttribute("snd");


   if(m!=null){
	   %>
	  
	   <div class="alert <%=m.getCss()%> ">
	   
	   <%=m.getContain() %>
	   
	   </div>
	 <% session.removeAttribute("snd");
	 
   }
	 
   %>






<div class="card-body"  style="background-color:#dcedc8">



<form action="login" method="get">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-lg" style="background-color:#9e9d24">Login</button>
</form>


</div>
<div class="card-footer"  style="background-color:#dcedc8">


</div>




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