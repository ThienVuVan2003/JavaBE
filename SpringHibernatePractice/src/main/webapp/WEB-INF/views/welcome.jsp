<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h1>
		Wellcome <span>${userName}</span>
		<p>
			<a href="${pageContext.request.contextPath}/user/list-user">list user</a>
		</p>
	</h1>
</body>
</html>