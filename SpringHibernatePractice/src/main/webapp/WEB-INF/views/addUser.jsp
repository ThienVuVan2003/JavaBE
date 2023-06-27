<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Add User</title>
</head>
<body>
	<h1>Add User</h1>
	<div>
		<form action="${pageContext.request.contextPath}/user/saveUser" method="post" name="user">
			<label for="name">UserName:</label> <input type="text" id="name" name="userName" required>
			<label for="password">Email:</label> <input type="password" id="password" name="password" required>
			<input type="submit" value="Save">
		</form>
	</div>
</body>
</html>
