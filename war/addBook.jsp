<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">
//valiating book data
	function checkAddBook() {
		var bookname = document.addbook.book_name.value;
		var bookdetails = document.addbook.book_details.value;
		//checking user details
			var name= "<%=session.getAttribute("user")%>";
			if(name!=null && name=="niranjanm09@gmail.com"){
				alert('user authentication is successfully done');
			}
			else {
				<%response.sendRedirect("/login.jsp");%>
				alert("sorry you can't to add books please log in first");
				window.location="login.jsp";
				return false;
			}
		
		//validating book details 
		if (isNaN(bookname) || bookname.length > 0) {
			return true;
		} else {
			alert("please check book name")
			addbook.book_name.value = "";
			addbook.book_name.focus();
			return false;
		}

	}
</script>
<body>

	<%	//checking session 
	 HttpSession session1=request.getSession(false);
		if (session1 != null) {		
	%>
	<script type="text/javascript">
var name=" <%=session1.getAttribute("user")%>";
var pass="<%=session1.getAttribute("pass")%>";

	</script>

	<%
		}else{
		}//checking user details
		if(session1.getAttribute("user")==null) {
			session1.removeAttribute("user");
			response.sendRedirect("/");
		}
	%>

	<label align="center"><h1>Adding Books to Library</h1> </label>
	<hr>
	<form name="addbook" action="/adding" display-name="admin" method="post" onsubmit="return checkAddBook()" style="margin-left: 500px">

		<label>enter book name :</label> 
		<input type="text" name="book_name"><br>
		<br>
		<br> <label>enter book details:</label>
		<input type="text" name="book_details"><br> <br>
		<br> <input type="submit" value="add" style="margin-left: 115px";>
	</form>
	<footer style="margin-top: 390px;margin-left: 590px; font-size:20px ">&copy copyrights 2017-2018 full library </footer>
</body>
</html>