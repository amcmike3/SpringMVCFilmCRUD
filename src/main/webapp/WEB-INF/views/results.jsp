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
		<c:when test="${! empty film}">
			<ul>
				<li>${film.title}</li>
				<li>${film.desc}</li>
				<li>${film.releaseYear}</li>
				<li>${film.langId}</li>
				<li>${film.rentDur}</li>
				<li>${film.rate}</li>
				<li>${film.length}</li>
				<li>${film.repCost}</li>
				
				
				<form action="deleteFilm.do?id=${film.id }">
				<label> Check the box to delete film </label>
				<input type="checkbox" name="film" value=${film } />
				<input type="submit" value="Submit"/> 

				</form>

			</ul>
		</c:when>
		<c:when test="${! success }">
			<p>Film not created</p>
		</c:when>
		<c:otherwise>
			<p>No Film found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>