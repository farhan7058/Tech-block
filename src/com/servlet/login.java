package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.ConnectionFactory;
import com.data_access_object.userdao;
import com.entity.massageerror;
import com.entity.user;


public class login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		String email= request.getParameter("email");
	    String password=  request.getParameter("password");
	
	  
	  
	  
	  
	try {
		userdao dao= new userdao(ConnectionFactory.getConnection());
		//user type ka object h s 
		//kio k hum ne userdao m user type ka method banaya tha getvalue jo k user ko return krta hai isliye
		user s=dao.getvalue(email, password);
		
		if(s==null) {
			
			massageerror msg=new massageerror("Please Enter Valid Password Or Email!!!" ,"error","alert-danger");
			HttpSession j=request.getSession();
			
			j.setAttribute("snd", msg);
			
			response.sendRedirect("login.jsp");
			
			
		}else {
			//jab tak brower chalo rahega tb tak e login rahe ga iski madase
			HttpSession j=request.getSession();
			
			j.setAttribute("current",s);
			response.sendRedirect("profile.jsp");
			
			
		}
		  
		  
		  
		  
		  
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	  
	
	
	
	
	
	}

}
