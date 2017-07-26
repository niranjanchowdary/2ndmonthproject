<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.library.*"%>
<jsp:useBean id="addB" class="com.library.BookStore" scope="request" />
<jsp:setProperty name="addB" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>

function test(){
	//checking user details 
var name= "<%=session.getAttribute("user")%>
	";
		if (name == null) {

			window.location = "login.jsp"
		}
	}
</script>

<body onload="test()">




	<%
		String book = request.getParameter("book_name");
		String book_details = request.getParameter("book_details");
		boolean value = BookStore.addBook(book, book_details);
		if (value == true) {
			//value is true then book is added to library
	%>
	<script type="text/javascript">
		alert('book added to library');
	</script>
	<%
		request.getRequestDispatcher("/adminPage.jsp").include(request, response);
		} else {
			//book is not added to library
	%><script>
			alert("not added may be book is there in that library");
		</script>
	<%
		request.getRequestDispatcher("/adminPage.jsp").include(request, response);
		}
	%>




</body>
</html>