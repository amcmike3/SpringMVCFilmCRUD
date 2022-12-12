<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actor Results</title>

<link rel="stylesheet" href="main.css">
</head>
<body>
	<c:choose>
		<c:when test="${ ! empty actor and success}">
			<ul>
				<li>${actor.id }</li>
				<li>${actor.firstName }</li>
				<li>${actor.lastName }</li>
				<li>${actor.films }</li>
			</ul>

			<form action="deleteActor.do?id=${actor.id }">
				<label> Delete Actor by id: </label> <input type="text" name="id"
					value=${actor.id } /> <input type="submit" value="Submit" />

			</form>

				<form action="updateActorPage.do?id=${actor.id }" method="post">
				<label> Edit Actor by id: </label> <input type="text" name="id"
					value=${actor.id } /> <input type="submit" value="Submit" />

			</form> 

		</c:when>
		<c:when test="${success }">
		 <h1>Actor Deleted</h1>
		 <a href="index.html">H O M E</a>
		</c:when >
		<c:otherwise>
			<h1>Actor not deleted</h1>
			<a href="index.html">H O M E</a>
		</c:otherwise>


	</c:choose>


</body>
</html>