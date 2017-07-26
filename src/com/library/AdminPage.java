package com.library;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminPage extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String operation = request.getParameter("select");
		request.setAttribute("operation", operation); 
		HttpSession session = request.getSession(false);
		//String name =  session.getAttribute("name").toString();
		if (operation.equals("add")) {
			request.getRequestDispatcher("/addBook.jsp").include(request, response);
		} else if (operation.equals("del")) {
			request.getRequestDispatcher("/deleteBook.jsp").include(request, response);
		} else if (operation.equals("logout")) {
			session.invalidate();
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}
}
