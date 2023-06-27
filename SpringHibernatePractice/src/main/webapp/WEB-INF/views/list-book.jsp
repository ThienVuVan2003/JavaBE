<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${user.userId}- ${user.userName}</h1>
	<p>----------------------------------</p>
	<a href="${pageContext.request.contextPath}/book/${user.userId}/addBook"> add book</a>
	<p>----------------------------------</p>
	<table>
		<thead>
			<tr>
				<th>bookId</th>
				<th>bookName</th>
			</tr>
		</thead>
		<c:forEach var="book" items="${books}">
			<tr>
				<td>${book.bookId}</td>
				<td>${book.bookName}</td>
			</tr>
		</c:forEach>
	</table>
	<p>----------------------------------------</p>
	<p>
		<a href="${pageContext.request.contextPath}/user/list-user"> back to list
			user</a>
	</p>
</body>
</html>