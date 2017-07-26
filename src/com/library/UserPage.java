package com.library;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserPage extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		HttpSession session=request.getSession();
	String option=request.getParameter("select1");	
	System.out.println(option+"options are");
	if(option.equals("buy"))
	{
		request.getRequestDispatcher("/buy.jsp").forward(request, response);
	}
	else if(option.equals("show")){
		
		request.getRequestDispatcher("/show.jsp").forward(request, response);
	}
	else{
		session.invalidate();
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}
		
	}
}