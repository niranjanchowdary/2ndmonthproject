<%@page import="javax.mail.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
//checking user details 
function checkUser(){
	var name="<%=session.getAttribute("user")%>";
	if(name!=null&&name=="niranjanm09@gmail.com"){
		alert('successfully user is authentication is done');
		return true;
	}
	else {
		alert("login first");
		window.location="login.jsp"
		return false;
	}
}

//user profile 

function userprofile(){
	var name='<%=session.getAttribute("user")%>';
	var pass='<%=session.getAttribute("pass")%>';
document.write("<b align=center style='margin-left:500px';>user name is "+name+" password is"+pass+"<b><br><hr>");	
document.write("<a href='/adminPage.jsp' style='margin-left:700px;margin-top:60px';><button type='button'>back</button></a>");
}
</script>
<body>
	
	<%//checking session
	HttpSession session1 = request.getSession(false);
	if (session1 != null) {
%>
	<script type="text/javascript">
var name=" <%=session1.getAttribute("user")%>";
var pass="<%=session1.getAttribute("pass")%>";
	</script>

	<%
		} //checking user name with session
		if (session1.getAttribute("user") == null) {
			session1.removeAttribute("user");
			session1.invalidate();
			response.sendRedirect("/");
		}
	%>


	<h3 align="center">welcome to admin page</h3>
	<hr>
	<form id="admin" action="/admin" method="post" style="margin-top: 32px;" onsubmit=" return checkUser()">
		<select name="select">
			<option value="add">AddBook</option>
			<option value="del">DeleteBook</option>
			<option value="logout">LogOut</option>
		</select> <input type="submit" value="ok">

	</form>
	<button type="button" onclick="return userprofile()" style="margin-left: 1200px; margin-top: -17px";>profile</button>

</body>
</html>