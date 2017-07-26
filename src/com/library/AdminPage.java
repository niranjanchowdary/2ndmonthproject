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
		//fetching input from admin to do what type of an operation 
		String operation = request.getParameter("select");
		request.setAttribute("operation", operation); 
		HttpSession session = request.getSession(false);
		//add operation to store books into store
		if (operation.equals("add")) {
			request.getRequestDispatcher("/addBook.jsp").include(request, response);
			//delete operation to delete books from store 
		} else if (operation.equals("del")) {
			request.getRequestDispatcher("/deleteBook.jsp").include(request, response);
			//logout admin from the site
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
