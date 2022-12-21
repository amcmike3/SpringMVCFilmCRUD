<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film Keyword</title>

<link rel="stylesheet" href="main.css">

</head>
<body>
<%@include file="sidebar.html" %>
	<h1>Search Film by Keyword Below:</h1>
	<form action="readFilmByKeyword.do" method="GET">
		<input type="text" name="keyword" value=""/> <input
			type="submit" value="Submit" />
	</form>
	
	
</body>
</html>