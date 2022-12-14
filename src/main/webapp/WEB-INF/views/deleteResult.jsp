<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film Results</title>

<link rel="stylesheet" href="main.css">
</head>
<body>
<%@include file="sidebar.html" %>

	<c:choose>
		<c:when test="${! empty film and success}">
			<ul>
				<li>${film.id }</li>
				<li>${film.title}</li>
				<li>${film.desc}</li>
				<li>${film.releaseYear}</li>
				<li>${film.langId}</li>
				<li>${film.rentDur}</li>
				<li>${film.rate}</li>
				<li>${film.length}</li>
				<li>${film.repCost}</li>
				<li>${film.actors }</li>
				<li>${film.genre}</li>


				<form action="deleteFilm.do?id=${film.id }">
					<label> Delete film by id: </label> <input type="text" name="id"
						value=${film.id } /> <input type="submit" value="Submit" />

				</form>

				<form action="update.do?id=${film.id }" method="post">
					<label> Edit film by id: </label> <input type="text" name="id"
						value=${film.id } /> <input type="submit" value="Submit" />

				</form>

			</ul>
		</c:when>
		<c:when test="${success}">
			<ul>

				<p>Film deleted</p>

			</ul>
			<a href="index.html">H O M E</a>
		</c:when>

		<c:otherwise>
			<p>Film not found, updated, or deleted</p>
		</c:otherwise>
	</c:choose>

	<a href="index.html">H O M E</a>
</body>
</html>