<%@page import="java.util.ArrayList"%>
<%@page import="com.connection.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.entity.user" %>
         <%@ page import="com.entity.massageerror" %>
         <%@ page import="com.data_access_object.*" %>
         <%@page import="com.entity.categories" %>
         <%@page import="java.util.ArrayList" %>
    <%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <link href="scc/background.css"  rel="stylesheet" type="text/css"/>
  <link href="scc/fluid background.css"  rel="stylesheet" type="text/css"/>
<title>profile</title>
</head>
<body style="background-color:#aed581">
<%
//scriptlet m session phle se hi huta h isliye object nhi bananaa padta sesion ka
user getatbt=(user) session.getAttribute("current");

if(getatbt==null){
	
	response.sendRedirect("login.jsp");
}
	%>


	<!-- nov bar -->
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
          <a class="nav-link" href="logout.jsp" role="button" >
          <span class="fas fa-user-alt-slash"></span>
       logout</a>
         <li>
        <a  class="nav-link"  href="#" data-bs-toggle="modal" data-bs-target="#ppp" ><span class="fas fa-external-link-alt">Do Post</span></a>
        </li>
              
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
      <ul class=" navbar-nav mr-rigth" >
      <li class="nav-item">
   <a  class="nav-link" href="#!"  data-bs-toggle="modal" data-bs-target="#exampleModal"><span class="fa fa-user"><%=getatbt.getName() %></span></a>
       </li>
       <li>
        <a  class="nav-link" href="logout.jsp" ><span class="fas fa-user-alt-slash">logout</span></a>
        </li>
         
 </ul>
    </div>
  </div>
</nav>


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



<!-- Button trigger modal -->


<!-- profile  Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  style="background-color:#81c784">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="background-color:#dcedc8">
       <h2>Tech Blog
      </h2>
      </div>
      <div class="modal-body" style="background-color:#dcedc8">
          <div class="container  text-center">
       <img src="pic/<%=getatbt.getProfile()%>" class="img-fluid" width="30px"/>
     
        <h5 class="modal-title" id="exampleModalLabel"><%=getatbt.getName() %></h5>
      
       
      </div>
      
      <div id="profile">
      <!-- table -->
     <table class="table table-striped">
  
    <tr>
      <th scope="row">ID:</th>
       <td><%=getatbt.getId() %></td>
     
      
   </tr>
 

    <tr>
    <th scope="row">Name:</th>
     <td><%=getatbt.getName() %></td>
    </tr>
    <tr>
      <th scope="row">Email:</th>
       <td><%=getatbt.getEmail()%></td>
    </tr>
    <tr>
      <th scope="row">About:</th>
      <td><%=getatbt.getAbout() %></td>
    </tr>
 
</table> 
</div>

        <div id="profile_edit" style="display:none;"  >
      
           <h6 style="font-style: italic;">PLEASE EDIT CAREFULLY</h6>
           <form action="editservlet" method="post" enctype="multipart/form-data">
           
           <table >
           <tr >
           <th> <h6 style="font-style: italic;">Id :</h6></th>
           <td id="id"><%=getatbt.getId() %></td>
           </tr>
           
              <tr >
           <th> <h6 style="font-style: italic;">Name:</h6></th>
           <td><input id="emailedit" type="text"  class="form-control" value="<%=getatbt.getName()%>" name="nameedit"></td>
           </tr>
           
            <tr >
           <th> <h6 style="font-style: italic;">Email :</h6></th>
           <td><input id="emailedit" type="email"  class="form-control" value="<%=getatbt.getEmail()%>" name="emailedit"></td>
           </tr>
           
             <tr >
           <th> <h6 style="font-style: italic;">Password:</h6></th>
           <td><input id="passwordedit" type="password"  class="form-control" value="<%=getatbt.getPassword()%>" name="passwordedit"></td>
           </tr>
           
             <tr >
           <th> <h6 style="font-style: italic;">Gender:</h6></th>
           <td><input id="gender"  class="form-control" value="<%=getatbt.getGender().toUpperCase()%>" name="gender"></td>
           </tr>
          
           <tr >
           <th> <h6 style="font-style: italic;">About:</h6></th>
           <td>  <textarea id="aboutedit" type="text"  class="form-control" name="aboutedit"><%=getatbt.getAbout()%> </textarea></td>
         
        
           
           </tr>
           
           <tr >
           <th> <h6 style="font-style: italic;">New Pic:</h6></th>
           <td>  <input type="file" id="picdit"  class="form-control" name="picedit" ></td>
         
        
           
           </tr>
           
           
           
           
           
           
           </table>
           
           <input type="submit" class="btn  btn-success btn-lg">
           
           
           
           </form>
             
        </div>


    
      </div>
      <div class="modal-footer"  style="background-color:#dcedc8">
        <button  class="btn btn-lg btn-danger"   data-bs-dismiss="modal">Close</button>
        <button id="edit" type="button" class="btn btn-lg btn-success">Edit</button>
      </div>
    </div>
  </div>
