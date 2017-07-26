package com.library;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.jasper.tagplugins.jstl.core.Out;

@SuppressWarnings("serial")
public class LibraryManagementServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		//session object creation 
		HttpSession session = request.getSession(true);
		//fetching info from the user or admin to login 
		String username = request.getParameter("user_name");
		String password = request.getParameter("user_pass");
		//checking user details 
		if(username==null||password==null)
		{
			request.getRequestDispatcher("/").forward(request, response);
		}
		//navigating to  admin page 
		else
		if (username.equals("niranjanm09@gmail.com") && password.equals("N!ranjany1")) {
			session.setAttribute("user", username);
			session.setAttribute("pass", password);
			request.getRequestDispatcher("/adminPage.jsp").forward(request, response);
		}
		///navigating to user page
		else {
			session.setAttribute("user", username);
			
			session.setAttribute("pass", password);
			if(BookStore.checkUser(username)==true){
				System.out.println(BookStore.checkUser(username));
				
			request.getRequestDispatcher("/userPage.jsp").forward(request, response);
			}else
				response.sendError(404,"person not found in this site ");
			response.getWriter().println("<a href='/login.jsp'><button type='button'>HOME</button></a>");
		}
		

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

}
