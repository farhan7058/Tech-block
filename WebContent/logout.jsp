<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="com.entity.massageerror" %>
    <%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
<% 
HttpSession s=request.getSession();
s.removeAttribute("current");
massageerror msg=new massageerror("logout successfully" ,"success","alert-primary");
		
		s.setAttribute("snd",msg);
			response.sendRedirect("login.jsp");
			%>

</body>
</html>