</div>
<!-- end profile model -->


<!-- post model -->

<div class="modal fade" id="ppp" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Post Detail</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <form  id="postform"action="postservlet" method="post">
        <div class="form-group">
         <select class="form-control" name="cid">
         
           <option  selected disabled="disabled" style="text-align: center;">........select categories.......</option>
           <%
           postdao post=new postdao(ConnectionFactory.getConnection());
           
           ArrayList<categories> list=post.getallcategory();
           for(categories c:list){
        	%><option value="<%=c.getCid()%>"><%=c.getName() %></option>   
        	<%
           }
           
           
           %>
        
         </select>
        
        
        </div>
        <br>
    
      <div class="form-group">
       <input type="text" placeholder="enter post title"  name="ptitle" class="form-control" >
      </div>
       <br>
       <div class="form-group">
       <textarea  placeholder="enter post content" style="height: 200px"class="form-control"  name="pcontent"></textarea>
      </div>
       <br>
       <div class="form-group"> 
       <textarea  placeholder="enter post program(if any)"   style="height: 200px"class="form-control" name="pcode" ></textarea>
      </div>
       <br>
      <div class="form-group">
      <label style="font-weight: bold; ">Enter Picture: </label>
       <input  type="file" placeholder="enter post pic" name="ppic" class="form-control" >
      </div>
       <br>
       <button class="btn btn-success" type="submit">POST</button>
       </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


 <script
  src="https://code.jquery.com/jquery-3.6.2.min.js"
  integrity="sha256-2krYZKh//PcchRtd+H+VyyQoZ/e3EcrkxhM8ycwASPA="
  crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  

   <script>
   $(document).ready(function(){
	   let editstatus=false;
	   $('#edit').click(function(){
	   if(editstatus==false)
	   {
		   $("#profile").hide();
	    	  $("#profile_edit").show();
	    	  editstatus=true;
	    	  $(this).text("back");
		   
	   }else{
		   
		   $("#profile").show();
	    	  $("#profile_edit").hide();
	    	  editstatus=false;
	    	  $(this).text("Edit");
	   }
	   
	   
	   });
	   
	   
	   
      		  
    	
    	   
    	  
     
      
      
      
      
      
      });
      
   
   
   
   
   
</script>
<!-- post javascript -->
<script type="text/javascript">
$(document).ready(function (e){
	
	
	
	
	$("#postform").on("submit",function(event){
		//this code call when forn submited
		event.preventDefault();
		console.log("you have click n post bbutton")
		let form=new FormData(this);
		//now requestion to server
		
		
		$ajax({
			url:postservlet;
		    
		   type="Post";
		   data:"form";
		   success:function(data,textStatus,jqXHR){
			
			   //success
		   };
		   //if error come so call error function
		   error:function(jqXHR,textStatus,errorThrown){
			   
			   
			   //error
		   },
		   processData:false;
		   contentType:false;
		   
		
		})
		
		
	});
})












</script>


</body>
</html>