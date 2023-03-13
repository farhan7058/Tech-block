package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.entity.post;
import com.entity.user;

/**
 * Servlet implementation class postservlet
 */
public class postservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int cid=Integer.parseInt("request.getParameter(cid)");
		String ptitle=request.getParameter("ptitle");
        String pcontent=request.getParameter("pcontent");
        String pcode=request.getParameter("pcode");
     
      //get current uer id
      HttpSession session=request.getSession();
      user uobj=(user)session.getAttribute("current");
      int userid=uobj.getId();
      	
      response.setContentType("text/html");
      PrintWriter out=response.getWriter();
      out.print(ptitle);
      
		
	
	
	
	}

}
