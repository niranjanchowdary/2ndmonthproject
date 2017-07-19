<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.library.BookStore"%>
<jsp:useBean id="addB" class="com.library.BookStore" scope="request" />
<jsp:setProperty name="addB" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String book = request.getParameter("book_name");
	%>
	<%
		String book_details = request.getParameter("book_details");
	%>
	<%
		request.setAttribute("bookname", book);
		request.setAttribute("details", book_details);
	%>
	
	<% boolean value =BookStore.addBook(book, book_details);%>
		<script>if (<%=value%> == true)
			alert("added");
		<%response.sendRedirect("/adminPage.jsp");%>
		else
			alert("not added");
		<%response.sendRedirect("/adminPage.jsp");%>
		
	</script>


</body>
</html>