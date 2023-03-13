<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>navbar</title>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-ligth bg_color">
  <div class="container-fluid">
    <a class="navbar-brand" href="home.jsp">Techblock</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Learn With Each Other</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
       categories</a>
        <li class="nav-item ">
          <a class="nav-link" href="login.jsp" role="button" >
          <span class="fa fa-user"></span>
       login</a>
               <li class="nav-item ">
          <a class="nav-link" href="registration.jsp" role="button" >
          <span class="fa fa-user-plus"></span>
       registration</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Programming language</a></li>
             <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">tools</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Data Base</a></li>
             <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">IDE</a></li>
          </ul>
        </li>
      
      </ul>
     
    </div>
  </div>
</nav>
</body>
</html>