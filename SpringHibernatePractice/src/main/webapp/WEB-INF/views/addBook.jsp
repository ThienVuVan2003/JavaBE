<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Add New Book for ${user.userName}</h1>
	<div>
		<form action="${pageContext.request.contextPath}/book/${user.userId}/saveBook" method="post" name="book">
			<label for="name">BookName:</label> <input type="text" id="name" name="bookName" required>
			<input type="submit" value="Save">
		</form>
	</div>
</body>
</html>