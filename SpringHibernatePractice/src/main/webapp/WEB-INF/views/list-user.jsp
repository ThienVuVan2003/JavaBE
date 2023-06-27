<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>name</th>
				<th>passsword</th>
				<th>own books</th>
			</tr>
		</thead>
		<c:forEach var="user" items="${users}">
			<c:url var="detailLink" value="detail/${user.userId}">
			</c:url>
			<tr>
				<td>${user.userId}</td>
				<td>${user.userName}</td>
				<td>${user.password}</td>
				<td><a href="${detailLink}">own books</a></td>
			</tr>
		</c:forEach>
	</table>
	<p>
		<a href="${pageContext.request.contextPath}/user/addUser">add user</a>
	</p>
</body>
</html>