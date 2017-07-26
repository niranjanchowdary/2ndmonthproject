<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function userprofile(){
	//checking user profile 
	var name='<%=session.getAttribute("user")%>';
	var pass='<%=session.getAttribute("pass")%>';
document.write("<b align=center style='margin-left:500px';>user name is "+name+"<b><br><hr>");	
document.write("<a href='/userPage.jsp' style='margin-left:700px;margin-top:60px';><button type='button'>back</button></a>");
}


</script>
<body>
<% String name=request.getParameter("user");
if(session==null||name==null)
	{
	request.getRequestDispatcher("/login.jsp");
	}
	%>
<h1>signed in as<%= session.getValue("user")%></h1>
<form action="/userPage" method="post">
<select name="select1">
	<option value="buy">buy</option>
	<option value="show">show</option>
	<option value="logout">logout</option>
</select><input type="submit" value="ok">
</form>
<button type="button"onclick="return userprofile()" style="margin-left: 1200px; margin-top: -17px";>profile</button>
</body>
</html>