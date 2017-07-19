<%@page import="javax.mail.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%	
		if (session != null) {
			
	%>
	<script type="text/javascript">
var name=" <%=session.getAttribute("user")%>";
var pass="<%=session.getAttribute("pass")%>";
	</script>

	<%
		} if(session.getAttribute("user")==null) {
			response.sendRedirect("/");
		}
	%>

	<h3>signed in as<%=session.getValue("user")%></h3>
	<form id="admin" action="/admin" method="post">
		<select name="select">
			<option value="add">AddBook</option>
			<option value="del">DeleteBook</option>
			<option value="logout">LogOut</option>
		</select> <input type="submit" value="ok">
	</form>
	<div class="profile">
	<button type="button">profile</button>
	</div>


</body>
</html>