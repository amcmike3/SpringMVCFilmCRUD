<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film ID</title>

<link rel="stylesheet" href="main.css">

</head>
<body>
	<%@include file="sidebar.html" %>
	<h1>Please Enter Film ID Below:</h1>
	<form action="readFilm.do" method="GET">
		<input type="text" name="id" value=""/> <input
			type="submit" value="Submit" />
	</form>
	
	
</body>
</html>