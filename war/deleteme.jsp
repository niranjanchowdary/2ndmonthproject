<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.library.BookStore"%>
<jsp:useBean id="deleteB" class="com.library.BookStore" scope="request" />
<jsp:setProperty name="deleteB" property="*" />
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
	
	
	
	<% boolean value =BookStore.delBook(book);%>
		<% if (value == true){%>
		<script type="text/javascript">
    alert('deleted from library');
     </script>
		<%request.getRequestDispatcher("/adminPage.jsp").include(request, response);	
		}
		else
		{%><script>
		alert("not deleted may be book is not available");</script>
		<%request.getRequestDispatcher("/adminPage.jsp").include(request, response);}%>
		</body>
		</html>
	