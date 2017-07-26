<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyProject</title>
</head>
<link rel="stylesheet" type="text/css" href="css/style.css">

<script type="text/javascript" src="javascript/validation.js"></script>
<body onload="document.main_frame.user_name.focus();" height=500px>
	<div class="main_div_login">
		<label>new user?</label>
		<a href="/">
			<button type="button">signup</button>
		</a>
	</div>
	<center>
		<h4 style="margin-top: 170px; font-size: 35px; color: purple;">
			you want weapons?<br> we're in library! <b>BOOKS!</b> The best weapons in the world!
		</h4>
		<form name="main_frame" action="/librarymanagement" method="post" onclick="return validateDetais()" >
			<div>
				<label>userEmail</label> 
				<input type="text" name="user_name" aline="middle"><span></span>
			</div>
			<br> <br> 
			<div>
				<label>password</label> 
				<input type="password" name="user_pass" align="middle">
			</div>
			<br> <br>
			<div>
				<input type="submit" name="login" value="login">
			</div>
		</form>

	</center>
	<footer style="margin-top: 109px ;margin-left: 590px; font-size:20px ">
			&copy copyrights 2017-2018 full library
	 </footer>

</body>
</html>