<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
<meta charset="UTF-8">
<title>Dojo Survey</title>
</head>
<body>
	<h1 class="header">Dojo Survey Index</h1>
	<div class="container">
	
		<form action="/submit" method="POST">
			<label>Your Name:</label>
			<input type="text" name="name">
			
			<br>
			<label>Dojo Location:</label>
				<select name="location">
					<option value="Arlington" selected>Arlington</option>
					<option value="Bellevye">Bellevue</option>
					<option value="Boise">Boise</option>
					<option value="Chicago">Chicago</option>
					<option value="Dallas">Dallas</option>
					<option value="Los Angeles">Los Angeles</option>
					<option value="Oakland">Oakland</option>
					<option value="Online">Online</option>
					<option value="Orange County">Orange County</option>
					<option value="San Jose">San Jose</option>
					<option value="Tulsa">Tulsa</option>
				</select>
				
			<br>
			<label>Favorite Language:</label>
				<select name="language">
					<option value="C#" selected>C#</option>
					<option value="Java">Java</option>
					<option value="MERN">MERN</option>
					<option value="Python">Python</option>
					<option value=".NET">.NET</option>
					<option value="Ruby">Ruby</option>
				</select>
			
			<br>
			<label>Comment (optional):</label>
			
			<br>
			<textarea rows="4" cols="50" name="comment"></textarea>
			
			<br>
			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>