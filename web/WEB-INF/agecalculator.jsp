<%-- 
    Document   : agecalculator
    Created on : 29-Jan-2023, 9:03:19 PM
    Author     : reda_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Age Calculator</title>
	</head>
	<body>
		<h1>Age Calculator</h1>
		<form action="agecalculator" method="post">
			Enter your age: <input type="text" name="newAge" value="${newAge}"><br>
			<input type="submit" value="Age Next Birthday">
		</form>
			<p>${answer}</p>
			<a href="arithmeticcalculator">Arithmetic Calculator</a>
	</body>
</html>
