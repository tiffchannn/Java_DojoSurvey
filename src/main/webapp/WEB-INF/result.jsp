<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta charset="UTF-8">
<title>Dojo Survey Index Results</title>
</head>
<body>
	<div class="results-container">
		<h1>Submitted Info</h1>
			<div class="results-content">
				<h3>Name: </h3>
				<p><c:out value="${name}"/></p>
				
				<h3>Dojo Location:</h3>
				<p><c:out value="${location}"/></p>
				
				<h3>Favorite Language: </h3>
				<p><c:out value="${language}"/></p>
				
				<h3>Comment:</h3>
				<p><c:out value="${comment}"/></p>
			</div>
			<a class="link" href="http://localhost:8080">Go Back!</a>
	</div>
</body>
</html>