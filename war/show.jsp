<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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

<% HashMap<String,String> obj1 = BookStore.showBooks(); 

if(obj1!=null){
for(Map.Entry<String,String> obj:obj1.entrySet())
	out.println( "book name is :"+obj.getKey() + " and details are :" +  obj.getValue()+"<br>");

}
else{%>
	 <script>
	 alert("nothing to show");
	 window.location="userPage.jsp"
	 </script>
<% }
%>
<br>

<a href="userPage.jsp"><button>home</button></a>
</body>
</html>