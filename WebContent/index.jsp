<%@page import="com.connection.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!--  use external css dada-->
   <link href="scc/background.css"  rel="stylesheet" type="text/css"/>

<title>Index</title>
</head>
<body>
<h1> ye index hai</h1>



<script
  src="https://code.jquery.com/jquery-3.6.2.min.js"
  integrity="sha256-2krYZKh//PcchRtd+H+VyyQoZ/e3EcrkxhM8ycwASPA="
  crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
 <!-- external java script use dada -->
<script src="javascript/jsfirst.js" type="text/javascript"></script>
 
  
   <script >

</script>

<div id="a">fsdk</div>
<%
	Connection con=ConnectionFactory.getConnection();
%>
<h1><%=con %></h1>

</body>
</html>