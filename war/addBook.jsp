<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function checkAddBook(){
var bookname=document.addbook.book_name.value;
var bookdetails=document.addbook.book_details.value;
	if(isNaN(bookname)||bookname.length>0){
		return true;
		} else {
			alert("please check book name")
			delbook.book_name.value = "";
			delbook.book_name.focus();
			return false;
		}

	}
</script>
<body>

	<form name="addbook" action="/addme.jsp" method="post" onsubmit="return checkAddBook()">
		<label>enter book name:</label>
			<input type="text" name="book_name">
			<label>enter book details:</label>
			<input type="text" name="book_details">
			<input type="submit" value="add">
	</form>

</body>
</html>