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

	<form name="delbook" action="/deleteme.jsp" method="post" onsubmit="return checkDelBook()">
		<label>enter book name:</label>
			<input type="text" name="book_name">
			<input type="submit" value="delete">
	</form>
	
	
</body>
</html>