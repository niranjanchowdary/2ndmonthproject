package com.library;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class LibraryManagementServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession(true);
		String username = request.getParameter("user_name");
		String password = request.getParameter("user_pass");
		if (username.equals("niranjanm09@gmail.com") && password.equals("N!ranjany1")) {
			session.setAttribute("user", username);
			session.setAttribute("pass", password);
			response.sendRedirect("/adminPage.jsp");
		} else {
			session.setAttribute("user", username);
			session.setAttribute("pass", password);
			request.getRequestDispatcher("/userPage.jsp").forward(request, response);
		}

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

}
