package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.connection.ConnectionFactory;
import com.data_access_object.userdao;
import com.entity.massageerror;
import com.entity.user;
import com.helper.deletepic;

@MultipartConfig
public class editservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String name=request.getParameter("nameedit");
		String email=request.getParameter("emailedit");
		String password=request.getParameter("passwordedit");
		String gender=request.getParameter("gender");
		
	    String about=request.getParameter("aboutedit");
	    Part part=request.getPart("picedit");
		String picname=part.getSubmittedFileName();//its predefine funtion getsubmitted
		
		
		//get uder fron session
		HttpSession s=request.getSession();
		user u1=(user)s.getAttribute("current");
		 
			
		u1.setName(name);
		u1.setEmail(email);
		u1.setPassword(password);
		u1.setGender(gender);
		String oldpic=u1.getProfile();
		u1.setProfile(picname);
		u1.setAbout(about);
		
		
		try {
		userdao da=new userdao(ConnectionFactory.getConnection());
		boolean ans=da.update(u1);
		if(ans) {
			response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.print("Data Updated In Db");
		//found path of pic
		
		String path=request.getRealPath("/")+"pic"+File.separator+u1.getProfile(); 
		
		//delete old file
		String pathold=request.getRealPath("/")+"pic"+File.separator+oldpic;
		deletepic.delete(pathold);//if true old file deleted
			if(deletepic.savepic(part.getInputStream(), path)) {//if true mean new file uploded
				
				massageerror msg=new massageerror("profile updated" ,"update","alert-success");
				HttpSession j=request.getSession();
				
				j.setAttribute("snd", msg);
				
				response.sendRedirect("profile.jsp");
			}
			else {
				
				massageerror msg=new massageerror("some thing went wrong" ,"error","alert-danger");
				HttpSession j=request.getSession();
				
				j.setAttribute("snd", msg);
				
				response.sendRedirect("profile.jsp");
			}
			
		
		
		
		
		
		
		
		
		
		
		}else {
			massageerror msg=new massageerror("some thing went wrong" ,"error","alert-danger");
			HttpSession j=request.getSession();
			
			j.setAttribute("snd", msg);
			
			response.sendRedirect("profile.jsp");
		}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}

}
