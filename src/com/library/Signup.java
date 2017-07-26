package com.library;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Signup  extends HttpServlet{

public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
	
	//getting input from user for signing to library site
	String name= request.getParameter("user");
	String email=request.getParameter("user_email");
	String pass=request.getParameter("pass");
	String re_pass=request.getParameter("re_Pass");
	//store the data which is passed by the user 
	//by calling BookStore method
	if(BookStore.addUser(name,email,pass,re_pass))
		{
		System.out.println("successfully registred");
		response.sendRedirect("/login.jsp");
		}
	else{
		//error page 
		response.sendError(403,"you dont have a permission to this site ");
	}
	
}
}
