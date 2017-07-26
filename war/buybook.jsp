<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.library.*"%>
<jsp:useBean id="buyB" class="com.library.BookStore" scope="request" />
<jsp:setProperty name="buyB" property="*" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	//buying book from store 
			String book = request.getParameter("bookbuy").toString();
		
			boolean value = BookStore.buyBook(book);
		
			if (value == true) {
				//value true then book sold fromlibrary
		%>
		<script type="text/javascript">
			alert('thank you for buying book from our store');
			window.location="/userPage.jsp"
		</script>
		<%
			
			} else {
				//else book is not there or book details may be wrong
		%><script>
			alert("sorry book is not there in that library or may be library is empty ");
			window.location="userPage.jsp"
		</script>
		<%
			}
		%>
</body>
</html>