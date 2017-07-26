<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DeleteBook</title>
</head>
<script type="text/javascript">
function checkDelBook(){
var bookname=document.delbook.book_name.value;

var name= <%=session.getAttribute("user")%>;
if(name!=null&& name=="niranjanm09@gmail.com"){
	alert('user authentication successfully done');
	return true;
}
else {
	<%response.sendRedirect("/login.jsp");%>
	alert("sorry you can't to delete books please log in first");
	window.location="login.jsp";
	return false;
}



	if(isNaN(bookname)||bookname.length>0){
		
		return true;
	}
	else{
		alert("please check book name")
		delbook.book_name.value="";
		delbook.book_name.focus();
		return false;
	 }
	
}
</script>
<body>
<%	
HttpSession session1=request.getSession(false);
		if (session1 != null) {
			
	%>
	<script type="text/javascript">
var name=" <%=session1.getAttribute("user")%>";
var pass="<%=session1.getAttribute("pass")%>";

	</script>

	<%
		} if(session1.getAttribute("user")==null) {
			session1.removeAttribute("user");
			response.sendRedirect("/");
		}
	%>

	<form name="delbook" action="/delete" method="post" onsubmit="return checkDelBook()">
		<label>enter book name:</label>
			<input type="text" name="book_name">
			<input type="submit" value="delete">
	</form>
	
	
</body>
</html>