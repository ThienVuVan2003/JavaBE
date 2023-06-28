<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add User</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
<style>
html {
  margin-left: auto;
  margin-right: auto;
  max-width: 800px;
  padding-left: 15px;
  padding-right: 15px;
}
</style>

</head>
<body>
	<h1>Add User</h1>
	<div class="container">
		<form action="${pageContext.request.contextPath}/user/saveUser" method="post" name="user" class="mt-4">
			<div class="mb-3">
				<label for="name" class="form-label">UserName:</label>
				<input type="text" id="name" name="userName" class="form-control" required>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password:</label>
				<input type="password" id="password" name="password" class="form-control" required>
			</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form>
	</div>

	<!-- Nạp tệp JavaScript Bootstrap -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
