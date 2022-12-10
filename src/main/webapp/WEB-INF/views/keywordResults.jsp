<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>States</title>
</head>
<body>

	<c:choose>
		<c:when test="${! empty films}">
			<c:forEach var="film" items="${films}">
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
			</c:forEach>
		</c:when>

		<c:otherwise>
			<p>Films not found, created, or updated</p>
		</c:otherwise>
	</c:choose>
</body>
</html>